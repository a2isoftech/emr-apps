import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$PaymentPostingTaskFields {
  Fragment$PaymentPostingTaskFields({
    required this.isComplete,
    required this.paymentRecordId,
    required this.eventLogs,
    required this.status,
    required this.id,
    this.completedDate,
    this.$__typename = 'PaymentPostingTask',
  });

  factory Fragment$PaymentPostingTaskFields.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$isComplete = json['isComplete'];
    final l$paymentRecordId = json['paymentRecordId'];
    final l$eventLogs = json['eventLogs'];
    final l$status = json['status'];
    final l$id = json['id'];
    final l$completedDate = json['completedDate'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentPostingTaskFields(
      isComplete: (l$isComplete as bool),
      paymentRecordId: (l$paymentRecordId as String),
      eventLogs: (l$eventLogs as List<dynamic>)
          .map(
            (e) => Fragment$PaymentPostingTaskFields$eventLogs.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      status: fromJson$Enum$PaymentPostingTaskStatus((l$status as String)),
      id: (l$id as String),
      completedDate: l$completedDate == null
          ? null
          : DateTime.parse((l$completedDate as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final bool isComplete;

  final String paymentRecordId;

  final List<Fragment$PaymentPostingTaskFields$eventLogs> eventLogs;

  final Enum$PaymentPostingTaskStatus status;

  final String id;

  final DateTime? completedDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isComplete = isComplete;
    _resultData['isComplete'] = l$isComplete;
    final l$paymentRecordId = paymentRecordId;
    _resultData['paymentRecordId'] = l$paymentRecordId;
    final l$eventLogs = eventLogs;
    _resultData['eventLogs'] = l$eventLogs.map((e) => e.toJson()).toList();
    final l$status = status;
    _resultData['status'] = toJson$Enum$PaymentPostingTaskStatus(l$status);
    final l$id = id;
    _resultData['id'] = l$id;
    final l$completedDate = completedDate;
    _resultData['completedDate'] = l$completedDate?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isComplete = isComplete;
    final l$paymentRecordId = paymentRecordId;
    final l$eventLogs = eventLogs;
    final l$status = status;
    final l$id = id;
    final l$completedDate = completedDate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$isComplete,
      l$paymentRecordId,
      Object.hashAll(l$eventLogs.map((v) => v)),
      l$status,
      l$id,
      l$completedDate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentPostingTaskFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isComplete = isComplete;
    final lOther$isComplete = other.isComplete;
    if (l$isComplete != lOther$isComplete) {
      return false;
    }
    final l$paymentRecordId = paymentRecordId;
    final lOther$paymentRecordId = other.paymentRecordId;
    if (l$paymentRecordId != lOther$paymentRecordId) {
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
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$completedDate = completedDate;
    final lOther$completedDate = other.completedDate;
    if (l$completedDate != lOther$completedDate) {
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

extension UtilityExtension$Fragment$PaymentPostingTaskFields
    on Fragment$PaymentPostingTaskFields {
  CopyWith$Fragment$PaymentPostingTaskFields<Fragment$PaymentPostingTaskFields>
  get copyWith => CopyWith$Fragment$PaymentPostingTaskFields(this, (i) => i);
}

abstract class CopyWith$Fragment$PaymentPostingTaskFields<TRes> {
  factory CopyWith$Fragment$PaymentPostingTaskFields(
    Fragment$PaymentPostingTaskFields instance,
    TRes Function(Fragment$PaymentPostingTaskFields) then,
  ) = _CopyWithImpl$Fragment$PaymentPostingTaskFields;

  factory CopyWith$Fragment$PaymentPostingTaskFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PaymentPostingTaskFields;

  TRes call({
    bool? isComplete,
    String? paymentRecordId,
    List<Fragment$PaymentPostingTaskFields$eventLogs>? eventLogs,
    Enum$PaymentPostingTaskStatus? status,
    String? id,
    DateTime? completedDate,
    String? $__typename,
  });
  TRes eventLogs(
    Iterable<Fragment$PaymentPostingTaskFields$eventLogs> Function(
      Iterable<
        CopyWith$Fragment$PaymentPostingTaskFields$eventLogs<
          Fragment$PaymentPostingTaskFields$eventLogs
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$PaymentPostingTaskFields<TRes>
    implements CopyWith$Fragment$PaymentPostingTaskFields<TRes> {
  _CopyWithImpl$Fragment$PaymentPostingTaskFields(this._instance, this._then);

  final Fragment$PaymentPostingTaskFields _instance;

  final TRes Function(Fragment$PaymentPostingTaskFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isComplete = _undefined,
    Object? paymentRecordId = _undefined,
    Object? eventLogs = _undefined,
    Object? status = _undefined,
    Object? id = _undefined,
    Object? completedDate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentPostingTaskFields(
      isComplete: isComplete == _undefined || isComplete == null
          ? _instance.isComplete
          : (isComplete as bool),
      paymentRecordId: paymentRecordId == _undefined || paymentRecordId == null
          ? _instance.paymentRecordId
          : (paymentRecordId as String),
      eventLogs: eventLogs == _undefined || eventLogs == null
          ? _instance.eventLogs
          : (eventLogs as List<Fragment$PaymentPostingTaskFields$eventLogs>),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$PaymentPostingTaskStatus),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      completedDate: completedDate == _undefined
          ? _instance.completedDate
          : (completedDate as DateTime?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes eventLogs(
    Iterable<Fragment$PaymentPostingTaskFields$eventLogs> Function(
      Iterable<
        CopyWith$Fragment$PaymentPostingTaskFields$eventLogs<
          Fragment$PaymentPostingTaskFields$eventLogs
        >
      >,
    )
    _fn,
  ) => call(
    eventLogs: _fn(
      _instance.eventLogs.map(
        (e) =>
            CopyWith$Fragment$PaymentPostingTaskFields$eventLogs(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$PaymentPostingTaskFields<TRes>
    implements CopyWith$Fragment$PaymentPostingTaskFields<TRes> {
  _CopyWithStubImpl$Fragment$PaymentPostingTaskFields(this._res);

  TRes _res;

  call({
    bool? isComplete,
    String? paymentRecordId,
    List<Fragment$PaymentPostingTaskFields$eventLogs>? eventLogs,
    Enum$PaymentPostingTaskStatus? status,
    String? id,
    DateTime? completedDate,
    String? $__typename,
  }) => _res;

  eventLogs(_fn) => _res;
}

const fragmentDefinitionPaymentPostingTaskFields = FragmentDefinitionNode(
  name: NameNode(value: 'PaymentPostingTaskFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'PaymentPostingTask'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'isComplete'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'paymentRecordId'),
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
        name: NameNode(value: 'status'),
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
        name: NameNode(value: 'completedDate'),
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
);
const documentNodeFragmentPaymentPostingTaskFields = DocumentNode(
  definitions: [fragmentDefinitionPaymentPostingTaskFields],
);

class Fragment$PaymentPostingTaskFields$eventLogs {
  Fragment$PaymentPostingTaskFields$eventLogs({
    required this.type,
    required this.dateTime,
    required this.message,
    this.details,
    this.$__typename = 'EventLog',
  });

  factory Fragment$PaymentPostingTaskFields$eventLogs.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$type = json['type'];
    final l$dateTime = json['dateTime'];
    final l$message = json['message'];
    final l$details = json['details'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentPostingTaskFields$eventLogs(
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
    if (other is! Fragment$PaymentPostingTaskFields$eventLogs ||
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

extension UtilityExtension$Fragment$PaymentPostingTaskFields$eventLogs
    on Fragment$PaymentPostingTaskFields$eventLogs {
  CopyWith$Fragment$PaymentPostingTaskFields$eventLogs<
    Fragment$PaymentPostingTaskFields$eventLogs
  >
  get copyWith =>
      CopyWith$Fragment$PaymentPostingTaskFields$eventLogs(this, (i) => i);
}

abstract class CopyWith$Fragment$PaymentPostingTaskFields$eventLogs<TRes> {
  factory CopyWith$Fragment$PaymentPostingTaskFields$eventLogs(
    Fragment$PaymentPostingTaskFields$eventLogs instance,
    TRes Function(Fragment$PaymentPostingTaskFields$eventLogs) then,
  ) = _CopyWithImpl$Fragment$PaymentPostingTaskFields$eventLogs;

  factory CopyWith$Fragment$PaymentPostingTaskFields$eventLogs.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PaymentPostingTaskFields$eventLogs;

  TRes call({
    Enum$EventLogType? type,
    DateTime? dateTime,
    String? message,
    Map<String, dynamic>? details,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentPostingTaskFields$eventLogs<TRes>
    implements CopyWith$Fragment$PaymentPostingTaskFields$eventLogs<TRes> {
  _CopyWithImpl$Fragment$PaymentPostingTaskFields$eventLogs(
    this._instance,
    this._then,
  );

  final Fragment$PaymentPostingTaskFields$eventLogs _instance;

  final TRes Function(Fragment$PaymentPostingTaskFields$eventLogs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? dateTime = _undefined,
    Object? message = _undefined,
    Object? details = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PaymentPostingTaskFields$eventLogs(
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

class _CopyWithStubImpl$Fragment$PaymentPostingTaskFields$eventLogs<TRes>
    implements CopyWith$Fragment$PaymentPostingTaskFields$eventLogs<TRes> {
  _CopyWithStubImpl$Fragment$PaymentPostingTaskFields$eventLogs(this._res);

  TRes _res;

  call({
    Enum$EventLogType? type,
    DateTime? dateTime,
    String? message,
    Map<String, dynamic>? details,
    String? $__typename,
  }) => _res;
}
