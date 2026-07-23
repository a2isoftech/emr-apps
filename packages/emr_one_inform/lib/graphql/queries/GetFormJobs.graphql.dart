import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetFormJobs {
  factory Variables$Query$GetFormJobs(
          {required Input$FormJobFilterInput filter}) =>
      Variables$Query$GetFormJobs._({
        r'filter': filter,
      });

  Variables$Query$GetFormJobs._(this._$data);

  factory Variables$Query$GetFormJobs.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$filter = data['filter'];
    result$data['filter'] =
        Input$FormJobFilterInput.fromJson((l$filter as Map<String, dynamic>));
    return Variables$Query$GetFormJobs._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$FormJobFilterInput get filter =>
      (_$data['filter'] as Input$FormJobFilterInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$filter = filter;
    result$data['filter'] = l$filter.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$GetFormJobs<Variables$Query$GetFormJobs>
      get copyWith => CopyWith$Variables$Query$GetFormJobs(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetFormJobs) ||
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

abstract class CopyWith$Variables$Query$GetFormJobs<TRes> {
  factory CopyWith$Variables$Query$GetFormJobs(
    Variables$Query$GetFormJobs instance,
    TRes Function(Variables$Query$GetFormJobs) then,
  ) = _CopyWithImpl$Variables$Query$GetFormJobs;

  factory CopyWith$Variables$Query$GetFormJobs.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetFormJobs;

  TRes call({Input$FormJobFilterInput? filter});
}

class _CopyWithImpl$Variables$Query$GetFormJobs<TRes>
    implements CopyWith$Variables$Query$GetFormJobs<TRes> {
  _CopyWithImpl$Variables$Query$GetFormJobs(
    this._instance,
    this._then,
  );

  final Variables$Query$GetFormJobs _instance;

  final TRes Function(Variables$Query$GetFormJobs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined}) =>
      _then(Variables$Query$GetFormJobs._({
        ..._instance._$data,
        if (filter != _undefined && filter != null)
          'filter': (filter as Input$FormJobFilterInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetFormJobs<TRes>
    implements CopyWith$Variables$Query$GetFormJobs<TRes> {
  _CopyWithStubImpl$Variables$Query$GetFormJobs(this._res);

  TRes _res;

  call({Input$FormJobFilterInput? filter}) => _res;
}

class Query$GetFormJobs {
  Query$GetFormJobs({
    required this.formJobs,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetFormJobs.fromJson(Map<String, dynamic> json) {
    final l$formJobs = json['formJobs'];
    final l$$__typename = json['__typename'];
    return Query$GetFormJobs(
      formJobs: (l$formJobs as List<dynamic>)
          .map((e) =>
              Query$GetFormJobs$formJobs.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetFormJobs$formJobs> formJobs;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$formJobs = formJobs;
    _resultData['formJobs'] = l$formJobs.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$formJobs = formJobs;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$formJobs.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFormJobs) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$formJobs = formJobs;
    final lOther$formJobs = other.formJobs;
    if (l$formJobs.length != lOther$formJobs.length) {
      return false;
    }
    for (int i = 0; i < l$formJobs.length; i++) {
      final l$formJobs$entry = l$formJobs[i];
      final lOther$formJobs$entry = lOther$formJobs[i];
      if (l$formJobs$entry != lOther$formJobs$entry) {
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

extension UtilityExtension$Query$GetFormJobs on Query$GetFormJobs {
  CopyWith$Query$GetFormJobs<Query$GetFormJobs> get copyWith =>
      CopyWith$Query$GetFormJobs(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetFormJobs<TRes> {
  factory CopyWith$Query$GetFormJobs(
    Query$GetFormJobs instance,
    TRes Function(Query$GetFormJobs) then,
  ) = _CopyWithImpl$Query$GetFormJobs;

  factory CopyWith$Query$GetFormJobs.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFormJobs;

  TRes call({
    List<Query$GetFormJobs$formJobs>? formJobs,
    String? $__typename,
  });
  TRes formJobs(
      Iterable<Query$GetFormJobs$formJobs> Function(
              Iterable<
                  CopyWith$Query$GetFormJobs$formJobs<
                      Query$GetFormJobs$formJobs>>)
          _fn);
}

class _CopyWithImpl$Query$GetFormJobs<TRes>
    implements CopyWith$Query$GetFormJobs<TRes> {
  _CopyWithImpl$Query$GetFormJobs(
    this._instance,
    this._then,
  );

  final Query$GetFormJobs _instance;

  final TRes Function(Query$GetFormJobs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? formJobs = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFormJobs(
        formJobs: formJobs == _undefined || formJobs == null
            ? _instance.formJobs
            : (formJobs as List<Query$GetFormJobs$formJobs>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes formJobs(
          Iterable<Query$GetFormJobs$formJobs> Function(
                  Iterable<
                      CopyWith$Query$GetFormJobs$formJobs<
                          Query$GetFormJobs$formJobs>>)
              _fn) =>
      call(
          formJobs: _fn(
              _instance.formJobs.map((e) => CopyWith$Query$GetFormJobs$formJobs(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetFormJobs<TRes>
    implements CopyWith$Query$GetFormJobs<TRes> {
  _CopyWithStubImpl$Query$GetFormJobs(this._res);

  TRes _res;

  call({
    List<Query$GetFormJobs$formJobs>? formJobs,
    String? $__typename,
  }) =>
      _res;

  formJobs(_fn) => _res;
}

const documentNodeQueryGetFormJobs = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetFormJobs'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'FormJobFilterInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'formJobs'),
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
            name: NameNode(value: 'jobInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'template'),
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
                    name: NameNode(value: 'title'),
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
                    name: NameNode(value: 'isDigitalSignatureRequired'),
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
                    name: NameNode(value: 'templateId'),
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
                name: NameNode(value: 'createdDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'workOrderId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'asset'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'assetCode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
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
                    name: NameNode(value: 'depotNo'),
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
                name: NameNode(value: 'jobType'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'jobTypeVariant'),
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
                name: NameNode(value: 'uuid'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'referenceType'),
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
                name: NameNode(value: 'assignedTo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'jobTrade'),
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
                name: NameNode(value: 'assignedToTeamId'),
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
                name: NameNode(value: 'status'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'expectedStartDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'expectedEndDate'),
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
                name: NameNode(value: 'depotNo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'notes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'jobPriority'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'scheduleItemType'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'instanceInfo'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'createdDate'),
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
                name: NameNode(value: 'startedBy'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'startedDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'submittedBy'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'submittedDate'),
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

class Query$GetFormJobs$formJobs {
  Query$GetFormJobs$formJobs({
    required this.jobInfo,
    this.instanceInfo,
    this.$__typename = 'FormJob',
  });

  factory Query$GetFormJobs$formJobs.fromJson(Map<String, dynamic> json) {
    final l$jobInfo = json['jobInfo'];
    final l$instanceInfo = json['instanceInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetFormJobs$formJobs(
      jobInfo: Query$GetFormJobs$formJobs$jobInfo.fromJson(
          (l$jobInfo as Map<String, dynamic>)),
      instanceInfo: l$instanceInfo == null
          ? null
          : Query$GetFormJobs$formJobs$instanceInfo.fromJson(
              (l$instanceInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetFormJobs$formJobs$jobInfo jobInfo;

  final Query$GetFormJobs$formJobs$instanceInfo? instanceInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$jobInfo = jobInfo;
    _resultData['jobInfo'] = l$jobInfo.toJson();
    final l$instanceInfo = instanceInfo;
    _resultData['instanceInfo'] = l$instanceInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$jobInfo = jobInfo;
    final l$instanceInfo = instanceInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$jobInfo,
      l$instanceInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFormJobs$formJobs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$jobInfo = jobInfo;
    final lOther$jobInfo = other.jobInfo;
    if (l$jobInfo != lOther$jobInfo) {
      return false;
    }
    final l$instanceInfo = instanceInfo;
    final lOther$instanceInfo = other.instanceInfo;
    if (l$instanceInfo != lOther$instanceInfo) {
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

extension UtilityExtension$Query$GetFormJobs$formJobs
    on Query$GetFormJobs$formJobs {
  CopyWith$Query$GetFormJobs$formJobs<Query$GetFormJobs$formJobs>
      get copyWith => CopyWith$Query$GetFormJobs$formJobs(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFormJobs$formJobs<TRes> {
  factory CopyWith$Query$GetFormJobs$formJobs(
    Query$GetFormJobs$formJobs instance,
    TRes Function(Query$GetFormJobs$formJobs) then,
  ) = _CopyWithImpl$Query$GetFormJobs$formJobs;

  factory CopyWith$Query$GetFormJobs$formJobs.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFormJobs$formJobs;

  TRes call({
    Query$GetFormJobs$formJobs$jobInfo? jobInfo,
    Query$GetFormJobs$formJobs$instanceInfo? instanceInfo,
    String? $__typename,
  });
  CopyWith$Query$GetFormJobs$formJobs$jobInfo<TRes> get jobInfo;
  CopyWith$Query$GetFormJobs$formJobs$instanceInfo<TRes> get instanceInfo;
}

class _CopyWithImpl$Query$GetFormJobs$formJobs<TRes>
    implements CopyWith$Query$GetFormJobs$formJobs<TRes> {
  _CopyWithImpl$Query$GetFormJobs$formJobs(
    this._instance,
    this._then,
  );

  final Query$GetFormJobs$formJobs _instance;

  final TRes Function(Query$GetFormJobs$formJobs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? jobInfo = _undefined,
    Object? instanceInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFormJobs$formJobs(
        jobInfo: jobInfo == _undefined || jobInfo == null
            ? _instance.jobInfo
            : (jobInfo as Query$GetFormJobs$formJobs$jobInfo),
        instanceInfo: instanceInfo == _undefined
            ? _instance.instanceInfo
            : (instanceInfo as Query$GetFormJobs$formJobs$instanceInfo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetFormJobs$formJobs$jobInfo<TRes> get jobInfo {
    final local$jobInfo = _instance.jobInfo;
    return CopyWith$Query$GetFormJobs$formJobs$jobInfo(
        local$jobInfo, (e) => call(jobInfo: e));
  }

  CopyWith$Query$GetFormJobs$formJobs$instanceInfo<TRes> get instanceInfo {
    final local$instanceInfo = _instance.instanceInfo;
    return local$instanceInfo == null
        ? CopyWith$Query$GetFormJobs$formJobs$instanceInfo.stub(
            _then(_instance))
        : CopyWith$Query$GetFormJobs$formJobs$instanceInfo(
            local$instanceInfo, (e) => call(instanceInfo: e));
  }
}

class _CopyWithStubImpl$Query$GetFormJobs$formJobs<TRes>
    implements CopyWith$Query$GetFormJobs$formJobs<TRes> {
  _CopyWithStubImpl$Query$GetFormJobs$formJobs(this._res);

  TRes _res;

  call({
    Query$GetFormJobs$formJobs$jobInfo? jobInfo,
    Query$GetFormJobs$formJobs$instanceInfo? instanceInfo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetFormJobs$formJobs$jobInfo<TRes> get jobInfo =>
      CopyWith$Query$GetFormJobs$formJobs$jobInfo.stub(_res);

  CopyWith$Query$GetFormJobs$formJobs$instanceInfo<TRes> get instanceInfo =>
      CopyWith$Query$GetFormJobs$formJobs$instanceInfo.stub(_res);
}

class Query$GetFormJobs$formJobs$jobInfo {
  Query$GetFormJobs$formJobs$jobInfo({
    this.template,
    required this.createdDate,
    required this.workOrderId,
    this.asset,
    this.jobType,
    this.jobTypeVariant,
    this.referenceId,
    required this.uuid,
    this.referenceType,
    required this.workOrderDescription,
    this.assignedTo,
    this.jobTrade,
    this.assignedToTeam,
    this.assignedToTeamId,
    required this.templateId,
    required this.status,
    required this.expectedStartDate,
    this.expectedEndDate,
    required this.yardCode,
    this.depotNo,
    this.notes,
    required this.jobPriority,
    required this.scheduleItemType,
    required this.isDigitalSignatureRequired,
    this.$__typename = 'JobInfo',
  });

  factory Query$GetFormJobs$formJobs$jobInfo.fromJson(
      Map<String, dynamic> json) {
    final l$template = json['template'];
    final l$createdDate = json['createdDate'];
    final l$workOrderId = json['workOrderId'];
    final l$asset = json['asset'];
    final l$jobType = json['jobType'];
    final l$jobTypeVariant = json['jobTypeVariant'];
    final l$referenceId = json['referenceId'];
    final l$uuid = json['uuid'];
    final l$referenceType = json['referenceType'];
    final l$workOrderDescription = json['workOrderDescription'];
    final l$assignedTo = json['assignedTo'];
    final l$jobTrade = json['jobTrade'];
    final l$assignedToTeam = json['assignedToTeam'];
    final l$assignedToTeamId = json['assignedToTeamId'];
    final l$templateId = json['templateId'];
    final l$status = json['status'];
    final l$expectedStartDate = json['expectedStartDate'];
    final l$expectedEndDate = json['expectedEndDate'];
    final l$yardCode = json['yardCode'];
    final l$depotNo = json['depotNo'];
    final l$notes = json['notes'];
    final l$jobPriority = json['jobPriority'];
    final l$scheduleItemType = json['scheduleItemType'];
    final l$isDigitalSignatureRequired = json['isDigitalSignatureRequired'];
    final l$$__typename = json['__typename'];
    return Query$GetFormJobs$formJobs$jobInfo(
      template: l$template == null
          ? null
          : Query$GetFormJobs$formJobs$jobInfo$template.fromJson(
              (l$template as Map<String, dynamic>)),
      createdDate: (l$createdDate as String),
      workOrderId: (l$workOrderId as String),
      asset: l$asset == null
          ? null
          : Query$GetFormJobs$formJobs$jobInfo$asset.fromJson(
              (l$asset as Map<String, dynamic>)),
      jobType: (l$jobType as String?),
      jobTypeVariant: (l$jobTypeVariant as String?),
      referenceId: (l$referenceId as String?),
      uuid: (l$uuid as String),
      referenceType: (l$referenceType as String?),
      workOrderDescription: (l$workOrderDescription as String),
      assignedTo: (l$assignedTo as String?),
      jobTrade: (l$jobTrade as String?),
      assignedToTeam: (l$assignedToTeam as String?),
      assignedToTeamId: (l$assignedToTeamId as String?),
      templateId: (l$templateId as int),
      status: fromJson$Enum$ScheduledItemStatus((l$status as String)),
      expectedStartDate: (l$expectedStartDate as String),
      expectedEndDate: (l$expectedEndDate as String?),
      yardCode: (l$yardCode as String),
      depotNo: (l$depotNo as String?),
      notes: (l$notes as String?),
      jobPriority: (l$jobPriority as String),
      scheduleItemType: (l$scheduleItemType as String),
      isDigitalSignatureRequired: (l$isDigitalSignatureRequired as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetFormJobs$formJobs$jobInfo$template? template;

  final String createdDate;

  final String workOrderId;

  final Query$GetFormJobs$formJobs$jobInfo$asset? asset;

  final String? jobType;

  final String? jobTypeVariant;

  final String? referenceId;

  final String uuid;

  final String? referenceType;

  final String workOrderDescription;

  final String? assignedTo;

  final String? jobTrade;

  final String? assignedToTeam;

  final String? assignedToTeamId;

  final int templateId;

  final Enum$ScheduledItemStatus status;

  final String expectedStartDate;

  final String? expectedEndDate;

  final String yardCode;

  final String? depotNo;

  final String? notes;

  final String jobPriority;

  final String scheduleItemType;

  final bool isDigitalSignatureRequired;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$template = template;
    _resultData['template'] = l$template?.toJson();
    final l$createdDate = createdDate;
    _resultData['createdDate'] = l$createdDate;
    final l$workOrderId = workOrderId;
    _resultData['workOrderId'] = l$workOrderId;
    final l$asset = asset;
    _resultData['asset'] = l$asset?.toJson();
    final l$jobType = jobType;
    _resultData['jobType'] = l$jobType;
    final l$jobTypeVariant = jobTypeVariant;
    _resultData['jobTypeVariant'] = l$jobTypeVariant;
    final l$referenceId = referenceId;
    _resultData['referenceId'] = l$referenceId;
    final l$uuid = uuid;
    _resultData['uuid'] = l$uuid;
    final l$referenceType = referenceType;
    _resultData['referenceType'] = l$referenceType;
    final l$workOrderDescription = workOrderDescription;
    _resultData['workOrderDescription'] = l$workOrderDescription;
    final l$assignedTo = assignedTo;
    _resultData['assignedTo'] = l$assignedTo;
    final l$jobTrade = jobTrade;
    _resultData['jobTrade'] = l$jobTrade;
    final l$assignedToTeam = assignedToTeam;
    _resultData['assignedToTeam'] = l$assignedToTeam;
    final l$assignedToTeamId = assignedToTeamId;
    _resultData['assignedToTeamId'] = l$assignedToTeamId;
    final l$templateId = templateId;
    _resultData['templateId'] = l$templateId;
    final l$status = status;
    _resultData['status'] = toJson$Enum$ScheduledItemStatus(l$status);
    final l$expectedStartDate = expectedStartDate;
    _resultData['expectedStartDate'] = l$expectedStartDate;
    final l$expectedEndDate = expectedEndDate;
    _resultData['expectedEndDate'] = l$expectedEndDate;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$jobPriority = jobPriority;
    _resultData['jobPriority'] = l$jobPriority;
    final l$scheduleItemType = scheduleItemType;
    _resultData['scheduleItemType'] = l$scheduleItemType;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    _resultData['isDigitalSignatureRequired'] = l$isDigitalSignatureRequired;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$template = template;
    final l$createdDate = createdDate;
    final l$workOrderId = workOrderId;
    final l$asset = asset;
    final l$jobType = jobType;
    final l$jobTypeVariant = jobTypeVariant;
    final l$referenceId = referenceId;
    final l$uuid = uuid;
    final l$referenceType = referenceType;
    final l$workOrderDescription = workOrderDescription;
    final l$assignedTo = assignedTo;
    final l$jobTrade = jobTrade;
    final l$assignedToTeam = assignedToTeam;
    final l$assignedToTeamId = assignedToTeamId;
    final l$templateId = templateId;
    final l$status = status;
    final l$expectedStartDate = expectedStartDate;
    final l$expectedEndDate = expectedEndDate;
    final l$yardCode = yardCode;
    final l$depotNo = depotNo;
    final l$notes = notes;
    final l$jobPriority = jobPriority;
    final l$scheduleItemType = scheduleItemType;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$template,
      l$createdDate,
      l$workOrderId,
      l$asset,
      l$jobType,
      l$jobTypeVariant,
      l$referenceId,
      l$uuid,
      l$referenceType,
      l$workOrderDescription,
      l$assignedTo,
      l$jobTrade,
      l$assignedToTeam,
      l$assignedToTeamId,
      l$templateId,
      l$status,
      l$expectedStartDate,
      l$expectedEndDate,
      l$yardCode,
      l$depotNo,
      l$notes,
      l$jobPriority,
      l$scheduleItemType,
      l$isDigitalSignatureRequired,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFormJobs$formJobs$jobInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$template = template;
    final lOther$template = other.template;
    if (l$template != lOther$template) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (l$createdDate != lOther$createdDate) {
      return false;
    }
    final l$workOrderId = workOrderId;
    final lOther$workOrderId = other.workOrderId;
    if (l$workOrderId != lOther$workOrderId) {
      return false;
    }
    final l$asset = asset;
    final lOther$asset = other.asset;
    if (l$asset != lOther$asset) {
      return false;
    }
    final l$jobType = jobType;
    final lOther$jobType = other.jobType;
    if (l$jobType != lOther$jobType) {
      return false;
    }
    final l$jobTypeVariant = jobTypeVariant;
    final lOther$jobTypeVariant = other.jobTypeVariant;
    if (l$jobTypeVariant != lOther$jobTypeVariant) {
      return false;
    }
    final l$referenceId = referenceId;
    final lOther$referenceId = other.referenceId;
    if (l$referenceId != lOther$referenceId) {
      return false;
    }
    final l$uuid = uuid;
    final lOther$uuid = other.uuid;
    if (l$uuid != lOther$uuid) {
      return false;
    }
    final l$referenceType = referenceType;
    final lOther$referenceType = other.referenceType;
    if (l$referenceType != lOther$referenceType) {
      return false;
    }
    final l$workOrderDescription = workOrderDescription;
    final lOther$workOrderDescription = other.workOrderDescription;
    if (l$workOrderDescription != lOther$workOrderDescription) {
      return false;
    }
    final l$assignedTo = assignedTo;
    final lOther$assignedTo = other.assignedTo;
    if (l$assignedTo != lOther$assignedTo) {
      return false;
    }
    final l$jobTrade = jobTrade;
    final lOther$jobTrade = other.jobTrade;
    if (l$jobTrade != lOther$jobTrade) {
      return false;
    }
    final l$assignedToTeam = assignedToTeam;
    final lOther$assignedToTeam = other.assignedToTeam;
    if (l$assignedToTeam != lOther$assignedToTeam) {
      return false;
    }
    final l$assignedToTeamId = assignedToTeamId;
    final lOther$assignedToTeamId = other.assignedToTeamId;
    if (l$assignedToTeamId != lOther$assignedToTeamId) {
      return false;
    }
    final l$templateId = templateId;
    final lOther$templateId = other.templateId;
    if (l$templateId != lOther$templateId) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$expectedStartDate = expectedStartDate;
    final lOther$expectedStartDate = other.expectedStartDate;
    if (l$expectedStartDate != lOther$expectedStartDate) {
      return false;
    }
    final l$expectedEndDate = expectedEndDate;
    final lOther$expectedEndDate = other.expectedEndDate;
    if (l$expectedEndDate != lOther$expectedEndDate) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$jobPriority = jobPriority;
    final lOther$jobPriority = other.jobPriority;
    if (l$jobPriority != lOther$jobPriority) {
      return false;
    }
    final l$scheduleItemType = scheduleItemType;
    final lOther$scheduleItemType = other.scheduleItemType;
    if (l$scheduleItemType != lOther$scheduleItemType) {
      return false;
    }
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final lOther$isDigitalSignatureRequired = other.isDigitalSignatureRequired;
    if (l$isDigitalSignatureRequired != lOther$isDigitalSignatureRequired) {
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

extension UtilityExtension$Query$GetFormJobs$formJobs$jobInfo
    on Query$GetFormJobs$formJobs$jobInfo {
  CopyWith$Query$GetFormJobs$formJobs$jobInfo<
          Query$GetFormJobs$formJobs$jobInfo>
      get copyWith => CopyWith$Query$GetFormJobs$formJobs$jobInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFormJobs$formJobs$jobInfo<TRes> {
  factory CopyWith$Query$GetFormJobs$formJobs$jobInfo(
    Query$GetFormJobs$formJobs$jobInfo instance,
    TRes Function(Query$GetFormJobs$formJobs$jobInfo) then,
  ) = _CopyWithImpl$Query$GetFormJobs$formJobs$jobInfo;

  factory CopyWith$Query$GetFormJobs$formJobs$jobInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFormJobs$formJobs$jobInfo;

  TRes call({
    Query$GetFormJobs$formJobs$jobInfo$template? template,
    String? createdDate,
    String? workOrderId,
    Query$GetFormJobs$formJobs$jobInfo$asset? asset,
    String? jobType,
    String? jobTypeVariant,
    String? referenceId,
    String? uuid,
    String? referenceType,
    String? workOrderDescription,
    String? assignedTo,
    String? jobTrade,
    String? assignedToTeam,
    String? assignedToTeamId,
    int? templateId,
    Enum$ScheduledItemStatus? status,
    String? expectedStartDate,
    String? expectedEndDate,
    String? yardCode,
    String? depotNo,
    String? notes,
    String? jobPriority,
    String? scheduleItemType,
    bool? isDigitalSignatureRequired,
    String? $__typename,
  });
  CopyWith$Query$GetFormJobs$formJobs$jobInfo$template<TRes> get template;
  CopyWith$Query$GetFormJobs$formJobs$jobInfo$asset<TRes> get asset;
}

class _CopyWithImpl$Query$GetFormJobs$formJobs$jobInfo<TRes>
    implements CopyWith$Query$GetFormJobs$formJobs$jobInfo<TRes> {
  _CopyWithImpl$Query$GetFormJobs$formJobs$jobInfo(
    this._instance,
    this._then,
  );

  final Query$GetFormJobs$formJobs$jobInfo _instance;

  final TRes Function(Query$GetFormJobs$formJobs$jobInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? template = _undefined,
    Object? createdDate = _undefined,
    Object? workOrderId = _undefined,
    Object? asset = _undefined,
    Object? jobType = _undefined,
    Object? jobTypeVariant = _undefined,
    Object? referenceId = _undefined,
    Object? uuid = _undefined,
    Object? referenceType = _undefined,
    Object? workOrderDescription = _undefined,
    Object? assignedTo = _undefined,
    Object? jobTrade = _undefined,
    Object? assignedToTeam = _undefined,
    Object? assignedToTeamId = _undefined,
    Object? templateId = _undefined,
    Object? status = _undefined,
    Object? expectedStartDate = _undefined,
    Object? expectedEndDate = _undefined,
    Object? yardCode = _undefined,
    Object? depotNo = _undefined,
    Object? notes = _undefined,
    Object? jobPriority = _undefined,
    Object? scheduleItemType = _undefined,
    Object? isDigitalSignatureRequired = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFormJobs$formJobs$jobInfo(
        template: template == _undefined
            ? _instance.template
            : (template as Query$GetFormJobs$formJobs$jobInfo$template?),
        createdDate: createdDate == _undefined || createdDate == null
            ? _instance.createdDate
            : (createdDate as String),
        workOrderId: workOrderId == _undefined || workOrderId == null
            ? _instance.workOrderId
            : (workOrderId as String),
        asset: asset == _undefined
            ? _instance.asset
            : (asset as Query$GetFormJobs$formJobs$jobInfo$asset?),
        jobType:
            jobType == _undefined ? _instance.jobType : (jobType as String?),
        jobTypeVariant: jobTypeVariant == _undefined
            ? _instance.jobTypeVariant
            : (jobTypeVariant as String?),
        referenceId: referenceId == _undefined
            ? _instance.referenceId
            : (referenceId as String?),
        uuid: uuid == _undefined || uuid == null
            ? _instance.uuid
            : (uuid as String),
        referenceType: referenceType == _undefined
            ? _instance.referenceType
            : (referenceType as String?),
        workOrderDescription:
            workOrderDescription == _undefined || workOrderDescription == null
                ? _instance.workOrderDescription
                : (workOrderDescription as String),
        assignedTo: assignedTo == _undefined
            ? _instance.assignedTo
            : (assignedTo as String?),
        jobTrade:
            jobTrade == _undefined ? _instance.jobTrade : (jobTrade as String?),
        assignedToTeam: assignedToTeam == _undefined
            ? _instance.assignedToTeam
            : (assignedToTeam as String?),
        assignedToTeamId: assignedToTeamId == _undefined
            ? _instance.assignedToTeamId
            : (assignedToTeamId as String?),
        templateId: templateId == _undefined || templateId == null
            ? _instance.templateId
            : (templateId as int),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$ScheduledItemStatus),
        expectedStartDate:
            expectedStartDate == _undefined || expectedStartDate == null
                ? _instance.expectedStartDate
                : (expectedStartDate as String),
        expectedEndDate: expectedEndDate == _undefined
            ? _instance.expectedEndDate
            : (expectedEndDate as String?),
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        depotNo:
            depotNo == _undefined ? _instance.depotNo : (depotNo as String?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        jobPriority: jobPriority == _undefined || jobPriority == null
            ? _instance.jobPriority
            : (jobPriority as String),
        scheduleItemType:
            scheduleItemType == _undefined || scheduleItemType == null
                ? _instance.scheduleItemType
                : (scheduleItemType as String),
        isDigitalSignatureRequired: isDigitalSignatureRequired == _undefined ||
                isDigitalSignatureRequired == null
            ? _instance.isDigitalSignatureRequired
            : (isDigitalSignatureRequired as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetFormJobs$formJobs$jobInfo$template<TRes> get template {
    final local$template = _instance.template;
    return local$template == null
        ? CopyWith$Query$GetFormJobs$formJobs$jobInfo$template.stub(
            _then(_instance))
        : CopyWith$Query$GetFormJobs$formJobs$jobInfo$template(
            local$template, (e) => call(template: e));
  }

  CopyWith$Query$GetFormJobs$formJobs$jobInfo$asset<TRes> get asset {
    final local$asset = _instance.asset;
    return local$asset == null
        ? CopyWith$Query$GetFormJobs$formJobs$jobInfo$asset.stub(
            _then(_instance))
        : CopyWith$Query$GetFormJobs$formJobs$jobInfo$asset(
            local$asset, (e) => call(asset: e));
  }
}

class _CopyWithStubImpl$Query$GetFormJobs$formJobs$jobInfo<TRes>
    implements CopyWith$Query$GetFormJobs$formJobs$jobInfo<TRes> {
  _CopyWithStubImpl$Query$GetFormJobs$formJobs$jobInfo(this._res);

  TRes _res;

  call({
    Query$GetFormJobs$formJobs$jobInfo$template? template,
    String? createdDate,
    String? workOrderId,
    Query$GetFormJobs$formJobs$jobInfo$asset? asset,
    String? jobType,
    String? jobTypeVariant,
    String? referenceId,
    String? uuid,
    String? referenceType,
    String? workOrderDescription,
    String? assignedTo,
    String? jobTrade,
    String? assignedToTeam,
    String? assignedToTeamId,
    int? templateId,
    Enum$ScheduledItemStatus? status,
    String? expectedStartDate,
    String? expectedEndDate,
    String? yardCode,
    String? depotNo,
    String? notes,
    String? jobPriority,
    String? scheduleItemType,
    bool? isDigitalSignatureRequired,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetFormJobs$formJobs$jobInfo$template<TRes> get template =>
      CopyWith$Query$GetFormJobs$formJobs$jobInfo$template.stub(_res);

  CopyWith$Query$GetFormJobs$formJobs$jobInfo$asset<TRes> get asset =>
      CopyWith$Query$GetFormJobs$formJobs$jobInfo$asset.stub(_res);
}

class Query$GetFormJobs$formJobs$jobInfo$template {
  Query$GetFormJobs$formJobs$jobInfo$template({
    required this.id,
    this.title,
    this.referenceId,
    required this.isDigitalSignatureRequired,
    this.emailIds,
    this.templateId,
    this.$__typename = 'FormTemplate',
  });

  factory Query$GetFormJobs$formJobs$jobInfo$template.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$referenceId = json['referenceId'];
    final l$isDigitalSignatureRequired = json['isDigitalSignatureRequired'];
    final l$emailIds = json['emailIds'];
    final l$templateId = json['templateId'];
    final l$$__typename = json['__typename'];
    return Query$GetFormJobs$formJobs$jobInfo$template(
      id: (l$id as String),
      title: (l$title as String?),
      referenceId: (l$referenceId as String?),
      isDigitalSignatureRequired: (l$isDigitalSignatureRequired as bool),
      emailIds: (l$emailIds as String?),
      templateId: (l$templateId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? title;

  final String? referenceId;

  final bool isDigitalSignatureRequired;

  final String? emailIds;

  final String? templateId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$referenceId = referenceId;
    _resultData['referenceId'] = l$referenceId;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    _resultData['isDigitalSignatureRequired'] = l$isDigitalSignatureRequired;
    final l$emailIds = emailIds;
    _resultData['emailIds'] = l$emailIds;
    final l$templateId = templateId;
    _resultData['templateId'] = l$templateId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$referenceId = referenceId;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final l$emailIds = emailIds;
    final l$templateId = templateId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$referenceId,
      l$isDigitalSignatureRequired,
      l$emailIds,
      l$templateId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFormJobs$formJobs$jobInfo$template) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$referenceId = referenceId;
    final lOther$referenceId = other.referenceId;
    if (l$referenceId != lOther$referenceId) {
      return false;
    }
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final lOther$isDigitalSignatureRequired = other.isDigitalSignatureRequired;
    if (l$isDigitalSignatureRequired != lOther$isDigitalSignatureRequired) {
      return false;
    }
    final l$emailIds = emailIds;
    final lOther$emailIds = other.emailIds;
    if (l$emailIds != lOther$emailIds) {
      return false;
    }
    final l$templateId = templateId;
    final lOther$templateId = other.templateId;
    if (l$templateId != lOther$templateId) {
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

extension UtilityExtension$Query$GetFormJobs$formJobs$jobInfo$template
    on Query$GetFormJobs$formJobs$jobInfo$template {
  CopyWith$Query$GetFormJobs$formJobs$jobInfo$template<
          Query$GetFormJobs$formJobs$jobInfo$template>
      get copyWith => CopyWith$Query$GetFormJobs$formJobs$jobInfo$template(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFormJobs$formJobs$jobInfo$template<TRes> {
  factory CopyWith$Query$GetFormJobs$formJobs$jobInfo$template(
    Query$GetFormJobs$formJobs$jobInfo$template instance,
    TRes Function(Query$GetFormJobs$formJobs$jobInfo$template) then,
  ) = _CopyWithImpl$Query$GetFormJobs$formJobs$jobInfo$template;

  factory CopyWith$Query$GetFormJobs$formJobs$jobInfo$template.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFormJobs$formJobs$jobInfo$template;

  TRes call({
    String? id,
    String? title,
    String? referenceId,
    bool? isDigitalSignatureRequired,
    String? emailIds,
    String? templateId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetFormJobs$formJobs$jobInfo$template<TRes>
    implements CopyWith$Query$GetFormJobs$formJobs$jobInfo$template<TRes> {
  _CopyWithImpl$Query$GetFormJobs$formJobs$jobInfo$template(
    this._instance,
    this._then,
  );

  final Query$GetFormJobs$formJobs$jobInfo$template _instance;

  final TRes Function(Query$GetFormJobs$formJobs$jobInfo$template) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? referenceId = _undefined,
    Object? isDigitalSignatureRequired = _undefined,
    Object? emailIds = _undefined,
    Object? templateId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFormJobs$formJobs$jobInfo$template(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined ? _instance.title : (title as String?),
        referenceId: referenceId == _undefined
            ? _instance.referenceId
            : (referenceId as String?),
        isDigitalSignatureRequired: isDigitalSignatureRequired == _undefined ||
                isDigitalSignatureRequired == null
            ? _instance.isDigitalSignatureRequired
            : (isDigitalSignatureRequired as bool),
        emailIds:
            emailIds == _undefined ? _instance.emailIds : (emailIds as String?),
        templateId: templateId == _undefined
            ? _instance.templateId
            : (templateId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetFormJobs$formJobs$jobInfo$template<TRes>
    implements CopyWith$Query$GetFormJobs$formJobs$jobInfo$template<TRes> {
  _CopyWithStubImpl$Query$GetFormJobs$formJobs$jobInfo$template(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? referenceId,
    bool? isDigitalSignatureRequired,
    String? emailIds,
    String? templateId,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetFormJobs$formJobs$jobInfo$asset {
  Query$GetFormJobs$formJobs$jobInfo$asset({
    required this.assetCode,
    this.name,
    required this.yardCode,
    required this.depotNo,
    this.$__typename = 'Asset',
  });

  factory Query$GetFormJobs$formJobs$jobInfo$asset.fromJson(
      Map<String, dynamic> json) {
    final l$assetCode = json['assetCode'];
    final l$name = json['name'];
    final l$yardCode = json['yardCode'];
    final l$depotNo = json['depotNo'];
    final l$$__typename = json['__typename'];
    return Query$GetFormJobs$formJobs$jobInfo$asset(
      assetCode: (l$assetCode as String),
      name: (l$name as String?),
      yardCode: (l$yardCode as String),
      depotNo: (l$depotNo as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String assetCode;

  final String? name;

  final String yardCode;

  final String depotNo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assetCode = assetCode;
    _resultData['assetCode'] = l$assetCode;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$assetCode = assetCode;
    final l$name = name;
    final l$yardCode = yardCode;
    final l$depotNo = depotNo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$assetCode,
      l$name,
      l$yardCode,
      l$depotNo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFormJobs$formJobs$jobInfo$asset) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (l$assetCode != lOther$assetCode) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
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

extension UtilityExtension$Query$GetFormJobs$formJobs$jobInfo$asset
    on Query$GetFormJobs$formJobs$jobInfo$asset {
  CopyWith$Query$GetFormJobs$formJobs$jobInfo$asset<
          Query$GetFormJobs$formJobs$jobInfo$asset>
      get copyWith => CopyWith$Query$GetFormJobs$formJobs$jobInfo$asset(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFormJobs$formJobs$jobInfo$asset<TRes> {
  factory CopyWith$Query$GetFormJobs$formJobs$jobInfo$asset(
    Query$GetFormJobs$formJobs$jobInfo$asset instance,
    TRes Function(Query$GetFormJobs$formJobs$jobInfo$asset) then,
  ) = _CopyWithImpl$Query$GetFormJobs$formJobs$jobInfo$asset;

  factory CopyWith$Query$GetFormJobs$formJobs$jobInfo$asset.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFormJobs$formJobs$jobInfo$asset;

  TRes call({
    String? assetCode,
    String? name,
    String? yardCode,
    String? depotNo,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetFormJobs$formJobs$jobInfo$asset<TRes>
    implements CopyWith$Query$GetFormJobs$formJobs$jobInfo$asset<TRes> {
  _CopyWithImpl$Query$GetFormJobs$formJobs$jobInfo$asset(
    this._instance,
    this._then,
  );

  final Query$GetFormJobs$formJobs$jobInfo$asset _instance;

  final TRes Function(Query$GetFormJobs$formJobs$jobInfo$asset) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetCode = _undefined,
    Object? name = _undefined,
    Object? yardCode = _undefined,
    Object? depotNo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFormJobs$formJobs$jobInfo$asset(
        assetCode: assetCode == _undefined || assetCode == null
            ? _instance.assetCode
            : (assetCode as String),
        name: name == _undefined ? _instance.name : (name as String?),
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        depotNo: depotNo == _undefined || depotNo == null
            ? _instance.depotNo
            : (depotNo as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetFormJobs$formJobs$jobInfo$asset<TRes>
    implements CopyWith$Query$GetFormJobs$formJobs$jobInfo$asset<TRes> {
  _CopyWithStubImpl$Query$GetFormJobs$formJobs$jobInfo$asset(this._res);

  TRes _res;

  call({
    String? assetCode,
    String? name,
    String? yardCode,
    String? depotNo,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetFormJobs$formJobs$instanceInfo {
  Query$GetFormJobs$formJobs$instanceInfo({
    required this.uuid,
    required this.createdDate,
    required this.statusId,
    required this.startedBy,
    required this.startedDate,
    this.submittedBy,
    this.submittedDate,
    this.$__typename = 'InstanceInfo',
  });

  factory Query$GetFormJobs$formJobs$instanceInfo.fromJson(
      Map<String, dynamic> json) {
    final l$uuid = json['uuid'];
    final l$createdDate = json['createdDate'];
    final l$statusId = json['statusId'];
    final l$startedBy = json['startedBy'];
    final l$startedDate = json['startedDate'];
    final l$submittedBy = json['submittedBy'];
    final l$submittedDate = json['submittedDate'];
    final l$$__typename = json['__typename'];
    return Query$GetFormJobs$formJobs$instanceInfo(
      uuid: (l$uuid as String),
      createdDate: (l$createdDate as String),
      statusId: (l$statusId as int),
      startedBy: (l$startedBy as String),
      startedDate: (l$startedDate as String),
      submittedBy: (l$submittedBy as String?),
      submittedDate: (l$submittedDate as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String uuid;

  final String createdDate;

  final int statusId;

  final String startedBy;

  final String startedDate;

  final String? submittedBy;

  final String? submittedDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uuid = uuid;
    _resultData['uuid'] = l$uuid;
    final l$createdDate = createdDate;
    _resultData['createdDate'] = l$createdDate;
    final l$statusId = statusId;
    _resultData['statusId'] = l$statusId;
    final l$startedBy = startedBy;
    _resultData['startedBy'] = l$startedBy;
    final l$startedDate = startedDate;
    _resultData['startedDate'] = l$startedDate;
    final l$submittedBy = submittedBy;
    _resultData['submittedBy'] = l$submittedBy;
    final l$submittedDate = submittedDate;
    _resultData['submittedDate'] = l$submittedDate;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uuid = uuid;
    final l$createdDate = createdDate;
    final l$statusId = statusId;
    final l$startedBy = startedBy;
    final l$startedDate = startedDate;
    final l$submittedBy = submittedBy;
    final l$submittedDate = submittedDate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uuid,
      l$createdDate,
      l$statusId,
      l$startedBy,
      l$startedDate,
      l$submittedBy,
      l$submittedDate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetFormJobs$formJobs$instanceInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uuid = uuid;
    final lOther$uuid = other.uuid;
    if (l$uuid != lOther$uuid) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (l$createdDate != lOther$createdDate) {
      return false;
    }
    final l$statusId = statusId;
    final lOther$statusId = other.statusId;
    if (l$statusId != lOther$statusId) {
      return false;
    }
    final l$startedBy = startedBy;
    final lOther$startedBy = other.startedBy;
    if (l$startedBy != lOther$startedBy) {
      return false;
    }
    final l$startedDate = startedDate;
    final lOther$startedDate = other.startedDate;
    if (l$startedDate != lOther$startedDate) {
      return false;
    }
    final l$submittedBy = submittedBy;
    final lOther$submittedBy = other.submittedBy;
    if (l$submittedBy != lOther$submittedBy) {
      return false;
    }
    final l$submittedDate = submittedDate;
    final lOther$submittedDate = other.submittedDate;
    if (l$submittedDate != lOther$submittedDate) {
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

extension UtilityExtension$Query$GetFormJobs$formJobs$instanceInfo
    on Query$GetFormJobs$formJobs$instanceInfo {
  CopyWith$Query$GetFormJobs$formJobs$instanceInfo<
          Query$GetFormJobs$formJobs$instanceInfo>
      get copyWith => CopyWith$Query$GetFormJobs$formJobs$instanceInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFormJobs$formJobs$instanceInfo<TRes> {
  factory CopyWith$Query$GetFormJobs$formJobs$instanceInfo(
    Query$GetFormJobs$formJobs$instanceInfo instance,
    TRes Function(Query$GetFormJobs$formJobs$instanceInfo) then,
  ) = _CopyWithImpl$Query$GetFormJobs$formJobs$instanceInfo;

  factory CopyWith$Query$GetFormJobs$formJobs$instanceInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFormJobs$formJobs$instanceInfo;

  TRes call({
    String? uuid,
    String? createdDate,
    int? statusId,
    String? startedBy,
    String? startedDate,
    String? submittedBy,
    String? submittedDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetFormJobs$formJobs$instanceInfo<TRes>
    implements CopyWith$Query$GetFormJobs$formJobs$instanceInfo<TRes> {
  _CopyWithImpl$Query$GetFormJobs$formJobs$instanceInfo(
    this._instance,
    this._then,
  );

  final Query$GetFormJobs$formJobs$instanceInfo _instance;

  final TRes Function(Query$GetFormJobs$formJobs$instanceInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uuid = _undefined,
    Object? createdDate = _undefined,
    Object? statusId = _undefined,
    Object? startedBy = _undefined,
    Object? startedDate = _undefined,
    Object? submittedBy = _undefined,
    Object? submittedDate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFormJobs$formJobs$instanceInfo(
        uuid: uuid == _undefined || uuid == null
            ? _instance.uuid
            : (uuid as String),
        createdDate: createdDate == _undefined || createdDate == null
            ? _instance.createdDate
            : (createdDate as String),
        statusId: statusId == _undefined || statusId == null
            ? _instance.statusId
            : (statusId as int),
        startedBy: startedBy == _undefined || startedBy == null
            ? _instance.startedBy
            : (startedBy as String),
        startedDate: startedDate == _undefined || startedDate == null
            ? _instance.startedDate
            : (startedDate as String),
        submittedBy: submittedBy == _undefined
            ? _instance.submittedBy
            : (submittedBy as String?),
        submittedDate: submittedDate == _undefined
            ? _instance.submittedDate
            : (submittedDate as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetFormJobs$formJobs$instanceInfo<TRes>
    implements CopyWith$Query$GetFormJobs$formJobs$instanceInfo<TRes> {
  _CopyWithStubImpl$Query$GetFormJobs$formJobs$instanceInfo(this._res);

  TRes _res;

  call({
    String? uuid,
    String? createdDate,
    int? statusId,
    String? startedBy,
    String? startedDate,
    String? submittedBy,
    String? submittedDate,
    String? $__typename,
  }) =>
      _res;
}
