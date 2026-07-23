import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetSchedules {
  factory Variables$Query$GetSchedules(
          {required Input$ScheduleFilterInput filter}) =>
      Variables$Query$GetSchedules._({
        r'filter': filter,
      });

  Variables$Query$GetSchedules._(this._$data);

  factory Variables$Query$GetSchedules.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$filter = data['filter'];
    result$data['filter'] =
        Input$ScheduleFilterInput.fromJson((l$filter as Map<String, dynamic>));
    return Variables$Query$GetSchedules._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ScheduleFilterInput get filter =>
      (_$data['filter'] as Input$ScheduleFilterInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$filter = filter;
    result$data['filter'] = l$filter.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$GetSchedules<Variables$Query$GetSchedules>
      get copyWith => CopyWith$Variables$Query$GetSchedules(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetSchedules) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    return Object.hashAll([l$filter]);
  }
}

abstract class CopyWith$Variables$Query$GetSchedules<TRes> {
  factory CopyWith$Variables$Query$GetSchedules(
    Variables$Query$GetSchedules instance,
    TRes Function(Variables$Query$GetSchedules) then,
  ) = _CopyWithImpl$Variables$Query$GetSchedules;

  factory CopyWith$Variables$Query$GetSchedules.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetSchedules;

  TRes call({Input$ScheduleFilterInput? filter});
}

class _CopyWithImpl$Variables$Query$GetSchedules<TRes>
    implements CopyWith$Variables$Query$GetSchedules<TRes> {
  _CopyWithImpl$Variables$Query$GetSchedules(
    this._instance,
    this._then,
  );

  final Variables$Query$GetSchedules _instance;

  final TRes Function(Variables$Query$GetSchedules) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined}) =>
      _then(Variables$Query$GetSchedules._({
        ..._instance._$data,
        if (filter != _undefined && filter != null)
          'filter': (filter as Input$ScheduleFilterInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetSchedules<TRes>
    implements CopyWith$Variables$Query$GetSchedules<TRes> {
  _CopyWithStubImpl$Variables$Query$GetSchedules(this._res);

  TRes _res;

  call({Input$ScheduleFilterInput? filter}) => _res;
}

class Query$GetSchedules {
  Query$GetSchedules({
    required this.schedules,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetSchedules.fromJson(Map<String, dynamic> json) {
    final l$schedules = json['schedules'];
    final l$$__typename = json['__typename'];
    return Query$GetSchedules(
      schedules: (l$schedules as List<dynamic>)
          .map((e) => Query$GetSchedules$schedules.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetSchedules$schedules> schedules;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$schedules = schedules;
    _resultData['schedules'] = l$schedules.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$schedules = schedules;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$schedules.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSchedules) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$schedules = schedules;
    final lOther$schedules = other.schedules;
    if (l$schedules.length != lOther$schedules.length) {
      return false;
    }
    for (int i = 0; i < l$schedules.length; i++) {
      final l$schedules$entry = l$schedules[i];
      final lOther$schedules$entry = lOther$schedules[i];
      if (l$schedules$entry != lOther$schedules$entry) {
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

extension UtilityExtension$Query$GetSchedules on Query$GetSchedules {
  CopyWith$Query$GetSchedules<Query$GetSchedules> get copyWith =>
      CopyWith$Query$GetSchedules(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSchedules<TRes> {
  factory CopyWith$Query$GetSchedules(
    Query$GetSchedules instance,
    TRes Function(Query$GetSchedules) then,
  ) = _CopyWithImpl$Query$GetSchedules;

  factory CopyWith$Query$GetSchedules.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSchedules;

  TRes call({
    List<Query$GetSchedules$schedules>? schedules,
    String? $__typename,
  });
  TRes schedules(
      Iterable<Query$GetSchedules$schedules> Function(
              Iterable<
                  CopyWith$Query$GetSchedules$schedules<
                      Query$GetSchedules$schedules>>)
          _fn);
}

class _CopyWithImpl$Query$GetSchedules<TRes>
    implements CopyWith$Query$GetSchedules<TRes> {
  _CopyWithImpl$Query$GetSchedules(
    this._instance,
    this._then,
  );

  final Query$GetSchedules _instance;

  final TRes Function(Query$GetSchedules) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? schedules = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSchedules(
        schedules: schedules == _undefined || schedules == null
            ? _instance.schedules
            : (schedules as List<Query$GetSchedules$schedules>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes schedules(
          Iterable<Query$GetSchedules$schedules> Function(
                  Iterable<
                      CopyWith$Query$GetSchedules$schedules<
                          Query$GetSchedules$schedules>>)
              _fn) =>
      call(
          schedules: _fn(_instance.schedules
              .map((e) => CopyWith$Query$GetSchedules$schedules(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetSchedules<TRes>
    implements CopyWith$Query$GetSchedules<TRes> {
  _CopyWithStubImpl$Query$GetSchedules(this._res);

  TRes _res;

  call({
    List<Query$GetSchedules$schedules>? schedules,
    String? $__typename,
  }) =>
      _res;

  schedules(_fn) => _res;
}

const documentNodeQueryGetSchedules = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetSchedules'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'ScheduleFilterInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'schedules'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'uuid'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isDigitalSignatureRequired'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'repeatInterval'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'repeatFrequency'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isActive'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'nextSchedulerDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdBy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'endDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'assignedTo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'assignedToTeam'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'yardCodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'depotNos'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'numberOfTasks'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'workingDays'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'template'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'document'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isDigitalSignatureRequired'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'referenceId'),
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
                name: NameNode(value: 'templateId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'version'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'description'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'validateBySignature'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'validateByWorkOrder'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'validateFrom'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isEmailNotificationRequired'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'sendEmailOnFailedQuestions'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'emailIds'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'assignFailedQuestionToTeam'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'assignFailedQuestionToTeamId'),
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

class Query$GetSchedules$schedules {
  Query$GetSchedules$schedules({
    required this.uuid,
    required this.isDigitalSignatureRequired,
    required this.repeatInterval,
    required this.repeatFrequency,
    required this.description,
    required this.isActive,
    required this.nextSchedulerDate,
    required this.createdBy,
    required this.createdDate,
    this.endDate,
    this.assignedTo,
    this.assignedToTeam,
    required this.yardCodes,
    required this.depotNos,
    required this.numberOfTasks,
    required this.workingDays,
    required this.template,
    this.$__typename = 'ScheduleRecord',
  });

  factory Query$GetSchedules$schedules.fromJson(Map<String, dynamic> json) {
    final l$uuid = json['uuid'];
    final l$isDigitalSignatureRequired = json['isDigitalSignatureRequired'];
    final l$repeatInterval = json['repeatInterval'];
    final l$repeatFrequency = json['repeatFrequency'];
    final l$description = json['description'];
    final l$isActive = json['isActive'];
    final l$nextSchedulerDate = json['nextSchedulerDate'];
    final l$createdBy = json['createdBy'];
    final l$createdDate = json['createdDate'];
    final l$endDate = json['endDate'];
    final l$assignedTo = json['assignedTo'];
    final l$assignedToTeam = json['assignedToTeam'];
    final l$yardCodes = json['yardCodes'];
    final l$depotNos = json['depotNos'];
    final l$numberOfTasks = json['numberOfTasks'];
    final l$workingDays = json['workingDays'];
    final l$template = json['template'];
    final l$$__typename = json['__typename'];
    return Query$GetSchedules$schedules(
      uuid: (l$uuid as String),
      isDigitalSignatureRequired: (l$isDigitalSignatureRequired as bool),
      repeatInterval: (l$repeatInterval as int),
      repeatFrequency: (l$repeatFrequency as int),
      description: (l$description as String),
      isActive: (l$isActive as bool),
      nextSchedulerDate: (l$nextSchedulerDate as String),
      createdBy: (l$createdBy as String),
      createdDate: (l$createdDate as String),
      endDate: (l$endDate as String?),
      assignedTo: (l$assignedTo as String?),
      assignedToTeam: (l$assignedToTeam as String?),
      yardCodes:
          (l$yardCodes as List<dynamic>).map((e) => (e as String)).toList(),
      depotNos:
          (l$depotNos as List<dynamic>).map((e) => (e as String)).toList(),
      numberOfTasks: (l$numberOfTasks as int),
      workingDays: (l$workingDays as int),
      template: Query$GetSchedules$schedules$template.fromJson(
          (l$template as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String uuid;

  final bool isDigitalSignatureRequired;

  final int repeatInterval;

  final int repeatFrequency;

  final String description;

  final bool isActive;

  final String nextSchedulerDate;

  final String createdBy;

  final String createdDate;

  final String? endDate;

  final String? assignedTo;

  final String? assignedToTeam;

  final List<String> yardCodes;

  final List<String> depotNos;

  final int numberOfTasks;

  final int workingDays;

  final Query$GetSchedules$schedules$template template;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uuid = uuid;
    _resultData['uuid'] = l$uuid;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    _resultData['isDigitalSignatureRequired'] = l$isDigitalSignatureRequired;
    final l$repeatInterval = repeatInterval;
    _resultData['repeatInterval'] = l$repeatInterval;
    final l$repeatFrequency = repeatFrequency;
    _resultData['repeatFrequency'] = l$repeatFrequency;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$nextSchedulerDate = nextSchedulerDate;
    _resultData['nextSchedulerDate'] = l$nextSchedulerDate;
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$createdDate = createdDate;
    _resultData['createdDate'] = l$createdDate;
    final l$endDate = endDate;
    _resultData['endDate'] = l$endDate;
    final l$assignedTo = assignedTo;
    _resultData['assignedTo'] = l$assignedTo;
    final l$assignedToTeam = assignedToTeam;
    _resultData['assignedToTeam'] = l$assignedToTeam;
    final l$yardCodes = yardCodes;
    _resultData['yardCodes'] = l$yardCodes.map((e) => e).toList();
    final l$depotNos = depotNos;
    _resultData['depotNos'] = l$depotNos.map((e) => e).toList();
    final l$numberOfTasks = numberOfTasks;
    _resultData['numberOfTasks'] = l$numberOfTasks;
    final l$workingDays = workingDays;
    _resultData['workingDays'] = l$workingDays;
    final l$template = template;
    _resultData['template'] = l$template.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uuid = uuid;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final l$repeatInterval = repeatInterval;
    final l$repeatFrequency = repeatFrequency;
    final l$description = description;
    final l$isActive = isActive;
    final l$nextSchedulerDate = nextSchedulerDate;
    final l$createdBy = createdBy;
    final l$createdDate = createdDate;
    final l$endDate = endDate;
    final l$assignedTo = assignedTo;
    final l$assignedToTeam = assignedToTeam;
    final l$yardCodes = yardCodes;
    final l$depotNos = depotNos;
    final l$numberOfTasks = numberOfTasks;
    final l$workingDays = workingDays;
    final l$template = template;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uuid,
      l$isDigitalSignatureRequired,
      l$repeatInterval,
      l$repeatFrequency,
      l$description,
      l$isActive,
      l$nextSchedulerDate,
      l$createdBy,
      l$createdDate,
      l$endDate,
      l$assignedTo,
      l$assignedToTeam,
      Object.hashAll(l$yardCodes.map((v) => v)),
      Object.hashAll(l$depotNos.map((v) => v)),
      l$numberOfTasks,
      l$workingDays,
      l$template,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSchedules$schedules) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uuid = uuid;
    final lOther$uuid = other.uuid;
    if (l$uuid != lOther$uuid) {
      return false;
    }
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final lOther$isDigitalSignatureRequired = other.isDigitalSignatureRequired;
    if (l$isDigitalSignatureRequired != lOther$isDigitalSignatureRequired) {
      return false;
    }
    final l$repeatInterval = repeatInterval;
    final lOther$repeatInterval = other.repeatInterval;
    if (l$repeatInterval != lOther$repeatInterval) {
      return false;
    }
    final l$repeatFrequency = repeatFrequency;
    final lOther$repeatFrequency = other.repeatFrequency;
    if (l$repeatFrequency != lOther$repeatFrequency) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$nextSchedulerDate = nextSchedulerDate;
    final lOther$nextSchedulerDate = other.nextSchedulerDate;
    if (l$nextSchedulerDate != lOther$nextSchedulerDate) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (l$createdDate != lOther$createdDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
      return false;
    }
    final l$assignedTo = assignedTo;
    final lOther$assignedTo = other.assignedTo;
    if (l$assignedTo != lOther$assignedTo) {
      return false;
    }
    final l$assignedToTeam = assignedToTeam;
    final lOther$assignedToTeam = other.assignedToTeam;
    if (l$assignedToTeam != lOther$assignedToTeam) {
      return false;
    }
    final l$yardCodes = yardCodes;
    final lOther$yardCodes = other.yardCodes;
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
    final l$depotNos = depotNos;
    final lOther$depotNos = other.depotNos;
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
    final l$numberOfTasks = numberOfTasks;
    final lOther$numberOfTasks = other.numberOfTasks;
    if (l$numberOfTasks != lOther$numberOfTasks) {
      return false;
    }
    final l$workingDays = workingDays;
    final lOther$workingDays = other.workingDays;
    if (l$workingDays != lOther$workingDays) {
      return false;
    }
    final l$template = template;
    final lOther$template = other.template;
    if (l$template != lOther$template) {
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

extension UtilityExtension$Query$GetSchedules$schedules
    on Query$GetSchedules$schedules {
  CopyWith$Query$GetSchedules$schedules<Query$GetSchedules$schedules>
      get copyWith => CopyWith$Query$GetSchedules$schedules(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSchedules$schedules<TRes> {
  factory CopyWith$Query$GetSchedules$schedules(
    Query$GetSchedules$schedules instance,
    TRes Function(Query$GetSchedules$schedules) then,
  ) = _CopyWithImpl$Query$GetSchedules$schedules;

  factory CopyWith$Query$GetSchedules$schedules.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSchedules$schedules;

  TRes call({
    String? uuid,
    bool? isDigitalSignatureRequired,
    int? repeatInterval,
    int? repeatFrequency,
    String? description,
    bool? isActive,
    String? nextSchedulerDate,
    String? createdBy,
    String? createdDate,
    String? endDate,
    String? assignedTo,
    String? assignedToTeam,
    List<String>? yardCodes,
    List<String>? depotNos,
    int? numberOfTasks,
    int? workingDays,
    Query$GetSchedules$schedules$template? template,
    String? $__typename,
  });
  CopyWith$Query$GetSchedules$schedules$template<TRes> get template;
}

class _CopyWithImpl$Query$GetSchedules$schedules<TRes>
    implements CopyWith$Query$GetSchedules$schedules<TRes> {
  _CopyWithImpl$Query$GetSchedules$schedules(
    this._instance,
    this._then,
  );

  final Query$GetSchedules$schedules _instance;

  final TRes Function(Query$GetSchedules$schedules) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uuid = _undefined,
    Object? isDigitalSignatureRequired = _undefined,
    Object? repeatInterval = _undefined,
    Object? repeatFrequency = _undefined,
    Object? description = _undefined,
    Object? isActive = _undefined,
    Object? nextSchedulerDate = _undefined,
    Object? createdBy = _undefined,
    Object? createdDate = _undefined,
    Object? endDate = _undefined,
    Object? assignedTo = _undefined,
    Object? assignedToTeam = _undefined,
    Object? yardCodes = _undefined,
    Object? depotNos = _undefined,
    Object? numberOfTasks = _undefined,
    Object? workingDays = _undefined,
    Object? template = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSchedules$schedules(
        uuid: uuid == _undefined || uuid == null
            ? _instance.uuid
            : (uuid as String),
        isDigitalSignatureRequired: isDigitalSignatureRequired == _undefined ||
                isDigitalSignatureRequired == null
            ? _instance.isDigitalSignatureRequired
            : (isDigitalSignatureRequired as bool),
        repeatInterval: repeatInterval == _undefined || repeatInterval == null
            ? _instance.repeatInterval
            : (repeatInterval as int),
        repeatFrequency:
            repeatFrequency == _undefined || repeatFrequency == null
                ? _instance.repeatFrequency
                : (repeatFrequency as int),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        isActive: isActive == _undefined || isActive == null
            ? _instance.isActive
            : (isActive as bool),
        nextSchedulerDate:
            nextSchedulerDate == _undefined || nextSchedulerDate == null
                ? _instance.nextSchedulerDate
                : (nextSchedulerDate as String),
        createdBy: createdBy == _undefined || createdBy == null
            ? _instance.createdBy
            : (createdBy as String),
        createdDate: createdDate == _undefined || createdDate == null
            ? _instance.createdDate
            : (createdDate as String),
        endDate:
            endDate == _undefined ? _instance.endDate : (endDate as String?),
        assignedTo: assignedTo == _undefined
            ? _instance.assignedTo
            : (assignedTo as String?),
        assignedToTeam: assignedToTeam == _undefined
            ? _instance.assignedToTeam
            : (assignedToTeam as String?),
        yardCodes: yardCodes == _undefined || yardCodes == null
            ? _instance.yardCodes
            : (yardCodes as List<String>),
        depotNos: depotNos == _undefined || depotNos == null
            ? _instance.depotNos
            : (depotNos as List<String>),
        numberOfTasks: numberOfTasks == _undefined || numberOfTasks == null
            ? _instance.numberOfTasks
            : (numberOfTasks as int),
        workingDays: workingDays == _undefined || workingDays == null
            ? _instance.workingDays
            : (workingDays as int),
        template: template == _undefined || template == null
            ? _instance.template
            : (template as Query$GetSchedules$schedules$template),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetSchedules$schedules$template<TRes> get template {
    final local$template = _instance.template;
    return CopyWith$Query$GetSchedules$schedules$template(
        local$template, (e) => call(template: e));
  }
}

class _CopyWithStubImpl$Query$GetSchedules$schedules<TRes>
    implements CopyWith$Query$GetSchedules$schedules<TRes> {
  _CopyWithStubImpl$Query$GetSchedules$schedules(this._res);

  TRes _res;

  call({
    String? uuid,
    bool? isDigitalSignatureRequired,
    int? repeatInterval,
    int? repeatFrequency,
    String? description,
    bool? isActive,
    String? nextSchedulerDate,
    String? createdBy,
    String? createdDate,
    String? endDate,
    String? assignedTo,
    String? assignedToTeam,
    List<String>? yardCodes,
    List<String>? depotNos,
    int? numberOfTasks,
    int? workingDays,
    Query$GetSchedules$schedules$template? template,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetSchedules$schedules$template<TRes> get template =>
      CopyWith$Query$GetSchedules$schedules$template.stub(_res);
}

class Query$GetSchedules$schedules$template {
  Query$GetSchedules$schedules$template({
    this.document,
    required this.isDigitalSignatureRequired,
    this.referenceId,
    required this.id,
    this.templateId,
    required this.version,
    this.title,
    this.description,
    required this.validateBySignature,
    required this.validateByWorkOrder,
    this.validateFrom,
    required this.isEmailNotificationRequired,
    required this.sendEmailOnFailedQuestions,
    this.emailIds,
    this.assignFailedQuestionToTeam,
    this.assignFailedQuestionToTeamId,
    this.$__typename = 'FormTemplate',
  });

  factory Query$GetSchedules$schedules$template.fromJson(
      Map<String, dynamic> json) {
    final l$document = json['document'];
    final l$isDigitalSignatureRequired = json['isDigitalSignatureRequired'];
    final l$referenceId = json['referenceId'];
    final l$id = json['id'];
    final l$templateId = json['templateId'];
    final l$version = json['version'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$validateBySignature = json['validateBySignature'];
    final l$validateByWorkOrder = json['validateByWorkOrder'];
    final l$validateFrom = json['validateFrom'];
    final l$isEmailNotificationRequired = json['isEmailNotificationRequired'];
    final l$sendEmailOnFailedQuestions = json['sendEmailOnFailedQuestions'];
    final l$emailIds = json['emailIds'];
    final l$assignFailedQuestionToTeam = json['assignFailedQuestionToTeam'];
    final l$assignFailedQuestionToTeamId = json['assignFailedQuestionToTeamId'];
    final l$$__typename = json['__typename'];
    return Query$GetSchedules$schedules$template(
      document: (l$document as String?),
      isDigitalSignatureRequired: (l$isDigitalSignatureRequired as bool),
      referenceId: (l$referenceId as String?),
      id: (l$id as String),
      templateId: (l$templateId as String?),
      version: (l$version as int),
      title: (l$title as String?),
      description: (l$description as String?),
      validateBySignature: (l$validateBySignature as bool),
      validateByWorkOrder: (l$validateByWorkOrder as bool),
      validateFrom: (l$validateFrom as String?),
      isEmailNotificationRequired: (l$isEmailNotificationRequired as bool),
      sendEmailOnFailedQuestions: (l$sendEmailOnFailedQuestions as bool),
      emailIds: (l$emailIds as String?),
      assignFailedQuestionToTeam: (l$assignFailedQuestionToTeam as String?),
      assignFailedQuestionToTeamId: (l$assignFailedQuestionToTeamId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? document;

  final bool isDigitalSignatureRequired;

  final String? referenceId;

  final String id;

  final String? templateId;

  final int version;

  final String? title;

  final String? description;

  final bool validateBySignature;

  final bool validateByWorkOrder;

  final String? validateFrom;

  final bool isEmailNotificationRequired;

  final bool sendEmailOnFailedQuestions;

  final String? emailIds;

  final String? assignFailedQuestionToTeam;

  final String? assignFailedQuestionToTeamId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$document = document;
    _resultData['document'] = l$document;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    _resultData['isDigitalSignatureRequired'] = l$isDigitalSignatureRequired;
    final l$referenceId = referenceId;
    _resultData['referenceId'] = l$referenceId;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$templateId = templateId;
    _resultData['templateId'] = l$templateId;
    final l$version = version;
    _resultData['version'] = l$version;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$validateBySignature = validateBySignature;
    _resultData['validateBySignature'] = l$validateBySignature;
    final l$validateByWorkOrder = validateByWorkOrder;
    _resultData['validateByWorkOrder'] = l$validateByWorkOrder;
    final l$validateFrom = validateFrom;
    _resultData['validateFrom'] = l$validateFrom;
    final l$isEmailNotificationRequired = isEmailNotificationRequired;
    _resultData['isEmailNotificationRequired'] = l$isEmailNotificationRequired;
    final l$sendEmailOnFailedQuestions = sendEmailOnFailedQuestions;
    _resultData['sendEmailOnFailedQuestions'] = l$sendEmailOnFailedQuestions;
    final l$emailIds = emailIds;
    _resultData['emailIds'] = l$emailIds;
    final l$assignFailedQuestionToTeam = assignFailedQuestionToTeam;
    _resultData['assignFailedQuestionToTeam'] = l$assignFailedQuestionToTeam;
    final l$assignFailedQuestionToTeamId = assignFailedQuestionToTeamId;
    _resultData['assignFailedQuestionToTeamId'] =
        l$assignFailedQuestionToTeamId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$document = document;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final l$referenceId = referenceId;
    final l$id = id;
    final l$templateId = templateId;
    final l$version = version;
    final l$title = title;
    final l$description = description;
    final l$validateBySignature = validateBySignature;
    final l$validateByWorkOrder = validateByWorkOrder;
    final l$validateFrom = validateFrom;
    final l$isEmailNotificationRequired = isEmailNotificationRequired;
    final l$sendEmailOnFailedQuestions = sendEmailOnFailedQuestions;
    final l$emailIds = emailIds;
    final l$assignFailedQuestionToTeam = assignFailedQuestionToTeam;
    final l$assignFailedQuestionToTeamId = assignFailedQuestionToTeamId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$document,
      l$isDigitalSignatureRequired,
      l$referenceId,
      l$id,
      l$templateId,
      l$version,
      l$title,
      l$description,
      l$validateBySignature,
      l$validateByWorkOrder,
      l$validateFrom,
      l$isEmailNotificationRequired,
      l$sendEmailOnFailedQuestions,
      l$emailIds,
      l$assignFailedQuestionToTeam,
      l$assignFailedQuestionToTeamId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSchedules$schedules$template) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$document = document;
    final lOther$document = other.document;
    if (l$document != lOther$document) {
      return false;
    }
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final lOther$isDigitalSignatureRequired = other.isDigitalSignatureRequired;
    if (l$isDigitalSignatureRequired != lOther$isDigitalSignatureRequired) {
      return false;
    }
    final l$referenceId = referenceId;
    final lOther$referenceId = other.referenceId;
    if (l$referenceId != lOther$referenceId) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$templateId = templateId;
    final lOther$templateId = other.templateId;
    if (l$templateId != lOther$templateId) {
      return false;
    }
    final l$version = version;
    final lOther$version = other.version;
    if (l$version != lOther$version) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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
    final l$emailIds = emailIds;
    final lOther$emailIds = other.emailIds;
    if (l$emailIds != lOther$emailIds) {
      return false;
    }
    final l$assignFailedQuestionToTeam = assignFailedQuestionToTeam;
    final lOther$assignFailedQuestionToTeam = other.assignFailedQuestionToTeam;
    if (l$assignFailedQuestionToTeam != lOther$assignFailedQuestionToTeam) {
      return false;
    }
    final l$assignFailedQuestionToTeamId = assignFailedQuestionToTeamId;
    final lOther$assignFailedQuestionToTeamId =
        other.assignFailedQuestionToTeamId;
    if (l$assignFailedQuestionToTeamId != lOther$assignFailedQuestionToTeamId) {
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

extension UtilityExtension$Query$GetSchedules$schedules$template
    on Query$GetSchedules$schedules$template {
  CopyWith$Query$GetSchedules$schedules$template<
          Query$GetSchedules$schedules$template>
      get copyWith => CopyWith$Query$GetSchedules$schedules$template(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSchedules$schedules$template<TRes> {
  factory CopyWith$Query$GetSchedules$schedules$template(
    Query$GetSchedules$schedules$template instance,
    TRes Function(Query$GetSchedules$schedules$template) then,
  ) = _CopyWithImpl$Query$GetSchedules$schedules$template;

  factory CopyWith$Query$GetSchedules$schedules$template.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSchedules$schedules$template;

  TRes call({
    String? document,
    bool? isDigitalSignatureRequired,
    String? referenceId,
    String? id,
    String? templateId,
    int? version,
    String? title,
    String? description,
    bool? validateBySignature,
    bool? validateByWorkOrder,
    String? validateFrom,
    bool? isEmailNotificationRequired,
    bool? sendEmailOnFailedQuestions,
    String? emailIds,
    String? assignFailedQuestionToTeam,
    String? assignFailedQuestionToTeamId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSchedules$schedules$template<TRes>
    implements CopyWith$Query$GetSchedules$schedules$template<TRes> {
  _CopyWithImpl$Query$GetSchedules$schedules$template(
    this._instance,
    this._then,
  );

  final Query$GetSchedules$schedules$template _instance;

  final TRes Function(Query$GetSchedules$schedules$template) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? document = _undefined,
    Object? isDigitalSignatureRequired = _undefined,
    Object? referenceId = _undefined,
    Object? id = _undefined,
    Object? templateId = _undefined,
    Object? version = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? validateBySignature = _undefined,
    Object? validateByWorkOrder = _undefined,
    Object? validateFrom = _undefined,
    Object? isEmailNotificationRequired = _undefined,
    Object? sendEmailOnFailedQuestions = _undefined,
    Object? emailIds = _undefined,
    Object? assignFailedQuestionToTeam = _undefined,
    Object? assignFailedQuestionToTeamId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSchedules$schedules$template(
        document:
            document == _undefined ? _instance.document : (document as String?),
        isDigitalSignatureRequired: isDigitalSignatureRequired == _undefined ||
                isDigitalSignatureRequired == null
            ? _instance.isDigitalSignatureRequired
            : (isDigitalSignatureRequired as bool),
        referenceId: referenceId == _undefined
            ? _instance.referenceId
            : (referenceId as String?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        templateId: templateId == _undefined
            ? _instance.templateId
            : (templateId as String?),
        version: version == _undefined || version == null
            ? _instance.version
            : (version as int),
        title: title == _undefined ? _instance.title : (title as String?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        validateBySignature:
            validateBySignature == _undefined || validateBySignature == null
                ? _instance.validateBySignature
                : (validateBySignature as bool),
        validateByWorkOrder:
            validateByWorkOrder == _undefined || validateByWorkOrder == null
                ? _instance.validateByWorkOrder
                : (validateByWorkOrder as bool),
        validateFrom: validateFrom == _undefined
            ? _instance.validateFrom
            : (validateFrom as String?),
        isEmailNotificationRequired:
            isEmailNotificationRequired == _undefined ||
                    isEmailNotificationRequired == null
                ? _instance.isEmailNotificationRequired
                : (isEmailNotificationRequired as bool),
        sendEmailOnFailedQuestions: sendEmailOnFailedQuestions == _undefined ||
                sendEmailOnFailedQuestions == null
            ? _instance.sendEmailOnFailedQuestions
            : (sendEmailOnFailedQuestions as bool),
        emailIds:
            emailIds == _undefined ? _instance.emailIds : (emailIds as String?),
        assignFailedQuestionToTeam: assignFailedQuestionToTeam == _undefined
            ? _instance.assignFailedQuestionToTeam
            : (assignFailedQuestionToTeam as String?),
        assignFailedQuestionToTeamId: assignFailedQuestionToTeamId == _undefined
            ? _instance.assignFailedQuestionToTeamId
            : (assignFailedQuestionToTeamId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetSchedules$schedules$template<TRes>
    implements CopyWith$Query$GetSchedules$schedules$template<TRes> {
  _CopyWithStubImpl$Query$GetSchedules$schedules$template(this._res);

  TRes _res;

  call({
    String? document,
    bool? isDigitalSignatureRequired,
    String? referenceId,
    String? id,
    String? templateId,
    int? version,
    String? title,
    String? description,
    bool? validateBySignature,
    bool? validateByWorkOrder,
    String? validateFrom,
    bool? isEmailNotificationRequired,
    bool? sendEmailOnFailedQuestions,
    String? emailIds,
    String? assignFailedQuestionToTeam,
    String? assignFailedQuestionToTeamId,
    String? $__typename,
  }) =>
      _res;
}
