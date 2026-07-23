import 'package:gql/ast.dart';

class Variables$Query$GetJobsCount {
  factory Variables$Query$GetJobsCount({
    required String yardCode,
    String? startDate,
    String? endDate,
    bool? filterForUser,
  }) =>
      Variables$Query$GetJobsCount._({
        r'yardCode': yardCode,
        if (startDate != null) r'startDate': startDate,
        if (endDate != null) r'endDate': endDate,
        if (filterForUser != null) r'filterForUser': filterForUser,
      });

  Variables$Query$GetJobsCount._(this._$data);

  factory Variables$Query$GetJobsCount.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$yardCode = data['yardCode'];
    result$data['yardCode'] = (l$yardCode as String);
    if (data.containsKey('startDate')) {
      final l$startDate = data['startDate'];
      result$data['startDate'] = (l$startDate as String?);
    }
    if (data.containsKey('endDate')) {
      final l$endDate = data['endDate'];
      result$data['endDate'] = (l$endDate as String?);
    }
    if (data.containsKey('filterForUser')) {
      final l$filterForUser = data['filterForUser'];
      result$data['filterForUser'] = (l$filterForUser as bool?);
    }
    return Variables$Query$GetJobsCount._(result$data);
  }

  Map<String, dynamic> _$data;

  String get yardCode => (_$data['yardCode'] as String);

  String? get startDate => (_$data['startDate'] as String?);

  String? get endDate => (_$data['endDate'] as String?);

  bool? get filterForUser => (_$data['filterForUser'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$yardCode = yardCode;
    result$data['yardCode'] = l$yardCode;
    if (_$data.containsKey('startDate')) {
      final l$startDate = startDate;
      result$data['startDate'] = l$startDate;
    }
    if (_$data.containsKey('endDate')) {
      final l$endDate = endDate;
      result$data['endDate'] = l$endDate;
    }
    if (_$data.containsKey('filterForUser')) {
      final l$filterForUser = filterForUser;
      result$data['filterForUser'] = l$filterForUser;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetJobsCount<Variables$Query$GetJobsCount>
      get copyWith => CopyWith$Variables$Query$GetJobsCount(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetJobsCount) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
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
    final l$filterForUser = filterForUser;
    final lOther$filterForUser = other.filterForUser;
    if (_$data.containsKey('filterForUser') !=
        other._$data.containsKey('filterForUser')) {
      return false;
    }
    if (l$filterForUser != lOther$filterForUser) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$filterForUser = filterForUser;
    return Object.hashAll([
      l$yardCode,
      _$data.containsKey('startDate') ? l$startDate : const {},
      _$data.containsKey('endDate') ? l$endDate : const {},
      _$data.containsKey('filterForUser') ? l$filterForUser : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetJobsCount<TRes> {
  factory CopyWith$Variables$Query$GetJobsCount(
    Variables$Query$GetJobsCount instance,
    TRes Function(Variables$Query$GetJobsCount) then,
  ) = _CopyWithImpl$Variables$Query$GetJobsCount;

  factory CopyWith$Variables$Query$GetJobsCount.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetJobsCount;

  TRes call({
    String? yardCode,
    String? startDate,
    String? endDate,
    bool? filterForUser,
  });
}

class _CopyWithImpl$Variables$Query$GetJobsCount<TRes>
    implements CopyWith$Variables$Query$GetJobsCount<TRes> {
  _CopyWithImpl$Variables$Query$GetJobsCount(
    this._instance,
    this._then,
  );

  final Variables$Query$GetJobsCount _instance;

  final TRes Function(Variables$Query$GetJobsCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? filterForUser = _undefined,
  }) =>
      _then(Variables$Query$GetJobsCount._({
        ..._instance._$data,
        if (yardCode != _undefined && yardCode != null)
          'yardCode': (yardCode as String),
        if (startDate != _undefined) 'startDate': (startDate as String?),
        if (endDate != _undefined) 'endDate': (endDate as String?),
        if (filterForUser != _undefined)
          'filterForUser': (filterForUser as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetJobsCount<TRes>
    implements CopyWith$Variables$Query$GetJobsCount<TRes> {
  _CopyWithStubImpl$Variables$Query$GetJobsCount(this._res);

  TRes _res;

  call({
    String? yardCode,
    String? startDate,
    String? endDate,
    bool? filterForUser,
  }) =>
      _res;
}

class Query$GetJobsCount {
  Query$GetJobsCount({
    required this.jobFormsForYard,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetJobsCount.fromJson(Map<String, dynamic> json) {
    final l$jobFormsForYard = json['jobFormsForYard'];
    final l$$__typename = json['__typename'];
    return Query$GetJobsCount(
      jobFormsForYard: Query$GetJobsCount$jobFormsForYard.fromJson(
          (l$jobFormsForYard as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetJobsCount$jobFormsForYard jobFormsForYard;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$jobFormsForYard = jobFormsForYard;
    _resultData['jobFormsForYard'] = l$jobFormsForYard.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$jobFormsForYard = jobFormsForYard;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$jobFormsForYard,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetJobsCount) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$jobFormsForYard = jobFormsForYard;
    final lOther$jobFormsForYard = other.jobFormsForYard;
    if (l$jobFormsForYard != lOther$jobFormsForYard) {
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

extension UtilityExtension$Query$GetJobsCount on Query$GetJobsCount {
  CopyWith$Query$GetJobsCount<Query$GetJobsCount> get copyWith =>
      CopyWith$Query$GetJobsCount(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetJobsCount<TRes> {
  factory CopyWith$Query$GetJobsCount(
    Query$GetJobsCount instance,
    TRes Function(Query$GetJobsCount) then,
  ) = _CopyWithImpl$Query$GetJobsCount;

  factory CopyWith$Query$GetJobsCount.stub(TRes res) =
      _CopyWithStubImpl$Query$GetJobsCount;

  TRes call({
    Query$GetJobsCount$jobFormsForYard? jobFormsForYard,
    String? $__typename,
  });
  CopyWith$Query$GetJobsCount$jobFormsForYard<TRes> get jobFormsForYard;
}

class _CopyWithImpl$Query$GetJobsCount<TRes>
    implements CopyWith$Query$GetJobsCount<TRes> {
  _CopyWithImpl$Query$GetJobsCount(
    this._instance,
    this._then,
  );

  final Query$GetJobsCount _instance;

  final TRes Function(Query$GetJobsCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? jobFormsForYard = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetJobsCount(
        jobFormsForYard:
            jobFormsForYard == _undefined || jobFormsForYard == null
                ? _instance.jobFormsForYard
                : (jobFormsForYard as Query$GetJobsCount$jobFormsForYard),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetJobsCount$jobFormsForYard<TRes> get jobFormsForYard {
    final local$jobFormsForYard = _instance.jobFormsForYard;
    return CopyWith$Query$GetJobsCount$jobFormsForYard(
        local$jobFormsForYard, (e) => call(jobFormsForYard: e));
  }
}

class _CopyWithStubImpl$Query$GetJobsCount<TRes>
    implements CopyWith$Query$GetJobsCount<TRes> {
  _CopyWithStubImpl$Query$GetJobsCount(this._res);

  TRes _res;

  call({
    Query$GetJobsCount$jobFormsForYard? jobFormsForYard,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetJobsCount$jobFormsForYard<TRes> get jobFormsForYard =>
      CopyWith$Query$GetJobsCount$jobFormsForYard.stub(_res);
}

const documentNodeQueryGetJobsCount = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetJobsCount'),
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
        variable: VariableNode(name: NameNode(value: 'startDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'DateTime'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'endDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'DateTime'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filterForUser')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'jobFormsForYard'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'yardCode'),
            value: VariableNode(name: NameNode(value: 'yardCode')),
          ),
          ArgumentNode(
            name: NameNode(value: 'startDate'),
            value: VariableNode(name: NameNode(value: 'startDate')),
          ),
          ArgumentNode(
            name: NameNode(value: 'endDate'),
            value: VariableNode(name: NameNode(value: 'endDate')),
          ),
          ArgumentNode(
            name: NameNode(value: 'filterForUser'),
            value: VariableNode(name: NameNode(value: 'filterForUser')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'countsOnly'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'canScheduleTask'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'canViewReport'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'workRequestsCount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'unassignedJobsCount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'userJobs'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'newJobs'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'count'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'recentActivities'),
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
                    name: NameNode(value: 'inProgressJobs'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'count'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'recentActivities'),
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
                    name: NameNode(value: 'completedJobs'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'count'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'recentActivities'),
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
                name: NameNode(value: 'yardJobs'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'newJobs'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'count'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'recentActivities'),
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
                    name: NameNode(value: 'inProgressJobs'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'count'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'recentActivities'),
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
                    name: NameNode(value: 'completedJobs'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'count'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'recentActivities'),
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

class Query$GetJobsCount$jobFormsForYard {
  Query$GetJobsCount$jobFormsForYard({
    required this.countsOnly,
    this.$__typename = 'JobForms',
  });

  factory Query$GetJobsCount$jobFormsForYard.fromJson(
      Map<String, dynamic> json) {
    final l$countsOnly = json['countsOnly'];
    final l$$__typename = json['__typename'];
    return Query$GetJobsCount$jobFormsForYard(
      countsOnly: Query$GetJobsCount$jobFormsForYard$countsOnly.fromJson(
          (l$countsOnly as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetJobsCount$jobFormsForYard$countsOnly countsOnly;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$countsOnly = countsOnly;
    _resultData['countsOnly'] = l$countsOnly.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$countsOnly = countsOnly;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$countsOnly,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetJobsCount$jobFormsForYard) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$countsOnly = countsOnly;
    final lOther$countsOnly = other.countsOnly;
    if (l$countsOnly != lOther$countsOnly) {
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

extension UtilityExtension$Query$GetJobsCount$jobFormsForYard
    on Query$GetJobsCount$jobFormsForYard {
  CopyWith$Query$GetJobsCount$jobFormsForYard<
          Query$GetJobsCount$jobFormsForYard>
      get copyWith => CopyWith$Query$GetJobsCount$jobFormsForYard(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetJobsCount$jobFormsForYard<TRes> {
  factory CopyWith$Query$GetJobsCount$jobFormsForYard(
    Query$GetJobsCount$jobFormsForYard instance,
    TRes Function(Query$GetJobsCount$jobFormsForYard) then,
  ) = _CopyWithImpl$Query$GetJobsCount$jobFormsForYard;

  factory CopyWith$Query$GetJobsCount$jobFormsForYard.stub(TRes res) =
      _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard;

  TRes call({
    Query$GetJobsCount$jobFormsForYard$countsOnly? countsOnly,
    String? $__typename,
  });
  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly<TRes> get countsOnly;
}

class _CopyWithImpl$Query$GetJobsCount$jobFormsForYard<TRes>
    implements CopyWith$Query$GetJobsCount$jobFormsForYard<TRes> {
  _CopyWithImpl$Query$GetJobsCount$jobFormsForYard(
    this._instance,
    this._then,
  );

  final Query$GetJobsCount$jobFormsForYard _instance;

  final TRes Function(Query$GetJobsCount$jobFormsForYard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countsOnly = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetJobsCount$jobFormsForYard(
        countsOnly: countsOnly == _undefined || countsOnly == null
            ? _instance.countsOnly
            : (countsOnly as Query$GetJobsCount$jobFormsForYard$countsOnly),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly<TRes> get countsOnly {
    final local$countsOnly = _instance.countsOnly;
    return CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly(
        local$countsOnly, (e) => call(countsOnly: e));
  }
}

class _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard<TRes>
    implements CopyWith$Query$GetJobsCount$jobFormsForYard<TRes> {
  _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard(this._res);

  TRes _res;

  call({
    Query$GetJobsCount$jobFormsForYard$countsOnly? countsOnly,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly<TRes> get countsOnly =>
      CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly.stub(_res);
}

class Query$GetJobsCount$jobFormsForYard$countsOnly {
  Query$GetJobsCount$jobFormsForYard$countsOnly({
    required this.canScheduleTask,
    required this.canViewReport,
    required this.workRequestsCount,
    required this.unassignedJobsCount,
    required this.userJobs,
    required this.yardJobs,
    this.$__typename = 'JobCounts',
  });

  factory Query$GetJobsCount$jobFormsForYard$countsOnly.fromJson(
      Map<String, dynamic> json) {
    final l$canScheduleTask = json['canScheduleTask'];
    final l$canViewReport = json['canViewReport'];
    final l$workRequestsCount = json['workRequestsCount'];
    final l$unassignedJobsCount = json['unassignedJobsCount'];
    final l$userJobs = json['userJobs'];
    final l$yardJobs = json['yardJobs'];
    final l$$__typename = json['__typename'];
    return Query$GetJobsCount$jobFormsForYard$countsOnly(
      canScheduleTask: (l$canScheduleTask as bool),
      canViewReport: (l$canViewReport as bool),
      workRequestsCount: (l$workRequestsCount as int),
      unassignedJobsCount: (l$unassignedJobsCount as int),
      userJobs: Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs.fromJson(
          (l$userJobs as Map<String, dynamic>)),
      yardJobs: Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs.fromJson(
          (l$yardJobs as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final bool canScheduleTask;

  final bool canViewReport;

  final int workRequestsCount;

  final int unassignedJobsCount;

  final Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs userJobs;

  final Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs yardJobs;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$canScheduleTask = canScheduleTask;
    _resultData['canScheduleTask'] = l$canScheduleTask;
    final l$canViewReport = canViewReport;
    _resultData['canViewReport'] = l$canViewReport;
    final l$workRequestsCount = workRequestsCount;
    _resultData['workRequestsCount'] = l$workRequestsCount;
    final l$unassignedJobsCount = unassignedJobsCount;
    _resultData['unassignedJobsCount'] = l$unassignedJobsCount;
    final l$userJobs = userJobs;
    _resultData['userJobs'] = l$userJobs.toJson();
    final l$yardJobs = yardJobs;
    _resultData['yardJobs'] = l$yardJobs.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$canScheduleTask = canScheduleTask;
    final l$canViewReport = canViewReport;
    final l$workRequestsCount = workRequestsCount;
    final l$unassignedJobsCount = unassignedJobsCount;
    final l$userJobs = userJobs;
    final l$yardJobs = yardJobs;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$canScheduleTask,
      l$canViewReport,
      l$workRequestsCount,
      l$unassignedJobsCount,
      l$userJobs,
      l$yardJobs,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetJobsCount$jobFormsForYard$countsOnly) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$canScheduleTask = canScheduleTask;
    final lOther$canScheduleTask = other.canScheduleTask;
    if (l$canScheduleTask != lOther$canScheduleTask) {
      return false;
    }
    final l$canViewReport = canViewReport;
    final lOther$canViewReport = other.canViewReport;
    if (l$canViewReport != lOther$canViewReport) {
      return false;
    }
    final l$workRequestsCount = workRequestsCount;
    final lOther$workRequestsCount = other.workRequestsCount;
    if (l$workRequestsCount != lOther$workRequestsCount) {
      return false;
    }
    final l$unassignedJobsCount = unassignedJobsCount;
    final lOther$unassignedJobsCount = other.unassignedJobsCount;
    if (l$unassignedJobsCount != lOther$unassignedJobsCount) {
      return false;
    }
    final l$userJobs = userJobs;
    final lOther$userJobs = other.userJobs;
    if (l$userJobs != lOther$userJobs) {
      return false;
    }
    final l$yardJobs = yardJobs;
    final lOther$yardJobs = other.yardJobs;
    if (l$yardJobs != lOther$yardJobs) {
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

extension UtilityExtension$Query$GetJobsCount$jobFormsForYard$countsOnly
    on Query$GetJobsCount$jobFormsForYard$countsOnly {
  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly<
          Query$GetJobsCount$jobFormsForYard$countsOnly>
      get copyWith => CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly<TRes> {
  factory CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly(
    Query$GetJobsCount$jobFormsForYard$countsOnly instance,
    TRes Function(Query$GetJobsCount$jobFormsForYard$countsOnly) then,
  ) = _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly;

  factory CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly;

  TRes call({
    bool? canScheduleTask,
    bool? canViewReport,
    int? workRequestsCount,
    int? unassignedJobsCount,
    Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs? userJobs,
    Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs? yardJobs,
    String? $__typename,
  });
  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs<TRes>
      get userJobs;
  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs<TRes>
      get yardJobs;
}

class _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly<TRes>
    implements CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly<TRes> {
  _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly(
    this._instance,
    this._then,
  );

  final Query$GetJobsCount$jobFormsForYard$countsOnly _instance;

  final TRes Function(Query$GetJobsCount$jobFormsForYard$countsOnly) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? canScheduleTask = _undefined,
    Object? canViewReport = _undefined,
    Object? workRequestsCount = _undefined,
    Object? unassignedJobsCount = _undefined,
    Object? userJobs = _undefined,
    Object? yardJobs = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetJobsCount$jobFormsForYard$countsOnly(
        canScheduleTask:
            canScheduleTask == _undefined || canScheduleTask == null
                ? _instance.canScheduleTask
                : (canScheduleTask as bool),
        canViewReport: canViewReport == _undefined || canViewReport == null
            ? _instance.canViewReport
            : (canViewReport as bool),
        workRequestsCount:
            workRequestsCount == _undefined || workRequestsCount == null
                ? _instance.workRequestsCount
                : (workRequestsCount as int),
        unassignedJobsCount:
            unassignedJobsCount == _undefined || unassignedJobsCount == null
                ? _instance.unassignedJobsCount
                : (unassignedJobsCount as int),
        userJobs: userJobs == _undefined || userJobs == null
            ? _instance.userJobs
            : (userJobs
                as Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs),
        yardJobs: yardJobs == _undefined || yardJobs == null
            ? _instance.yardJobs
            : (yardJobs
                as Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs<TRes>
      get userJobs {
    final local$userJobs = _instance.userJobs;
    return CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs(
        local$userJobs, (e) => call(userJobs: e));
  }

  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs<TRes>
      get yardJobs {
    final local$yardJobs = _instance.yardJobs;
    return CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs(
        local$yardJobs, (e) => call(yardJobs: e));
  }
}

class _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly<TRes>
    implements CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly<TRes> {
  _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly(this._res);

  TRes _res;

  call({
    bool? canScheduleTask,
    bool? canViewReport,
    int? workRequestsCount,
    int? unassignedJobsCount,
    Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs? userJobs,
    Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs? yardJobs,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs<TRes>
      get userJobs =>
          CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs.stub(
              _res);

  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs<TRes>
      get yardJobs =>
          CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs.stub(
              _res);
}

class Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs {
  Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs({
    required this.newJobs,
    required this.inProgressJobs,
    required this.completedJobs,
    this.$__typename = 'JobGroup',
  });

  factory Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs.fromJson(
      Map<String, dynamic> json) {
    final l$newJobs = json['newJobs'];
    final l$inProgressJobs = json['inProgressJobs'];
    final l$completedJobs = json['completedJobs'];
    final l$$__typename = json['__typename'];
    return Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs(
      newJobs: Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs
          .fromJson((l$newJobs as Map<String, dynamic>)),
      inProgressJobs:
          Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs
              .fromJson((l$inProgressJobs as Map<String, dynamic>)),
      completedJobs:
          Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs
              .fromJson((l$completedJobs as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs newJobs;

  final Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs
      inProgressJobs;

  final Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs
      completedJobs;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$newJobs = newJobs;
    _resultData['newJobs'] = l$newJobs.toJson();
    final l$inProgressJobs = inProgressJobs;
    _resultData['inProgressJobs'] = l$inProgressJobs.toJson();
    final l$completedJobs = completedJobs;
    _resultData['completedJobs'] = l$completedJobs.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$newJobs = newJobs;
    final l$inProgressJobs = inProgressJobs;
    final l$completedJobs = completedJobs;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$newJobs,
      l$inProgressJobs,
      l$completedJobs,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newJobs = newJobs;
    final lOther$newJobs = other.newJobs;
    if (l$newJobs != lOther$newJobs) {
      return false;
    }
    final l$inProgressJobs = inProgressJobs;
    final lOther$inProgressJobs = other.inProgressJobs;
    if (l$inProgressJobs != lOther$inProgressJobs) {
      return false;
    }
    final l$completedJobs = completedJobs;
    final lOther$completedJobs = other.completedJobs;
    if (l$completedJobs != lOther$completedJobs) {
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

extension UtilityExtension$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs
    on Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs {
  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs<
          Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs>
      get copyWith =>
          CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs<
    TRes> {
  factory CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs(
    Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs instance,
    TRes Function(Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs) then,
  ) = _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs;

  factory CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs;

  TRes call({
    Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs? newJobs,
    Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs?
        inProgressJobs,
    Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs?
        completedJobs,
    String? $__typename,
  });
  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs<TRes>
      get newJobs;
  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs<
      TRes> get inProgressJobs;
  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs<
      TRes> get completedJobs;
}

class _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs<TRes>
    implements
        CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs<TRes> {
  _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs(
    this._instance,
    this._then,
  );

  final Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs _instance;

  final TRes Function(Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? newJobs = _undefined,
    Object? inProgressJobs = _undefined,
    Object? completedJobs = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs(
        newJobs: newJobs == _undefined || newJobs == null
            ? _instance.newJobs
            : (newJobs
                as Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs),
        inProgressJobs: inProgressJobs == _undefined || inProgressJobs == null
            ? _instance.inProgressJobs
            : (inProgressJobs
                as Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs),
        completedJobs: completedJobs == _undefined || completedJobs == null
            ? _instance.completedJobs
            : (completedJobs
                as Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs<TRes>
      get newJobs {
    final local$newJobs = _instance.newJobs;
    return CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs(
        local$newJobs, (e) => call(newJobs: e));
  }

  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs<
      TRes> get inProgressJobs {
    final local$inProgressJobs = _instance.inProgressJobs;
    return CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs(
        local$inProgressJobs, (e) => call(inProgressJobs: e));
  }

  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs<
      TRes> get completedJobs {
    final local$completedJobs = _instance.completedJobs;
    return CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs(
        local$completedJobs, (e) => call(completedJobs: e));
  }
}

class _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs<
        TRes>
    implements
        CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs<TRes> {
  _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs(
      this._res);

  TRes _res;

  call({
    Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs? newJobs,
    Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs?
        inProgressJobs,
    Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs?
        completedJobs,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs<TRes>
      get newJobs =>
          CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs
              .stub(_res);

  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs<
          TRes>
      get inProgressJobs =>
          CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs
              .stub(_res);

  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs<
          TRes>
      get completedJobs =>
          CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs
              .stub(_res);
}

class Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs {
  Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs({
    required this.count,
    required this.recentActivities,
    this.$__typename = 'JobSummary',
  });

  factory Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$recentActivities = json['recentActivities'];
    final l$$__typename = json['__typename'];
    return Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs(
      count: (l$count as int),
      recentActivities: (l$recentActivities as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final List<String> recentActivities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$recentActivities = recentActivities;
    _resultData['recentActivities'] = l$recentActivities.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$recentActivities = recentActivities;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      Object.hashAll(l$recentActivities.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$recentActivities = recentActivities;
    final lOther$recentActivities = other.recentActivities;
    if (l$recentActivities.length != lOther$recentActivities.length) {
      return false;
    }
    for (int i = 0; i < l$recentActivities.length; i++) {
      final l$recentActivities$entry = l$recentActivities[i];
      final lOther$recentActivities$entry = lOther$recentActivities[i];
      if (l$recentActivities$entry != lOther$recentActivities$entry) {
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

extension UtilityExtension$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs
    on Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs {
  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs<
          Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs>
      get copyWith =>
          CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs<
    TRes> {
  factory CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs(
    Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs instance,
    TRes Function(
            Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs)
        then,
  ) = _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs;

  factory CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs;

  TRes call({
    int? count,
    List<String>? recentActivities,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs<
        TRes>
    implements
        CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs<
            TRes> {
  _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs(
    this._instance,
    this._then,
  );

  final Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs
      _instance;

  final TRes Function(
      Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? recentActivities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        recentActivities:
            recentActivities == _undefined || recentActivities == null
                ? _instance.recentActivities
                : (recentActivities as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs<
        TRes>
    implements
        CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs<
            TRes> {
  _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$newJobs(
      this._res);

  TRes _res;

  call({
    int? count,
    List<String>? recentActivities,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs {
  Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs({
    required this.count,
    required this.recentActivities,
    this.$__typename = 'JobSummary',
  });

  factory Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$recentActivities = json['recentActivities'];
    final l$$__typename = json['__typename'];
    return Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs(
      count: (l$count as int),
      recentActivities: (l$recentActivities as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final List<String> recentActivities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$recentActivities = recentActivities;
    _resultData['recentActivities'] = l$recentActivities.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$recentActivities = recentActivities;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      Object.hashAll(l$recentActivities.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$recentActivities = recentActivities;
    final lOther$recentActivities = other.recentActivities;
    if (l$recentActivities.length != lOther$recentActivities.length) {
      return false;
    }
    for (int i = 0; i < l$recentActivities.length; i++) {
      final l$recentActivities$entry = l$recentActivities[i];
      final lOther$recentActivities$entry = lOther$recentActivities[i];
      if (l$recentActivities$entry != lOther$recentActivities$entry) {
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

extension UtilityExtension$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs
    on Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs {
  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs<
          Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs>
      get copyWith =>
          CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs<
    TRes> {
  factory CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs(
    Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs
        instance,
    TRes Function(
            Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs)
        then,
  ) = _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs;

  factory CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs;

  TRes call({
    int? count,
    List<String>? recentActivities,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs<
        TRes>
    implements
        CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs<
            TRes> {
  _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs(
    this._instance,
    this._then,
  );

  final Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs
      _instance;

  final TRes Function(
          Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? recentActivities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        recentActivities:
            recentActivities == _undefined || recentActivities == null
                ? _instance.recentActivities
                : (recentActivities as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs<
        TRes>
    implements
        CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs<
            TRes> {
  _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$inProgressJobs(
      this._res);

  TRes _res;

  call({
    int? count,
    List<String>? recentActivities,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs {
  Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs({
    required this.count,
    required this.recentActivities,
    this.$__typename = 'JobSummary',
  });

  factory Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$recentActivities = json['recentActivities'];
    final l$$__typename = json['__typename'];
    return Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs(
      count: (l$count as int),
      recentActivities: (l$recentActivities as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final List<String> recentActivities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$recentActivities = recentActivities;
    _resultData['recentActivities'] = l$recentActivities.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$recentActivities = recentActivities;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      Object.hashAll(l$recentActivities.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$recentActivities = recentActivities;
    final lOther$recentActivities = other.recentActivities;
    if (l$recentActivities.length != lOther$recentActivities.length) {
      return false;
    }
    for (int i = 0; i < l$recentActivities.length; i++) {
      final l$recentActivities$entry = l$recentActivities[i];
      final lOther$recentActivities$entry = lOther$recentActivities[i];
      if (l$recentActivities$entry != lOther$recentActivities$entry) {
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

extension UtilityExtension$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs
    on Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs {
  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs<
          Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs>
      get copyWith =>
          CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs<
    TRes> {
  factory CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs(
    Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs
        instance,
    TRes Function(
            Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs)
        then,
  ) = _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs;

  factory CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs;

  TRes call({
    int? count,
    List<String>? recentActivities,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs<
        TRes>
    implements
        CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs<
            TRes> {
  _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs(
    this._instance,
    this._then,
  );

  final Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs
      _instance;

  final TRes Function(
          Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? recentActivities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        recentActivities:
            recentActivities == _undefined || recentActivities == null
                ? _instance.recentActivities
                : (recentActivities as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs<
        TRes>
    implements
        CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs<
            TRes> {
  _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$userJobs$completedJobs(
      this._res);

  TRes _res;

  call({
    int? count,
    List<String>? recentActivities,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs {
  Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs({
    required this.newJobs,
    required this.inProgressJobs,
    required this.completedJobs,
    this.$__typename = 'JobGroup',
  });

  factory Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs.fromJson(
      Map<String, dynamic> json) {
    final l$newJobs = json['newJobs'];
    final l$inProgressJobs = json['inProgressJobs'];
    final l$completedJobs = json['completedJobs'];
    final l$$__typename = json['__typename'];
    return Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs(
      newJobs: Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs
          .fromJson((l$newJobs as Map<String, dynamic>)),
      inProgressJobs:
          Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs
              .fromJson((l$inProgressJobs as Map<String, dynamic>)),
      completedJobs:
          Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs
              .fromJson((l$completedJobs as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs newJobs;

  final Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs
      inProgressJobs;

  final Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs
      completedJobs;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$newJobs = newJobs;
    _resultData['newJobs'] = l$newJobs.toJson();
    final l$inProgressJobs = inProgressJobs;
    _resultData['inProgressJobs'] = l$inProgressJobs.toJson();
    final l$completedJobs = completedJobs;
    _resultData['completedJobs'] = l$completedJobs.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$newJobs = newJobs;
    final l$inProgressJobs = inProgressJobs;
    final l$completedJobs = completedJobs;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$newJobs,
      l$inProgressJobs,
      l$completedJobs,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newJobs = newJobs;
    final lOther$newJobs = other.newJobs;
    if (l$newJobs != lOther$newJobs) {
      return false;
    }
    final l$inProgressJobs = inProgressJobs;
    final lOther$inProgressJobs = other.inProgressJobs;
    if (l$inProgressJobs != lOther$inProgressJobs) {
      return false;
    }
    final l$completedJobs = completedJobs;
    final lOther$completedJobs = other.completedJobs;
    if (l$completedJobs != lOther$completedJobs) {
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

extension UtilityExtension$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs
    on Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs {
  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs<
          Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs>
      get copyWith =>
          CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs<
    TRes> {
  factory CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs(
    Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs instance,
    TRes Function(Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs) then,
  ) = _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs;

  factory CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs;

  TRes call({
    Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs? newJobs,
    Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs?
        inProgressJobs,
    Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs?
        completedJobs,
    String? $__typename,
  });
  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs<TRes>
      get newJobs;
  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs<
      TRes> get inProgressJobs;
  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs<
      TRes> get completedJobs;
}

class _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs<TRes>
    implements
        CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs<TRes> {
  _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs(
    this._instance,
    this._then,
  );

  final Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs _instance;

  final TRes Function(Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? newJobs = _undefined,
    Object? inProgressJobs = _undefined,
    Object? completedJobs = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs(
        newJobs: newJobs == _undefined || newJobs == null
            ? _instance.newJobs
            : (newJobs
                as Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs),
        inProgressJobs: inProgressJobs == _undefined || inProgressJobs == null
            ? _instance.inProgressJobs
            : (inProgressJobs
                as Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs),
        completedJobs: completedJobs == _undefined || completedJobs == null
            ? _instance.completedJobs
            : (completedJobs
                as Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs<TRes>
      get newJobs {
    final local$newJobs = _instance.newJobs;
    return CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs(
        local$newJobs, (e) => call(newJobs: e));
  }

  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs<
      TRes> get inProgressJobs {
    final local$inProgressJobs = _instance.inProgressJobs;
    return CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs(
        local$inProgressJobs, (e) => call(inProgressJobs: e));
  }

  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs<
      TRes> get completedJobs {
    final local$completedJobs = _instance.completedJobs;
    return CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs(
        local$completedJobs, (e) => call(completedJobs: e));
  }
}

class _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs<
        TRes>
    implements
        CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs<TRes> {
  _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs(
      this._res);

  TRes _res;

  call({
    Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs? newJobs,
    Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs?
        inProgressJobs,
    Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs?
        completedJobs,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs<TRes>
      get newJobs =>
          CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs
              .stub(_res);

  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs<
          TRes>
      get inProgressJobs =>
          CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs
              .stub(_res);

  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs<
          TRes>
      get completedJobs =>
          CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs
              .stub(_res);
}

class Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs {
  Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs({
    required this.count,
    required this.recentActivities,
    this.$__typename = 'JobSummary',
  });

  factory Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$recentActivities = json['recentActivities'];
    final l$$__typename = json['__typename'];
    return Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs(
      count: (l$count as int),
      recentActivities: (l$recentActivities as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final List<String> recentActivities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$recentActivities = recentActivities;
    _resultData['recentActivities'] = l$recentActivities.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$recentActivities = recentActivities;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      Object.hashAll(l$recentActivities.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$recentActivities = recentActivities;
    final lOther$recentActivities = other.recentActivities;
    if (l$recentActivities.length != lOther$recentActivities.length) {
      return false;
    }
    for (int i = 0; i < l$recentActivities.length; i++) {
      final l$recentActivities$entry = l$recentActivities[i];
      final lOther$recentActivities$entry = lOther$recentActivities[i];
      if (l$recentActivities$entry != lOther$recentActivities$entry) {
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

extension UtilityExtension$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs
    on Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs {
  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs<
          Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs>
      get copyWith =>
          CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs<
    TRes> {
  factory CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs(
    Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs instance,
    TRes Function(
            Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs)
        then,
  ) = _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs;

  factory CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs;

  TRes call({
    int? count,
    List<String>? recentActivities,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs<
        TRes>
    implements
        CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs<
            TRes> {
  _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs(
    this._instance,
    this._then,
  );

  final Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs
      _instance;

  final TRes Function(
      Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? recentActivities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        recentActivities:
            recentActivities == _undefined || recentActivities == null
                ? _instance.recentActivities
                : (recentActivities as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs<
        TRes>
    implements
        CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs<
            TRes> {
  _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$newJobs(
      this._res);

  TRes _res;

  call({
    int? count,
    List<String>? recentActivities,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs {
  Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs({
    required this.count,
    required this.recentActivities,
    this.$__typename = 'JobSummary',
  });

  factory Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$recentActivities = json['recentActivities'];
    final l$$__typename = json['__typename'];
    return Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs(
      count: (l$count as int),
      recentActivities: (l$recentActivities as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final List<String> recentActivities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$recentActivities = recentActivities;
    _resultData['recentActivities'] = l$recentActivities.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$recentActivities = recentActivities;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      Object.hashAll(l$recentActivities.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$recentActivities = recentActivities;
    final lOther$recentActivities = other.recentActivities;
    if (l$recentActivities.length != lOther$recentActivities.length) {
      return false;
    }
    for (int i = 0; i < l$recentActivities.length; i++) {
      final l$recentActivities$entry = l$recentActivities[i];
      final lOther$recentActivities$entry = lOther$recentActivities[i];
      if (l$recentActivities$entry != lOther$recentActivities$entry) {
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

extension UtilityExtension$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs
    on Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs {
  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs<
          Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs>
      get copyWith =>
          CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs<
    TRes> {
  factory CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs(
    Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs
        instance,
    TRes Function(
            Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs)
        then,
  ) = _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs;

  factory CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs;

  TRes call({
    int? count,
    List<String>? recentActivities,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs<
        TRes>
    implements
        CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs<
            TRes> {
  _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs(
    this._instance,
    this._then,
  );

  final Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs
      _instance;

  final TRes Function(
          Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? recentActivities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        recentActivities:
            recentActivities == _undefined || recentActivities == null
                ? _instance.recentActivities
                : (recentActivities as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs<
        TRes>
    implements
        CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs<
            TRes> {
  _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$inProgressJobs(
      this._res);

  TRes _res;

  call({
    int? count,
    List<String>? recentActivities,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs {
  Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs({
    required this.count,
    required this.recentActivities,
    this.$__typename = 'JobSummary',
  });

  factory Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$recentActivities = json['recentActivities'];
    final l$$__typename = json['__typename'];
    return Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs(
      count: (l$count as int),
      recentActivities: (l$recentActivities as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final List<String> recentActivities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$recentActivities = recentActivities;
    _resultData['recentActivities'] = l$recentActivities.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$recentActivities = recentActivities;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      Object.hashAll(l$recentActivities.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$recentActivities = recentActivities;
    final lOther$recentActivities = other.recentActivities;
    if (l$recentActivities.length != lOther$recentActivities.length) {
      return false;
    }
    for (int i = 0; i < l$recentActivities.length; i++) {
      final l$recentActivities$entry = l$recentActivities[i];
      final lOther$recentActivities$entry = lOther$recentActivities[i];
      if (l$recentActivities$entry != lOther$recentActivities$entry) {
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

extension UtilityExtension$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs
    on Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs {
  CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs<
          Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs>
      get copyWith =>
          CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs<
    TRes> {
  factory CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs(
    Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs
        instance,
    TRes Function(
            Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs)
        then,
  ) = _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs;

  factory CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs;

  TRes call({
    int? count,
    List<String>? recentActivities,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs<
        TRes>
    implements
        CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs<
            TRes> {
  _CopyWithImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs(
    this._instance,
    this._then,
  );

  final Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs
      _instance;

  final TRes Function(
          Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? recentActivities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        recentActivities:
            recentActivities == _undefined || recentActivities == null
                ? _instance.recentActivities
                : (recentActivities as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs<
        TRes>
    implements
        CopyWith$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs<
            TRes> {
  _CopyWithStubImpl$Query$GetJobsCount$jobFormsForYard$countsOnly$yardJobs$completedJobs(
      this._res);

  TRes _res;

  call({
    int? count,
    List<String>? recentActivities,
    String? $__typename,
  }) =>
      _res;
}
