import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$SyncWeighbridgeTicketTaskFields {
  Fragment$SyncWeighbridgeTicketTaskFields({
    this.completedDate,
    required this.id,
    required this.ticketId,
    required this.weighbridgeId,
    required this.machineName,
    required this.ticketCompletedBy,
    required this.ticketCompletedDate,
    required this.isComplete,
    required this.inTrade,
    required this.status,
    required this.eventLogs,
    this.$__typename = 'SyncWeighbridgeTicketTask',
  });

  factory Fragment$SyncWeighbridgeTicketTaskFields.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$completedDate = json['completedDate'];
    final l$id = json['id'];
    final l$ticketId = json['ticketId'];
    final l$weighbridgeId = json['weighbridgeId'];
    final l$machineName = json['machineName'];
    final l$ticketCompletedBy = json['ticketCompletedBy'];
    final l$ticketCompletedDate = json['ticketCompletedDate'];
    final l$isComplete = json['isComplete'];
    final l$inTrade = json['inTrade'];
    final l$status = json['status'];
    final l$eventLogs = json['eventLogs'];
    final l$$__typename = json['__typename'];
    return Fragment$SyncWeighbridgeTicketTaskFields(
      completedDate: l$completedDate == null
          ? null
          : DateTime.parse((l$completedDate as String)),
      id: (l$id as String),
      ticketId: (l$ticketId as String),
      weighbridgeId: (l$weighbridgeId as String),
      machineName: (l$machineName as String),
      ticketCompletedBy: (l$ticketCompletedBy as String),
      ticketCompletedDate: DateTime.parse((l$ticketCompletedDate as String)),
      isComplete: (l$isComplete as bool),
      inTrade: (l$inTrade as bool),
      status: fromJson$Enum$SyncWeighbridgeTicketTaskStatus(
        (l$status as String),
      ),
      eventLogs: (l$eventLogs as List<dynamic>)
          .map(
            (e) => Fragment$SyncWeighbridgeTicketTaskFields$eventLogs.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? completedDate;

  final String id;

  final String ticketId;

  final String weighbridgeId;

  final String machineName;

  final String ticketCompletedBy;

  final DateTime ticketCompletedDate;

  final bool isComplete;

  final bool inTrade;

  final Enum$SyncWeighbridgeTicketTaskStatus status;

  final List<Fragment$SyncWeighbridgeTicketTaskFields$eventLogs> eventLogs;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$completedDate = completedDate;
    _resultData['completedDate'] = l$completedDate?.toIso8601String();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$ticketId = ticketId;
    _resultData['ticketId'] = l$ticketId;
    final l$weighbridgeId = weighbridgeId;
    _resultData['weighbridgeId'] = l$weighbridgeId;
    final l$machineName = machineName;
    _resultData['machineName'] = l$machineName;
    final l$ticketCompletedBy = ticketCompletedBy;
    _resultData['ticketCompletedBy'] = l$ticketCompletedBy;
    final l$ticketCompletedDate = ticketCompletedDate;
    _resultData['ticketCompletedDate'] = l$ticketCompletedDate
        .toIso8601String();
    final l$isComplete = isComplete;
    _resultData['isComplete'] = l$isComplete;
    final l$inTrade = inTrade;
    _resultData['inTrade'] = l$inTrade;
    final l$status = status;
    _resultData['status'] = toJson$Enum$SyncWeighbridgeTicketTaskStatus(
      l$status,
    );
    final l$eventLogs = eventLogs;
    _resultData['eventLogs'] = l$eventLogs.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$completedDate = completedDate;
    final l$id = id;
    final l$ticketId = ticketId;
    final l$weighbridgeId = weighbridgeId;
    final l$machineName = machineName;
    final l$ticketCompletedBy = ticketCompletedBy;
    final l$ticketCompletedDate = ticketCompletedDate;
    final l$isComplete = isComplete;
    final l$inTrade = inTrade;
    final l$status = status;
    final l$eventLogs = eventLogs;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$completedDate,
      l$id,
      l$ticketId,
      l$weighbridgeId,
      l$machineName,
      l$ticketCompletedBy,
      l$ticketCompletedDate,
      l$isComplete,
      l$inTrade,
      l$status,
      Object.hashAll(l$eventLogs.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$SyncWeighbridgeTicketTaskFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$completedDate = completedDate;
    final lOther$completedDate = other.completedDate;
    if (l$completedDate != lOther$completedDate) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$ticketId = ticketId;
    final lOther$ticketId = other.ticketId;
    if (l$ticketId != lOther$ticketId) {
      return false;
    }
    final l$weighbridgeId = weighbridgeId;
    final lOther$weighbridgeId = other.weighbridgeId;
    if (l$weighbridgeId != lOther$weighbridgeId) {
      return false;
    }
    final l$machineName = machineName;
    final lOther$machineName = other.machineName;
    if (l$machineName != lOther$machineName) {
      return false;
    }
    final l$ticketCompletedBy = ticketCompletedBy;
    final lOther$ticketCompletedBy = other.ticketCompletedBy;
    if (l$ticketCompletedBy != lOther$ticketCompletedBy) {
      return false;
    }
    final l$ticketCompletedDate = ticketCompletedDate;
    final lOther$ticketCompletedDate = other.ticketCompletedDate;
    if (l$ticketCompletedDate != lOther$ticketCompletedDate) {
      return false;
    }
    final l$isComplete = isComplete;
    final lOther$isComplete = other.isComplete;
    if (l$isComplete != lOther$isComplete) {
      return false;
    }
    final l$inTrade = inTrade;
    final lOther$inTrade = other.inTrade;
    if (l$inTrade != lOther$inTrade) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$eventLogs = eventLogs;
    final lOther$eventLogs = other.eventLogs;
    if (l$eventLogs.length != lOther$eventLogs.length) {
      return false;
    }
    for (int i = 0; i < l$eventLogs.length; i++) {
      final l$eventLogs$entry = l$eventLogs[i];
      final lOther$eventLogs$entry = lOther$eventLogs[i];
      if (l$eventLogs$entry != lOther$eventLogs$entry) {
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

extension UtilityExtension$Fragment$SyncWeighbridgeTicketTaskFields
    on Fragment$SyncWeighbridgeTicketTaskFields {
  CopyWith$Fragment$SyncWeighbridgeTicketTaskFields<
    Fragment$SyncWeighbridgeTicketTaskFields
  >
  get copyWith =>
      CopyWith$Fragment$SyncWeighbridgeTicketTaskFields(this, (i) => i);
}

abstract class CopyWith$Fragment$SyncWeighbridgeTicketTaskFields<TRes> {
  factory CopyWith$Fragment$SyncWeighbridgeTicketTaskFields(
    Fragment$SyncWeighbridgeTicketTaskFields instance,
    TRes Function(Fragment$SyncWeighbridgeTicketTaskFields) then,
  ) = _CopyWithImpl$Fragment$SyncWeighbridgeTicketTaskFields;

  factory CopyWith$Fragment$SyncWeighbridgeTicketTaskFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SyncWeighbridgeTicketTaskFields;

  TRes call({
    DateTime? completedDate,
    String? id,
    String? ticketId,
    String? weighbridgeId,
    String? machineName,
    String? ticketCompletedBy,
    DateTime? ticketCompletedDate,
    bool? isComplete,
    bool? inTrade,
    Enum$SyncWeighbridgeTicketTaskStatus? status,
    List<Fragment$SyncWeighbridgeTicketTaskFields$eventLogs>? eventLogs,
    String? $__typename,
  });
  TRes eventLogs(
    Iterable<Fragment$SyncWeighbridgeTicketTaskFields$eventLogs> Function(
      Iterable<
        CopyWith$Fragment$SyncWeighbridgeTicketTaskFields$eventLogs<
          Fragment$SyncWeighbridgeTicketTaskFields$eventLogs
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$SyncWeighbridgeTicketTaskFields<TRes>
    implements CopyWith$Fragment$SyncWeighbridgeTicketTaskFields<TRes> {
  _CopyWithImpl$Fragment$SyncWeighbridgeTicketTaskFields(
    this._instance,
    this._then,
  );

  final Fragment$SyncWeighbridgeTicketTaskFields _instance;

  final TRes Function(Fragment$SyncWeighbridgeTicketTaskFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? completedDate = _undefined,
    Object? id = _undefined,
    Object? ticketId = _undefined,
    Object? weighbridgeId = _undefined,
    Object? machineName = _undefined,
    Object? ticketCompletedBy = _undefined,
    Object? ticketCompletedDate = _undefined,
    Object? isComplete = _undefined,
    Object? inTrade = _undefined,
    Object? status = _undefined,
    Object? eventLogs = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$SyncWeighbridgeTicketTaskFields(
      completedDate: completedDate == _undefined
          ? _instance.completedDate
          : (completedDate as DateTime?),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      ticketId: ticketId == _undefined || ticketId == null
          ? _instance.ticketId
          : (ticketId as String),
      weighbridgeId: weighbridgeId == _undefined || weighbridgeId == null
          ? _instance.weighbridgeId
          : (weighbridgeId as String),
      machineName: machineName == _undefined || machineName == null
          ? _instance.machineName
          : (machineName as String),
      ticketCompletedBy:
          ticketCompletedBy == _undefined || ticketCompletedBy == null
          ? _instance.ticketCompletedBy
          : (ticketCompletedBy as String),
      ticketCompletedDate:
          ticketCompletedDate == _undefined || ticketCompletedDate == null
          ? _instance.ticketCompletedDate
          : (ticketCompletedDate as DateTime),
      isComplete: isComplete == _undefined || isComplete == null
          ? _instance.isComplete
          : (isComplete as bool),
      inTrade: inTrade == _undefined || inTrade == null
          ? _instance.inTrade
          : (inTrade as bool),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$SyncWeighbridgeTicketTaskStatus),
      eventLogs: eventLogs == _undefined || eventLogs == null
          ? _instance.eventLogs
          : (eventLogs
                as List<Fragment$SyncWeighbridgeTicketTaskFields$eventLogs>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes eventLogs(
    Iterable<Fragment$SyncWeighbridgeTicketTaskFields$eventLogs> Function(
      Iterable<
        CopyWith$Fragment$SyncWeighbridgeTicketTaskFields$eventLogs<
          Fragment$SyncWeighbridgeTicketTaskFields$eventLogs
        >
      >,
    )
    _fn,
  ) => call(
    eventLogs: _fn(
      _instance.eventLogs.map(
        (e) => CopyWith$Fragment$SyncWeighbridgeTicketTaskFields$eventLogs(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$SyncWeighbridgeTicketTaskFields<TRes>
    implements CopyWith$Fragment$SyncWeighbridgeTicketTaskFields<TRes> {
  _CopyWithStubImpl$Fragment$SyncWeighbridgeTicketTaskFields(this._res);

  TRes _res;

  call({
    DateTime? completedDate,
    String? id,
    String? ticketId,
    String? weighbridgeId,
    String? machineName,
    String? ticketCompletedBy,
    DateTime? ticketCompletedDate,
    bool? isComplete,
    bool? inTrade,
    Enum$SyncWeighbridgeTicketTaskStatus? status,
    List<Fragment$SyncWeighbridgeTicketTaskFields$eventLogs>? eventLogs,
    String? $__typename,
  }) => _res;

  eventLogs(_fn) => _res;
}

const fragmentDefinitionSyncWeighbridgeTicketTaskFields =
    FragmentDefinitionNode(
      name: NameNode(value: 'SyncWeighbridgeTicketTaskFields'),
      typeCondition: TypeConditionNode(
        on: NamedTypeNode(
          name: NameNode(value: 'SyncWeighbridgeTicketTask'),
          isNonNull: false,
        ),
      ),
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'completedDate'),
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
            name: NameNode(value: 'ticketId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'weighbridgeId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'machineName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'ticketCompletedBy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'ticketCompletedDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isComplete'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'inTrade'),
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
            name: NameNode(value: 'eventLogs'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'type'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'dateTime'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'message'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'details'),
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
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    );
const documentNodeFragmentSyncWeighbridgeTicketTaskFields = DocumentNode(
  definitions: [fragmentDefinitionSyncWeighbridgeTicketTaskFields],
);

class Fragment$SyncWeighbridgeTicketTaskFields$eventLogs {
  Fragment$SyncWeighbridgeTicketTaskFields$eventLogs({
    required this.type,
    required this.dateTime,
    required this.message,
    this.details,
    this.$__typename = 'EventLog',
  });

  factory Fragment$SyncWeighbridgeTicketTaskFields$eventLogs.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$type = json['type'];
    final l$dateTime = json['dateTime'];
    final l$message = json['message'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Fragment$SyncWeighbridgeTicketTaskFields$eventLogs(
      type: fromJson$Enum$EventLogType((l$type as String)),
      dateTime: DateTime.parse((l$dateTime as String)),
      message: (l$message as String),
      details: (l$details as Map<String, dynamic>?),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$EventLogType type;

  final DateTime dateTime;

  final String message;

  final Map<String, dynamic>? details;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = toJson$Enum$EventLogType(l$type);
    final l$dateTime = dateTime;
    _resultData['dateTime'] = l$dateTime.toIso8601String();
    final l$message = message;
    _resultData['message'] = l$message;
    final l$details = details;
    _resultData['details'] = l$details;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$dateTime = dateTime;
    final l$message = message;
    final l$details = details;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$dateTime,
      l$message,
      l$details,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$SyncWeighbridgeTicketTaskFields$eventLogs ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$dateTime = dateTime;
    final lOther$dateTime = other.dateTime;
    if (l$dateTime != lOther$dateTime) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (l$details != lOther$details) {
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

extension UtilityExtension$Fragment$SyncWeighbridgeTicketTaskFields$eventLogs
    on Fragment$SyncWeighbridgeTicketTaskFields$eventLogs {
  CopyWith$Fragment$SyncWeighbridgeTicketTaskFields$eventLogs<
    Fragment$SyncWeighbridgeTicketTaskFields$eventLogs
  >
  get copyWith => CopyWith$Fragment$SyncWeighbridgeTicketTaskFields$eventLogs(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$SyncWeighbridgeTicketTaskFields$eventLogs<
  TRes
> {
  factory CopyWith$Fragment$SyncWeighbridgeTicketTaskFields$eventLogs(
    Fragment$SyncWeighbridgeTicketTaskFields$eventLogs instance,
    TRes Function(Fragment$SyncWeighbridgeTicketTaskFields$eventLogs) then,
  ) = _CopyWithImpl$Fragment$SyncWeighbridgeTicketTaskFields$eventLogs;

  factory CopyWith$Fragment$SyncWeighbridgeTicketTaskFields$eventLogs.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$SyncWeighbridgeTicketTaskFields$eventLogs;

  TRes call({
    Enum$EventLogType? type,
    DateTime? dateTime,
    String? message,
    Map<String, dynamic>? details,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SyncWeighbridgeTicketTaskFields$eventLogs<TRes>
    implements
        CopyWith$Fragment$SyncWeighbridgeTicketTaskFields$eventLogs<TRes> {
  _CopyWithImpl$Fragment$SyncWeighbridgeTicketTaskFields$eventLogs(
    this._instance,
    this._then,
  );

  final Fragment$SyncWeighbridgeTicketTaskFields$eventLogs _instance;

  final TRes Function(Fragment$SyncWeighbridgeTicketTaskFields$eventLogs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? dateTime = _undefined,
    Object? message = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$SyncWeighbridgeTicketTaskFields$eventLogs(
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$EventLogType),
      dateTime: dateTime == _undefined || dateTime == null
          ? _instance.dateTime
          : (dateTime as DateTime),
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      details: details == _undefined
          ? _instance.details
          : (details as Map<String, dynamic>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$SyncWeighbridgeTicketTaskFields$eventLogs<TRes>
    implements
        CopyWith$Fragment$SyncWeighbridgeTicketTaskFields$eventLogs<TRes> {
  _CopyWithStubImpl$Fragment$SyncWeighbridgeTicketTaskFields$eventLogs(
    this._res,
  );

  TRes _res;

  call({
    Enum$EventLogType? type,
    DateTime? dateTime,
    String? message,
    Map<String, dynamic>? details,
    String? $__typename,
  }) => _res;
}
