import 'package:gql/ast.dart';

class Variables$Query$GetInProgressJobs {
  factory Variables$Query$GetInProgressJobs({
    int? firstIn,
    String? afterIn,
    int? lastIn,
    String? beforeIn,
    required String yardCode,
    String? startDate,
    String? endDate,
    bool? filterForUser,
    String? assetCode,
    String? jobId,
  }) =>
      Variables$Query$GetInProgressJobs._({
        if (firstIn != null) r'firstIn': firstIn,
        if (afterIn != null) r'afterIn': afterIn,
        if (lastIn != null) r'lastIn': lastIn,
        if (beforeIn != null) r'beforeIn': beforeIn,
        r'yardCode': yardCode,
        if (startDate != null) r'startDate': startDate,
        if (endDate != null) r'endDate': endDate,
        if (filterForUser != null) r'filterForUser': filterForUser,
        if (assetCode != null) r'assetCode': assetCode,
        if (jobId != null) r'jobId': jobId,
      });

  Variables$Query$GetInProgressJobs._(this._$data);

  factory Variables$Query$GetInProgressJobs.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('firstIn')) {
      final l$firstIn = data['firstIn'];
      result$data['firstIn'] = (l$firstIn as int?);
    }
    if (data.containsKey('afterIn')) {
      final l$afterIn = data['afterIn'];
      result$data['afterIn'] = (l$afterIn as String?);
    }
    if (data.containsKey('lastIn')) {
      final l$lastIn = data['lastIn'];
      result$data['lastIn'] = (l$lastIn as int?);
    }
    if (data.containsKey('beforeIn')) {
      final l$beforeIn = data['beforeIn'];
      result$data['beforeIn'] = (l$beforeIn as String?);
    }
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
    if (data.containsKey('assetCode')) {
      final l$assetCode = data['assetCode'];
      result$data['assetCode'] = (l$assetCode as String?);
    }
    if (data.containsKey('jobId')) {
      final l$jobId = data['jobId'];
      result$data['jobId'] = (l$jobId as String?);
    }
    return Variables$Query$GetInProgressJobs._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get firstIn => (_$data['firstIn'] as int?);

  String? get afterIn => (_$data['afterIn'] as String?);

  int? get lastIn => (_$data['lastIn'] as int?);

  String? get beforeIn => (_$data['beforeIn'] as String?);

  String get yardCode => (_$data['yardCode'] as String);

  String? get startDate => (_$data['startDate'] as String?);

  String? get endDate => (_$data['endDate'] as String?);

  bool? get filterForUser => (_$data['filterForUser'] as bool?);

  String? get assetCode => (_$data['assetCode'] as String?);

  String? get jobId => (_$data['jobId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('firstIn')) {
      final l$firstIn = firstIn;
      result$data['firstIn'] = l$firstIn;
    }
    if (_$data.containsKey('afterIn')) {
      final l$afterIn = afterIn;
      result$data['afterIn'] = l$afterIn;
    }
    if (_$data.containsKey('lastIn')) {
      final l$lastIn = lastIn;
      result$data['lastIn'] = l$lastIn;
    }
    if (_$data.containsKey('beforeIn')) {
      final l$beforeIn = beforeIn;
      result$data['beforeIn'] = l$beforeIn;
    }
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
    if (_$data.containsKey('assetCode')) {
      final l$assetCode = assetCode;
      result$data['assetCode'] = l$assetCode;
    }
    if (_$data.containsKey('jobId')) {
      final l$jobId = jobId;
      result$data['jobId'] = l$jobId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetInProgressJobs<Variables$Query$GetInProgressJobs>
      get copyWith => CopyWith$Variables$Query$GetInProgressJobs(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetInProgressJobs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstIn = firstIn;
    final lOther$firstIn = other.firstIn;
    if (_$data.containsKey('firstIn') != other._$data.containsKey('firstIn')) {
      return false;
    }
    if (l$firstIn != lOther$firstIn) {
      return false;
    }
    final l$afterIn = afterIn;
    final lOther$afterIn = other.afterIn;
    if (_$data.containsKey('afterIn') != other._$data.containsKey('afterIn')) {
      return false;
    }
    if (l$afterIn != lOther$afterIn) {
      return false;
    }
    final l$lastIn = lastIn;
    final lOther$lastIn = other.lastIn;
    if (_$data.containsKey('lastIn') != other._$data.containsKey('lastIn')) {
      return false;
    }
    if (l$lastIn != lOther$lastIn) {
      return false;
    }
    final l$beforeIn = beforeIn;
    final lOther$beforeIn = other.beforeIn;
    if (_$data.containsKey('beforeIn') !=
        other._$data.containsKey('beforeIn')) {
      return false;
    }
    if (l$beforeIn != lOther$beforeIn) {
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
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (_$data.containsKey('assetCode') !=
        other._$data.containsKey('assetCode')) {
      return false;
    }
    if (l$assetCode != lOther$assetCode) {
      return false;
    }
    final l$jobId = jobId;
    final lOther$jobId = other.jobId;
    if (_$data.containsKey('jobId') != other._$data.containsKey('jobId')) {
      return false;
    }
    if (l$jobId != lOther$jobId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$firstIn = firstIn;
    final l$afterIn = afterIn;
    final l$lastIn = lastIn;
    final l$beforeIn = beforeIn;
    final l$yardCode = yardCode;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$filterForUser = filterForUser;
    final l$assetCode = assetCode;
    final l$jobId = jobId;
    return Object.hashAll([
      _$data.containsKey('firstIn') ? l$firstIn : const {},
      _$data.containsKey('afterIn') ? l$afterIn : const {},
      _$data.containsKey('lastIn') ? l$lastIn : const {},
      _$data.containsKey('beforeIn') ? l$beforeIn : const {},
      l$yardCode,
      _$data.containsKey('startDate') ? l$startDate : const {},
      _$data.containsKey('endDate') ? l$endDate : const {},
      _$data.containsKey('filterForUser') ? l$filterForUser : const {},
      _$data.containsKey('assetCode') ? l$assetCode : const {},
      _$data.containsKey('jobId') ? l$jobId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetInProgressJobs<TRes> {
  factory CopyWith$Variables$Query$GetInProgressJobs(
    Variables$Query$GetInProgressJobs instance,
    TRes Function(Variables$Query$GetInProgressJobs) then,
  ) = _CopyWithImpl$Variables$Query$GetInProgressJobs;

  factory CopyWith$Variables$Query$GetInProgressJobs.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetInProgressJobs;

  TRes call({
    int? firstIn,
    String? afterIn,
    int? lastIn,
    String? beforeIn,
    String? yardCode,
    String? startDate,
    String? endDate,
    bool? filterForUser,
    String? assetCode,
    String? jobId,
  });
}

class _CopyWithImpl$Variables$Query$GetInProgressJobs<TRes>
    implements CopyWith$Variables$Query$GetInProgressJobs<TRes> {
  _CopyWithImpl$Variables$Query$GetInProgressJobs(
    this._instance,
    this._then,
  );

  final Variables$Query$GetInProgressJobs _instance;

  final TRes Function(Variables$Query$GetInProgressJobs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstIn = _undefined,
    Object? afterIn = _undefined,
    Object? lastIn = _undefined,
    Object? beforeIn = _undefined,
    Object? yardCode = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? filterForUser = _undefined,
    Object? assetCode = _undefined,
    Object? jobId = _undefined,
  }) =>
      _then(Variables$Query$GetInProgressJobs._({
        ..._instance._$data,
        if (firstIn != _undefined) 'firstIn': (firstIn as int?),
        if (afterIn != _undefined) 'afterIn': (afterIn as String?),
        if (lastIn != _undefined) 'lastIn': (lastIn as int?),
        if (beforeIn != _undefined) 'beforeIn': (beforeIn as String?),
        if (yardCode != _undefined && yardCode != null)
          'yardCode': (yardCode as String),
        if (startDate != _undefined) 'startDate': (startDate as String?),
        if (endDate != _undefined) 'endDate': (endDate as String?),
        if (filterForUser != _undefined)
          'filterForUser': (filterForUser as bool?),
        if (assetCode != _undefined) 'assetCode': (assetCode as String?),
        if (jobId != _undefined) 'jobId': (jobId as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetInProgressJobs<TRes>
    implements CopyWith$Variables$Query$GetInProgressJobs<TRes> {
  _CopyWithStubImpl$Variables$Query$GetInProgressJobs(this._res);

  TRes _res;

  call({
    int? firstIn,
    String? afterIn,
    int? lastIn,
    String? beforeIn,
    String? yardCode,
    String? startDate,
    String? endDate,
    bool? filterForUser,
    String? assetCode,
    String? jobId,
  }) =>
      _res;
}

class Query$GetInProgressJobs {
  Query$GetInProgressJobs({
    required this.jobFormsForYard,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetInProgressJobs.fromJson(Map<String, dynamic> json) {
    final l$jobFormsForYard = json['jobFormsForYard'];
    final l$$__typename = json['__typename'];
    return Query$GetInProgressJobs(
      jobFormsForYard: Query$GetInProgressJobs$jobFormsForYard.fromJson(
          (l$jobFormsForYard as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetInProgressJobs$jobFormsForYard jobFormsForYard;

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
    if (!(other is Query$GetInProgressJobs) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetInProgressJobs on Query$GetInProgressJobs {
  CopyWith$Query$GetInProgressJobs<Query$GetInProgressJobs> get copyWith =>
      CopyWith$Query$GetInProgressJobs(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetInProgressJobs<TRes> {
  factory CopyWith$Query$GetInProgressJobs(
    Query$GetInProgressJobs instance,
    TRes Function(Query$GetInProgressJobs) then,
  ) = _CopyWithImpl$Query$GetInProgressJobs;

  factory CopyWith$Query$GetInProgressJobs.stub(TRes res) =
      _CopyWithStubImpl$Query$GetInProgressJobs;

  TRes call({
    Query$GetInProgressJobs$jobFormsForYard? jobFormsForYard,
    String? $__typename,
  });
  CopyWith$Query$GetInProgressJobs$jobFormsForYard<TRes> get jobFormsForYard;
}

class _CopyWithImpl$Query$GetInProgressJobs<TRes>
    implements CopyWith$Query$GetInProgressJobs<TRes> {
  _CopyWithImpl$Query$GetInProgressJobs(
    this._instance,
    this._then,
  );

  final Query$GetInProgressJobs _instance;

  final TRes Function(Query$GetInProgressJobs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? jobFormsForYard = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetInProgressJobs(
        jobFormsForYard:
            jobFormsForYard == _undefined || jobFormsForYard == null
                ? _instance.jobFormsForYard
                : (jobFormsForYard as Query$GetInProgressJobs$jobFormsForYard),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetInProgressJobs$jobFormsForYard<TRes> get jobFormsForYard {
    final local$jobFormsForYard = _instance.jobFormsForYard;
    return CopyWith$Query$GetInProgressJobs$jobFormsForYard(
        local$jobFormsForYard, (e) => call(jobFormsForYard: e));
  }
}

class _CopyWithStubImpl$Query$GetInProgressJobs<TRes>
    implements CopyWith$Query$GetInProgressJobs<TRes> {
  _CopyWithStubImpl$Query$GetInProgressJobs(this._res);

  TRes _res;

  call({
    Query$GetInProgressJobs$jobFormsForYard? jobFormsForYard,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetInProgressJobs$jobFormsForYard<TRes> get jobFormsForYard =>
      CopyWith$Query$GetInProgressJobs$jobFormsForYard.stub(_res);
}

const documentNodeQueryGetInProgressJobs = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetInProgressJobs'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'firstIn')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'afterIn')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastIn')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'beforeIn')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'assetCode')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'jobId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
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
          ArgumentNode(
            name: NameNode(value: 'assetCode'),
            value: VariableNode(name: NameNode(value: 'assetCode')),
          ),
          ArgumentNode(
            name: NameNode(value: 'jobId'),
            value: VariableNode(name: NameNode(value: 'jobId')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'inProgress'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'firstIn')),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'afterIn')),
              ),
              ArgumentNode(
                name: NameNode(value: 'last'),
                value: VariableNode(name: NameNode(value: 'lastIn')),
              ),
              ArgumentNode(
                name: NameNode(value: 'before'),
                value: VariableNode(name: NameNode(value: 'beforeIn')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'nodes'),
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
                    name: NameNode(value: 'assetName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'scheduledItemId'),
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
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
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
                    name: NameNode(value: 'status'),
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
                    name: NameNode(value: 'isDigitalSignatureRequired'),
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
                        name: NameNode(value: 'description'),
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
                        name: NameNode(value: 'title'),
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
                    name: NameNode(value: 'templateVersionId'),
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
                    name: NameNode(value: 'workOrderDescription'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'originalDescription'),
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
                    name: NameNode(value: 'assignedTo'),
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
                    name: NameNode(value: 'scheduleItemType'),
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
                    name: NameNode(value: 'category'),
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
                    name: NameNode(value: 'notes'),
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
                name: NameNode(value: 'pageInfo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'hasNextPage'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'startCursor'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'endCursor'),
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
]);

class Query$GetInProgressJobs$jobFormsForYard {
  Query$GetInProgressJobs$jobFormsForYard({
    this.inProgress,
    this.$__typename = 'JobForms',
  });

  factory Query$GetInProgressJobs$jobFormsForYard.fromJson(
      Map<String, dynamic> json) {
    final l$inProgress = json['inProgress'];
    final l$$__typename = json['__typename'];
    return Query$GetInProgressJobs$jobFormsForYard(
      inProgress: l$inProgress == null
          ? null
          : Query$GetInProgressJobs$jobFormsForYard$inProgress.fromJson(
              (l$inProgress as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetInProgressJobs$jobFormsForYard$inProgress? inProgress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$inProgress = inProgress;
    _resultData['inProgress'] = l$inProgress?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$inProgress = inProgress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$inProgress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetInProgressJobs$jobFormsForYard) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$inProgress = inProgress;
    final lOther$inProgress = other.inProgress;
    if (l$inProgress != lOther$inProgress) {
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

extension UtilityExtension$Query$GetInProgressJobs$jobFormsForYard
    on Query$GetInProgressJobs$jobFormsForYard {
  CopyWith$Query$GetInProgressJobs$jobFormsForYard<
          Query$GetInProgressJobs$jobFormsForYard>
      get copyWith => CopyWith$Query$GetInProgressJobs$jobFormsForYard(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetInProgressJobs$jobFormsForYard<TRes> {
  factory CopyWith$Query$GetInProgressJobs$jobFormsForYard(
    Query$GetInProgressJobs$jobFormsForYard instance,
    TRes Function(Query$GetInProgressJobs$jobFormsForYard) then,
  ) = _CopyWithImpl$Query$GetInProgressJobs$jobFormsForYard;

  factory CopyWith$Query$GetInProgressJobs$jobFormsForYard.stub(TRes res) =
      _CopyWithStubImpl$Query$GetInProgressJobs$jobFormsForYard;

  TRes call({
    Query$GetInProgressJobs$jobFormsForYard$inProgress? inProgress,
    String? $__typename,
  });
  CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress<TRes>
      get inProgress;
}

class _CopyWithImpl$Query$GetInProgressJobs$jobFormsForYard<TRes>
    implements CopyWith$Query$GetInProgressJobs$jobFormsForYard<TRes> {
  _CopyWithImpl$Query$GetInProgressJobs$jobFormsForYard(
    this._instance,
    this._then,
  );

  final Query$GetInProgressJobs$jobFormsForYard _instance;

  final TRes Function(Query$GetInProgressJobs$jobFormsForYard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? inProgress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetInProgressJobs$jobFormsForYard(
        inProgress: inProgress == _undefined
            ? _instance.inProgress
            : (inProgress
                as Query$GetInProgressJobs$jobFormsForYard$inProgress?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress<TRes>
      get inProgress {
    final local$inProgress = _instance.inProgress;
    return local$inProgress == null
        ? CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress.stub(
            _then(_instance))
        : CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress(
            local$inProgress, (e) => call(inProgress: e));
  }
}

class _CopyWithStubImpl$Query$GetInProgressJobs$jobFormsForYard<TRes>
    implements CopyWith$Query$GetInProgressJobs$jobFormsForYard<TRes> {
  _CopyWithStubImpl$Query$GetInProgressJobs$jobFormsForYard(this._res);

  TRes _res;

  call({
    Query$GetInProgressJobs$jobFormsForYard$inProgress? inProgress,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress<TRes>
      get inProgress =>
          CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress.stub(
              _res);
}

class Query$GetInProgressJobs$jobFormsForYard$inProgress {
  Query$GetInProgressJobs$jobFormsForYard$inProgress({
    this.nodes,
    required this.pageInfo,
    this.$__typename = 'InProgressConnection',
  });

  factory Query$GetInProgressJobs$jobFormsForYard$inProgress.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetInProgressJobs$jobFormsForYard$inProgress(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes?>? nodes;

  final Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetInProgressJobs$jobFormsForYard$inProgress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$GetInProgressJobs$jobFormsForYard$inProgress
    on Query$GetInProgressJobs$jobFormsForYard$inProgress {
  CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress<
          Query$GetInProgressJobs$jobFormsForYard$inProgress>
      get copyWith =>
          CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress<
    TRes> {
  factory CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress(
    Query$GetInProgressJobs$jobFormsForYard$inProgress instance,
    TRes Function(Query$GetInProgressJobs$jobFormsForYard$inProgress) then,
  ) = _CopyWithImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress;

  factory CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress;

  TRes call({
    List<Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes?>? nodes,
    Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes?>? Function(
              Iterable<
                  CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes<
                      Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes>?>?)
          _fn);
  CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress<TRes>
    implements
        CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress<TRes> {
  _CopyWithImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress(
    this._instance,
    this._then,
  );

  final Query$GetInProgressJobs$jobFormsForYard$inProgress _instance;

  final TRes Function(Query$GetInProgressJobs$jobFormsForYard$inProgress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetInProgressJobs$jobFormsForYard$inProgress(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<
                Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes?>?),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes<
                          Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress<TRes>
    implements
        CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress<TRes> {
  _CopyWithStubImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress(
      this._res);

  TRes _res;

  call({
    List<Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes?>? nodes,
    Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;

  CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo
              .stub(_res);
}

class Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes {
  Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes({
    this.assetCode,
    this.assetName,
    this.scheduledItemId,
    this.depotNo,
    required this.id,
    this.jobType,
    this.jobTypeVariant,
    required this.startedBy,
    this.startedDate,
    this.status,
    this.submittedBy,
    this.submittedDate,
    required this.isDigitalSignatureRequired,
    this.template,
    required this.templateVersionId,
    this.workOrderId,
    this.workOrderDescription,
    this.originalDescription,
    this.jobTrade,
    required this.assignedTo,
    required this.yardCode,
    required this.scheduleItemType,
    this.assignedToTeam,
    this.assignedToTeamId,
    this.category,
    required this.jobPriority,
    this.notes,
    this.$__typename = 'FormInstance',
  });

  factory Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$assetCode = json['assetCode'];
    final l$assetName = json['assetName'];
    final l$scheduledItemId = json['scheduledItemId'];
    final l$depotNo = json['depotNo'];
    final l$id = json['id'];
    final l$jobType = json['jobType'];
    final l$jobTypeVariant = json['jobTypeVariant'];
    final l$startedBy = json['startedBy'];
    final l$startedDate = json['startedDate'];
    final l$status = json['status'];
    final l$submittedBy = json['submittedBy'];
    final l$submittedDate = json['submittedDate'];
    final l$isDigitalSignatureRequired = json['isDigitalSignatureRequired'];
    final l$template = json['template'];
    final l$templateVersionId = json['templateVersionId'];
    final l$workOrderId = json['workOrderId'];
    final l$workOrderDescription = json['workOrderDescription'];
    final l$originalDescription = json['originalDescription'];
    final l$jobTrade = json['jobTrade'];
    final l$assignedTo = json['assignedTo'];
    final l$yardCode = json['yardCode'];
    final l$scheduleItemType = json['scheduleItemType'];
    final l$assignedToTeam = json['assignedToTeam'];
    final l$assignedToTeamId = json['assignedToTeamId'];
    final l$category = json['category'];
    final l$jobPriority = json['jobPriority'];
    final l$notes = json['notes'];
    final l$$__typename = json['__typename'];
    return Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes(
      assetCode: (l$assetCode as String?),
      assetName: (l$assetName as String?),
      scheduledItemId: (l$scheduledItemId as String?),
      depotNo: (l$depotNo as String?),
      id: (l$id as String),
      jobType: (l$jobType as String?),
      jobTypeVariant: (l$jobTypeVariant as String?),
      startedBy: (l$startedBy as String),
      startedDate: (l$startedDate as String?),
      status: (l$status as String?),
      submittedBy: (l$submittedBy as String?),
      submittedDate: (l$submittedDate as String?),
      isDigitalSignatureRequired: (l$isDigitalSignatureRequired as bool),
      template: l$template == null
          ? null
          : Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template
              .fromJson((l$template as Map<String, dynamic>)),
      templateVersionId: (l$templateVersionId as String),
      workOrderId: (l$workOrderId as String?),
      workOrderDescription: (l$workOrderDescription as String?),
      originalDescription: (l$originalDescription as String?),
      jobTrade: (l$jobTrade as String?),
      assignedTo: (l$assignedTo as String),
      yardCode: (l$yardCode as String),
      scheduleItemType: (l$scheduleItemType as String),
      assignedToTeam: (l$assignedToTeam as String?),
      assignedToTeamId: (l$assignedToTeamId as String?),
      category: (l$category as String?),
      jobPriority: (l$jobPriority as String),
      notes: (l$notes as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? assetCode;

  final String? assetName;

  final String? scheduledItemId;

  final String? depotNo;

  final String id;

  final String? jobType;

  final String? jobTypeVariant;

  final String startedBy;

  final String? startedDate;

  final String? status;

  final String? submittedBy;

  final String? submittedDate;

  final bool isDigitalSignatureRequired;

  final Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template?
      template;

  final String templateVersionId;

  final String? workOrderId;

  final String? workOrderDescription;

  final String? originalDescription;

  final String? jobTrade;

  final String assignedTo;

  final String yardCode;

  final String scheduleItemType;

  final String? assignedToTeam;

  final String? assignedToTeamId;

  final String? category;

  final String jobPriority;

  final String? notes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assetCode = assetCode;
    _resultData['assetCode'] = l$assetCode;
    final l$assetName = assetName;
    _resultData['assetName'] = l$assetName;
    final l$scheduledItemId = scheduledItemId;
    _resultData['scheduledItemId'] = l$scheduledItemId;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$jobType = jobType;
    _resultData['jobType'] = l$jobType;
    final l$jobTypeVariant = jobTypeVariant;
    _resultData['jobTypeVariant'] = l$jobTypeVariant;
    final l$startedBy = startedBy;
    _resultData['startedBy'] = l$startedBy;
    final l$startedDate = startedDate;
    _resultData['startedDate'] = l$startedDate;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$submittedBy = submittedBy;
    _resultData['submittedBy'] = l$submittedBy;
    final l$submittedDate = submittedDate;
    _resultData['submittedDate'] = l$submittedDate;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    _resultData['isDigitalSignatureRequired'] = l$isDigitalSignatureRequired;
    final l$template = template;
    _resultData['template'] = l$template?.toJson();
    final l$templateVersionId = templateVersionId;
    _resultData['templateVersionId'] = l$templateVersionId;
    final l$workOrderId = workOrderId;
    _resultData['workOrderId'] = l$workOrderId;
    final l$workOrderDescription = workOrderDescription;
    _resultData['workOrderDescription'] = l$workOrderDescription;
    final l$originalDescription = originalDescription;
    _resultData['originalDescription'] = l$originalDescription;
    final l$jobTrade = jobTrade;
    _resultData['jobTrade'] = l$jobTrade;
    final l$assignedTo = assignedTo;
    _resultData['assignedTo'] = l$assignedTo;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$scheduleItemType = scheduleItemType;
    _resultData['scheduleItemType'] = l$scheduleItemType;
    final l$assignedToTeam = assignedToTeam;
    _resultData['assignedToTeam'] = l$assignedToTeam;
    final l$assignedToTeamId = assignedToTeamId;
    _resultData['assignedToTeamId'] = l$assignedToTeamId;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$jobPriority = jobPriority;
    _resultData['jobPriority'] = l$jobPriority;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$assetCode = assetCode;
    final l$assetName = assetName;
    final l$scheduledItemId = scheduledItemId;
    final l$depotNo = depotNo;
    final l$id = id;
    final l$jobType = jobType;
    final l$jobTypeVariant = jobTypeVariant;
    final l$startedBy = startedBy;
    final l$startedDate = startedDate;
    final l$status = status;
    final l$submittedBy = submittedBy;
    final l$submittedDate = submittedDate;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final l$template = template;
    final l$templateVersionId = templateVersionId;
    final l$workOrderId = workOrderId;
    final l$workOrderDescription = workOrderDescription;
    final l$originalDescription = originalDescription;
    final l$jobTrade = jobTrade;
    final l$assignedTo = assignedTo;
    final l$yardCode = yardCode;
    final l$scheduleItemType = scheduleItemType;
    final l$assignedToTeam = assignedToTeam;
    final l$assignedToTeamId = assignedToTeamId;
    final l$category = category;
    final l$jobPriority = jobPriority;
    final l$notes = notes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$assetCode,
      l$assetName,
      l$scheduledItemId,
      l$depotNo,
      l$id,
      l$jobType,
      l$jobTypeVariant,
      l$startedBy,
      l$startedDate,
      l$status,
      l$submittedBy,
      l$submittedDate,
      l$isDigitalSignatureRequired,
      l$template,
      l$templateVersionId,
      l$workOrderId,
      l$workOrderDescription,
      l$originalDescription,
      l$jobTrade,
      l$assignedTo,
      l$yardCode,
      l$scheduleItemType,
      l$assignedToTeam,
      l$assignedToTeamId,
      l$category,
      l$jobPriority,
      l$notes,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (l$assetCode != lOther$assetCode) {
      return false;
    }
    final l$assetName = assetName;
    final lOther$assetName = other.assetName;
    if (l$assetName != lOther$assetName) {
      return false;
    }
    final l$scheduledItemId = scheduledItemId;
    final lOther$scheduledItemId = other.scheduledItemId;
    if (l$scheduledItemId != lOther$scheduledItemId) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final lOther$isDigitalSignatureRequired = other.isDigitalSignatureRequired;
    if (l$isDigitalSignatureRequired != lOther$isDigitalSignatureRequired) {
      return false;
    }
    final l$template = template;
    final lOther$template = other.template;
    if (l$template != lOther$template) {
      return false;
    }
    final l$templateVersionId = templateVersionId;
    final lOther$templateVersionId = other.templateVersionId;
    if (l$templateVersionId != lOther$templateVersionId) {
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
    final l$originalDescription = originalDescription;
    final lOther$originalDescription = other.originalDescription;
    if (l$originalDescription != lOther$originalDescription) {
      return false;
    }
    final l$jobTrade = jobTrade;
    final lOther$jobTrade = other.jobTrade;
    if (l$jobTrade != lOther$jobTrade) {
      return false;
    }
    final l$assignedTo = assignedTo;
    final lOther$assignedTo = other.assignedTo;
    if (l$assignedTo != lOther$assignedTo) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$scheduleItemType = scheduleItemType;
    final lOther$scheduleItemType = other.scheduleItemType;
    if (l$scheduleItemType != lOther$scheduleItemType) {
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
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$jobPriority = jobPriority;
    final lOther$jobPriority = other.jobPriority;
    if (l$jobPriority != lOther$jobPriority) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
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

extension UtilityExtension$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes
    on Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes {
  CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes<
          Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes>
      get copyWith =>
          CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes<
    TRes> {
  factory CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes(
    Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes instance,
    TRes Function(Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes)
        then,
  ) = _CopyWithImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes;

  factory CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes;

  TRes call({
    String? assetCode,
    String? assetName,
    String? scheduledItemId,
    String? depotNo,
    String? id,
    String? jobType,
    String? jobTypeVariant,
    String? startedBy,
    String? startedDate,
    String? status,
    String? submittedBy,
    String? submittedDate,
    bool? isDigitalSignatureRequired,
    Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template? template,
    String? templateVersionId,
    String? workOrderId,
    String? workOrderDescription,
    String? originalDescription,
    String? jobTrade,
    String? assignedTo,
    String? yardCode,
    String? scheduleItemType,
    String? assignedToTeam,
    String? assignedToTeamId,
    String? category,
    String? jobPriority,
    String? notes,
    String? $__typename,
  });
  CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template<
      TRes> get template;
}

class _CopyWithImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes<
        TRes>
    implements
        CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes<
            TRes> {
  _CopyWithImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes(
    this._instance,
    this._then,
  );

  final Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes _instance;

  final TRes Function(Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetCode = _undefined,
    Object? assetName = _undefined,
    Object? scheduledItemId = _undefined,
    Object? depotNo = _undefined,
    Object? id = _undefined,
    Object? jobType = _undefined,
    Object? jobTypeVariant = _undefined,
    Object? startedBy = _undefined,
    Object? startedDate = _undefined,
    Object? status = _undefined,
    Object? submittedBy = _undefined,
    Object? submittedDate = _undefined,
    Object? isDigitalSignatureRequired = _undefined,
    Object? template = _undefined,
    Object? templateVersionId = _undefined,
    Object? workOrderId = _undefined,
    Object? workOrderDescription = _undefined,
    Object? originalDescription = _undefined,
    Object? jobTrade = _undefined,
    Object? assignedTo = _undefined,
    Object? yardCode = _undefined,
    Object? scheduleItemType = _undefined,
    Object? assignedToTeam = _undefined,
    Object? assignedToTeamId = _undefined,
    Object? category = _undefined,
    Object? jobPriority = _undefined,
    Object? notes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes(
        assetCode: assetCode == _undefined
            ? _instance.assetCode
            : (assetCode as String?),
        assetName: assetName == _undefined
            ? _instance.assetName
            : (assetName as String?),
        scheduledItemId: scheduledItemId == _undefined
            ? _instance.scheduledItemId
            : (scheduledItemId as String?),
        depotNo:
            depotNo == _undefined ? _instance.depotNo : (depotNo as String?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        jobType:
            jobType == _undefined ? _instance.jobType : (jobType as String?),
        jobTypeVariant: jobTypeVariant == _undefined
            ? _instance.jobTypeVariant
            : (jobTypeVariant as String?),
        startedBy: startedBy == _undefined || startedBy == null
            ? _instance.startedBy
            : (startedBy as String),
        startedDate: startedDate == _undefined
            ? _instance.startedDate
            : (startedDate as String?),
        status: status == _undefined ? _instance.status : (status as String?),
        submittedBy: submittedBy == _undefined
            ? _instance.submittedBy
            : (submittedBy as String?),
        submittedDate: submittedDate == _undefined
            ? _instance.submittedDate
            : (submittedDate as String?),
        isDigitalSignatureRequired: isDigitalSignatureRequired == _undefined ||
                isDigitalSignatureRequired == null
            ? _instance.isDigitalSignatureRequired
            : (isDigitalSignatureRequired as bool),
        template: template == _undefined
            ? _instance.template
            : (template
                as Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template?),
        templateVersionId:
            templateVersionId == _undefined || templateVersionId == null
                ? _instance.templateVersionId
                : (templateVersionId as String),
        workOrderId: workOrderId == _undefined
            ? _instance.workOrderId
            : (workOrderId as String?),
        workOrderDescription: workOrderDescription == _undefined
            ? _instance.workOrderDescription
            : (workOrderDescription as String?),
        originalDescription: originalDescription == _undefined
            ? _instance.originalDescription
            : (originalDescription as String?),
        jobTrade:
            jobTrade == _undefined ? _instance.jobTrade : (jobTrade as String?),
        assignedTo: assignedTo == _undefined || assignedTo == null
            ? _instance.assignedTo
            : (assignedTo as String),
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        scheduleItemType:
            scheduleItemType == _undefined || scheduleItemType == null
                ? _instance.scheduleItemType
                : (scheduleItemType as String),
        assignedToTeam: assignedToTeam == _undefined
            ? _instance.assignedToTeam
            : (assignedToTeam as String?),
        assignedToTeamId: assignedToTeamId == _undefined
            ? _instance.assignedToTeamId
            : (assignedToTeamId as String?),
        category:
            category == _undefined ? _instance.category : (category as String?),
        jobPriority: jobPriority == _undefined || jobPriority == null
            ? _instance.jobPriority
            : (jobPriority as String),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template<
      TRes> get template {
    final local$template = _instance.template;
    return local$template == null
        ? CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template
            .stub(_then(_instance))
        : CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template(
            local$template, (e) => call(template: e));
  }
}

class _CopyWithStubImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes<
        TRes>
    implements
        CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes<
            TRes> {
  _CopyWithStubImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes(
      this._res);

  TRes _res;

  call({
    String? assetCode,
    String? assetName,
    String? scheduledItemId,
    String? depotNo,
    String? id,
    String? jobType,
    String? jobTypeVariant,
    String? startedBy,
    String? startedDate,
    String? status,
    String? submittedBy,
    String? submittedDate,
    bool? isDigitalSignatureRequired,
    Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template? template,
    String? templateVersionId,
    String? workOrderId,
    String? workOrderDescription,
    String? originalDescription,
    String? jobTrade,
    String? assignedTo,
    String? yardCode,
    String? scheduleItemType,
    String? assignedToTeam,
    String? assignedToTeamId,
    String? category,
    String? jobPriority,
    String? notes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template<
          TRes>
      get template =>
          CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template
              .stub(_res);
}

class Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template {
  Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template({
    this.description,
    required this.id,
    this.templateId,
    this.title,
    required this.version,
    this.referenceId,
    required this.isDigitalSignatureRequired,
    required this.isEmailNotificationRequired,
    required this.sendEmailOnFailedQuestions,
    this.emailIds,
    this.assignFailedQuestionToTeam,
    this.assignFailedQuestionToTeamId,
    this.$__typename = 'FormTemplate',
  });

  factory Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template.fromJson(
      Map<String, dynamic> json) {
    final l$description = json['description'];
    final l$id = json['id'];
    final l$templateId = json['templateId'];
    final l$title = json['title'];
    final l$version = json['version'];
    final l$referenceId = json['referenceId'];
    final l$isDigitalSignatureRequired = json['isDigitalSignatureRequired'];
    final l$isEmailNotificationRequired = json['isEmailNotificationRequired'];
    final l$sendEmailOnFailedQuestions = json['sendEmailOnFailedQuestions'];
    final l$emailIds = json['emailIds'];
    final l$assignFailedQuestionToTeam = json['assignFailedQuestionToTeam'];
    final l$assignFailedQuestionToTeamId = json['assignFailedQuestionToTeamId'];
    final l$$__typename = json['__typename'];
    return Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template(
      description: (l$description as String?),
      id: (l$id as String),
      templateId: (l$templateId as String?),
      title: (l$title as String?),
      version: (l$version as int),
      referenceId: (l$referenceId as String?),
      isDigitalSignatureRequired: (l$isDigitalSignatureRequired as bool),
      isEmailNotificationRequired: (l$isEmailNotificationRequired as bool),
      sendEmailOnFailedQuestions: (l$sendEmailOnFailedQuestions as bool),
      emailIds: (l$emailIds as String?),
      assignFailedQuestionToTeam: (l$assignFailedQuestionToTeam as String?),
      assignFailedQuestionToTeamId: (l$assignFailedQuestionToTeamId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? description;

  final String id;

  final String? templateId;

  final String? title;

  final int version;

  final String? referenceId;

  final bool isDigitalSignatureRequired;

  final bool isEmailNotificationRequired;

  final bool sendEmailOnFailedQuestions;

  final String? emailIds;

  final String? assignFailedQuestionToTeam;

  final String? assignFailedQuestionToTeamId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$description = description;
    _resultData['description'] = l$description;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$templateId = templateId;
    _resultData['templateId'] = l$templateId;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$version = version;
    _resultData['version'] = l$version;
    final l$referenceId = referenceId;
    _resultData['referenceId'] = l$referenceId;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    _resultData['isDigitalSignatureRequired'] = l$isDigitalSignatureRequired;
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
    final l$description = description;
    final l$id = id;
    final l$templateId = templateId;
    final l$title = title;
    final l$version = version;
    final l$referenceId = referenceId;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final l$isEmailNotificationRequired = isEmailNotificationRequired;
    final l$sendEmailOnFailedQuestions = sendEmailOnFailedQuestions;
    final l$emailIds = emailIds;
    final l$assignFailedQuestionToTeam = assignFailedQuestionToTeam;
    final l$assignFailedQuestionToTeamId = assignFailedQuestionToTeamId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$description,
      l$id,
      l$templateId,
      l$title,
      l$version,
      l$referenceId,
      l$isDigitalSignatureRequired,
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
    if (!(other
            is Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$version = version;
    final lOther$version = other.version;
    if (l$version != lOther$version) {
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

extension UtilityExtension$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template
    on Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template {
  CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template<
          Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template>
      get copyWith =>
          CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template<
    TRes> {
  factory CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template(
    Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template instance,
    TRes Function(
            Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template)
        then,
  ) = _CopyWithImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template;

  factory CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template;

  TRes call({
    String? description,
    String? id,
    String? templateId,
    String? title,
    int? version,
    String? referenceId,
    bool? isDigitalSignatureRequired,
    bool? isEmailNotificationRequired,
    bool? sendEmailOnFailedQuestions,
    String? emailIds,
    String? assignFailedQuestionToTeam,
    String? assignFailedQuestionToTeamId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template<
        TRes>
    implements
        CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template<
            TRes> {
  _CopyWithImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template(
    this._instance,
    this._then,
  );

  final Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template
      _instance;

  final TRes Function(
      Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? description = _undefined,
    Object? id = _undefined,
    Object? templateId = _undefined,
    Object? title = _undefined,
    Object? version = _undefined,
    Object? referenceId = _undefined,
    Object? isDigitalSignatureRequired = _undefined,
    Object? isEmailNotificationRequired = _undefined,
    Object? sendEmailOnFailedQuestions = _undefined,
    Object? emailIds = _undefined,
    Object? assignFailedQuestionToTeam = _undefined,
    Object? assignFailedQuestionToTeamId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template(
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        templateId: templateId == _undefined
            ? _instance.templateId
            : (templateId as String?),
        title: title == _undefined ? _instance.title : (title as String?),
        version: version == _undefined || version == null
            ? _instance.version
            : (version as int),
        referenceId: referenceId == _undefined
            ? _instance.referenceId
            : (referenceId as String?),
        isDigitalSignatureRequired: isDigitalSignatureRequired == _undefined ||
                isDigitalSignatureRequired == null
            ? _instance.isDigitalSignatureRequired
            : (isDigitalSignatureRequired as bool),
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

class _CopyWithStubImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template<
        TRes>
    implements
        CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template<
            TRes> {
  _CopyWithStubImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress$nodes$template(
      this._res);

  TRes _res;

  call({
    String? description,
    String? id,
    String? templateId,
    String? title,
    int? version,
    String? referenceId,
    bool? isDigitalSignatureRequired,
    bool? isEmailNotificationRequired,
    bool? sendEmailOnFailedQuestions,
    String? emailIds,
    String? assignFailedQuestionToTeam,
    String? assignFailedQuestionToTeamId,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo {
  Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo({
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      startCursor: (l$startCursor as String?),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final String? startCursor;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$startCursor = startCursor;
    _resultData['startCursor'] = l$startCursor;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$startCursor = startCursor;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$startCursor,
      l$endCursor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$startCursor = startCursor;
    final lOther$startCursor = other.startCursor;
    if (l$startCursor != lOther$startCursor) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
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

extension UtilityExtension$Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo
    on Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo {
  CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo<
          Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo>
      get copyWith =>
          CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo<
    TRes> {
  factory CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo(
    Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo instance,
    TRes Function(Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo)
        then,
  ) = _CopyWithImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo;

  factory CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo<
        TRes>
    implements
        CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo<
            TRes> {
  _CopyWithImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo _instance;

  final TRes Function(
      Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo(
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        startCursor: startCursor == _undefined
            ? _instance.startCursor
            : (startCursor as String?),
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo<
        TRes>
    implements
        CopyWith$Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$GetInProgressJobs$jobFormsForYard$inProgress$pageInfo(
      this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}
