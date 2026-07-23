import 'package:gql/ast.dart';

class Variables$Query$GetAssignedJobs {
  factory Variables$Query$GetAssignedJobs({
    int? first,
    String? after,
    int? last,
    String? before,
    required String yardCode,
    String? startDate,
    String? endDate,
    bool? filterForUser,
    String? assetCode,
    String? jobId,
  }) =>
      Variables$Query$GetAssignedJobs._({
        if (first != null) r'first': first,
        if (after != null) r'after': after,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        r'yardCode': yardCode,
        if (startDate != null) r'startDate': startDate,
        if (endDate != null) r'endDate': endDate,
        if (filterForUser != null) r'filterForUser': filterForUser,
        if (assetCode != null) r'assetCode': assetCode,
        if (jobId != null) r'jobId': jobId,
      });

  Variables$Query$GetAssignedJobs._(this._$data);

  factory Variables$Query$GetAssignedJobs.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
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
    return Variables$Query$GetAssignedJobs._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  String get yardCode => (_$data['yardCode'] as String);

  String? get startDate => (_$data['startDate'] as String?);

  String? get endDate => (_$data['endDate'] as String?);

  bool? get filterForUser => (_$data['filterForUser'] as bool?);

  String? get assetCode => (_$data['assetCode'] as String?);

  String? get jobId => (_$data['jobId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
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

  CopyWith$Variables$Query$GetAssignedJobs<Variables$Query$GetAssignedJobs>
      get copyWith => CopyWith$Variables$Query$GetAssignedJobs(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAssignedJobs) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    final l$last = last;
    final lOther$last = other.last;
    if (_$data.containsKey('last') != other._$data.containsKey('last')) {
      return false;
    }
    if (l$last != lOther$last) {
      return false;
    }
    final l$before = before;
    final lOther$before = other.before;
    if (_$data.containsKey('before') != other._$data.containsKey('before')) {
      return false;
    }
    if (l$before != lOther$before) {
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
    final l$first = first;
    final l$after = after;
    final l$last = last;
    final l$before = before;
    final l$yardCode = yardCode;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$filterForUser = filterForUser;
    final l$assetCode = assetCode;
    final l$jobId = jobId;
    return Object.hashAll([
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
      l$yardCode,
      _$data.containsKey('startDate') ? l$startDate : const {},
      _$data.containsKey('endDate') ? l$endDate : const {},
      _$data.containsKey('filterForUser') ? l$filterForUser : const {},
      _$data.containsKey('assetCode') ? l$assetCode : const {},
      _$data.containsKey('jobId') ? l$jobId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetAssignedJobs<TRes> {
  factory CopyWith$Variables$Query$GetAssignedJobs(
    Variables$Query$GetAssignedJobs instance,
    TRes Function(Variables$Query$GetAssignedJobs) then,
  ) = _CopyWithImpl$Variables$Query$GetAssignedJobs;

  factory CopyWith$Variables$Query$GetAssignedJobs.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAssignedJobs;

  TRes call({
    int? first,
    String? after,
    int? last,
    String? before,
    String? yardCode,
    String? startDate,
    String? endDate,
    bool? filterForUser,
    String? assetCode,
    String? jobId,
  });
}

class _CopyWithImpl$Variables$Query$GetAssignedJobs<TRes>
    implements CopyWith$Variables$Query$GetAssignedJobs<TRes> {
  _CopyWithImpl$Variables$Query$GetAssignedJobs(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAssignedJobs _instance;

  final TRes Function(Variables$Query$GetAssignedJobs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? after = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? yardCode = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? filterForUser = _undefined,
    Object? assetCode = _undefined,
    Object? jobId = _undefined,
  }) =>
      _then(Variables$Query$GetAssignedJobs._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (after != _undefined) 'after': (after as String?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as String?),
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

class _CopyWithStubImpl$Variables$Query$GetAssignedJobs<TRes>
    implements CopyWith$Variables$Query$GetAssignedJobs<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAssignedJobs(this._res);

  TRes _res;

  call({
    int? first,
    String? after,
    int? last,
    String? before,
    String? yardCode,
    String? startDate,
    String? endDate,
    bool? filterForUser,
    String? assetCode,
    String? jobId,
  }) =>
      _res;
}

class Query$GetAssignedJobs {
  Query$GetAssignedJobs({
    required this.jobFormsForYard,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetAssignedJobs.fromJson(Map<String, dynamic> json) {
    final l$jobFormsForYard = json['jobFormsForYard'];
    final l$$__typename = json['__typename'];
    return Query$GetAssignedJobs(
      jobFormsForYard: Query$GetAssignedJobs$jobFormsForYard.fromJson(
          (l$jobFormsForYard as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAssignedJobs$jobFormsForYard jobFormsForYard;

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
    if (!(other is Query$GetAssignedJobs) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetAssignedJobs on Query$GetAssignedJobs {
  CopyWith$Query$GetAssignedJobs<Query$GetAssignedJobs> get copyWith =>
      CopyWith$Query$GetAssignedJobs(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAssignedJobs<TRes> {
  factory CopyWith$Query$GetAssignedJobs(
    Query$GetAssignedJobs instance,
    TRes Function(Query$GetAssignedJobs) then,
  ) = _CopyWithImpl$Query$GetAssignedJobs;

  factory CopyWith$Query$GetAssignedJobs.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAssignedJobs;

  TRes call({
    Query$GetAssignedJobs$jobFormsForYard? jobFormsForYard,
    String? $__typename,
  });
  CopyWith$Query$GetAssignedJobs$jobFormsForYard<TRes> get jobFormsForYard;
}

class _CopyWithImpl$Query$GetAssignedJobs<TRes>
    implements CopyWith$Query$GetAssignedJobs<TRes> {
  _CopyWithImpl$Query$GetAssignedJobs(
    this._instance,
    this._then,
  );

  final Query$GetAssignedJobs _instance;

  final TRes Function(Query$GetAssignedJobs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? jobFormsForYard = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAssignedJobs(
        jobFormsForYard:
            jobFormsForYard == _undefined || jobFormsForYard == null
                ? _instance.jobFormsForYard
                : (jobFormsForYard as Query$GetAssignedJobs$jobFormsForYard),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAssignedJobs$jobFormsForYard<TRes> get jobFormsForYard {
    final local$jobFormsForYard = _instance.jobFormsForYard;
    return CopyWith$Query$GetAssignedJobs$jobFormsForYard(
        local$jobFormsForYard, (e) => call(jobFormsForYard: e));
  }
}

class _CopyWithStubImpl$Query$GetAssignedJobs<TRes>
    implements CopyWith$Query$GetAssignedJobs<TRes> {
  _CopyWithStubImpl$Query$GetAssignedJobs(this._res);

  TRes _res;

  call({
    Query$GetAssignedJobs$jobFormsForYard? jobFormsForYard,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAssignedJobs$jobFormsForYard<TRes> get jobFormsForYard =>
      CopyWith$Query$GetAssignedJobs$jobFormsForYard.stub(_res);
}

const documentNodeQueryGetAssignedJobs = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAssignedJobs'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'last')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'before')),
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
            name: NameNode(value: 'filteredForUser'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'after')),
              ),
              ArgumentNode(
                name: NameNode(value: 'last'),
                value: VariableNode(name: NameNode(value: 'last')),
              ),
              ArgumentNode(
                name: NameNode(value: 'before'),
                value: VariableNode(name: NameNode(value: 'before')),
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
                    name: NameNode(value: 'scheduledItemId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'job'),
                    alias: null,
                    arguments: [],
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
                        name: NameNode(value: 'originalDescription'),
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
                        name: NameNode(value: 'assignedBy'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'assignedDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'assignedTypeId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'companyCode'),
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
                            name: NameNode(value: 'assetType'),
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
                        name: NameNode(value: 'jobType'),
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
                        name: NameNode(value: 'referenceType'),
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
                        name: NameNode(value: 'isDigitalSignatureRequired'),
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

class Query$GetAssignedJobs$jobFormsForYard {
  Query$GetAssignedJobs$jobFormsForYard({
    this.filteredForUser,
    this.$__typename = 'JobForms',
  });

  factory Query$GetAssignedJobs$jobFormsForYard.fromJson(
      Map<String, dynamic> json) {
    final l$filteredForUser = json['filteredForUser'];
    final l$$__typename = json['__typename'];
    return Query$GetAssignedJobs$jobFormsForYard(
      filteredForUser: l$filteredForUser == null
          ? null
          : Query$GetAssignedJobs$jobFormsForYard$filteredForUser.fromJson(
              (l$filteredForUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAssignedJobs$jobFormsForYard$filteredForUser? filteredForUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$filteredForUser = filteredForUser;
    _resultData['filteredForUser'] = l$filteredForUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$filteredForUser = filteredForUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$filteredForUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAssignedJobs$jobFormsForYard) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filteredForUser = filteredForUser;
    final lOther$filteredForUser = other.filteredForUser;
    if (l$filteredForUser != lOther$filteredForUser) {
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

extension UtilityExtension$Query$GetAssignedJobs$jobFormsForYard
    on Query$GetAssignedJobs$jobFormsForYard {
  CopyWith$Query$GetAssignedJobs$jobFormsForYard<
          Query$GetAssignedJobs$jobFormsForYard>
      get copyWith => CopyWith$Query$GetAssignedJobs$jobFormsForYard(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAssignedJobs$jobFormsForYard<TRes> {
  factory CopyWith$Query$GetAssignedJobs$jobFormsForYard(
    Query$GetAssignedJobs$jobFormsForYard instance,
    TRes Function(Query$GetAssignedJobs$jobFormsForYard) then,
  ) = _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard;

  factory CopyWith$Query$GetAssignedJobs$jobFormsForYard.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard;

  TRes call({
    Query$GetAssignedJobs$jobFormsForYard$filteredForUser? filteredForUser,
    String? $__typename,
  });
  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser<TRes>
      get filteredForUser;
}

class _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard<TRes>
    implements CopyWith$Query$GetAssignedJobs$jobFormsForYard<TRes> {
  _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard(
    this._instance,
    this._then,
  );

  final Query$GetAssignedJobs$jobFormsForYard _instance;

  final TRes Function(Query$GetAssignedJobs$jobFormsForYard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filteredForUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAssignedJobs$jobFormsForYard(
        filteredForUser: filteredForUser == _undefined
            ? _instance.filteredForUser
            : (filteredForUser
                as Query$GetAssignedJobs$jobFormsForYard$filteredForUser?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser<TRes>
      get filteredForUser {
    final local$filteredForUser = _instance.filteredForUser;
    return local$filteredForUser == null
        ? CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser.stub(
            _then(_instance))
        : CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser(
            local$filteredForUser, (e) => call(filteredForUser: e));
  }
}

class _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard<TRes>
    implements CopyWith$Query$GetAssignedJobs$jobFormsForYard<TRes> {
  _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard(this._res);

  TRes _res;

  call({
    Query$GetAssignedJobs$jobFormsForYard$filteredForUser? filteredForUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser<TRes>
      get filteredForUser =>
          CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser.stub(
              _res);
}

class Query$GetAssignedJobs$jobFormsForYard$filteredForUser {
  Query$GetAssignedJobs$jobFormsForYard$filteredForUser({
    this.nodes,
    required this.pageInfo,
    this.$__typename = 'FilteredForUserConnection',
  });

  factory Query$GetAssignedJobs$jobFormsForYard$filteredForUser.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetAssignedJobs$jobFormsForYard$filteredForUser(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo
          .fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes?>?
      nodes;

  final Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo pageInfo;

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
    if (!(other is Query$GetAssignedJobs$jobFormsForYard$filteredForUser) ||
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

extension UtilityExtension$Query$GetAssignedJobs$jobFormsForYard$filteredForUser
    on Query$GetAssignedJobs$jobFormsForYard$filteredForUser {
  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser<
          Query$GetAssignedJobs$jobFormsForYard$filteredForUser>
      get copyWith =>
          CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser<
    TRes> {
  factory CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser(
    Query$GetAssignedJobs$jobFormsForYard$filteredForUser instance,
    TRes Function(Query$GetAssignedJobs$jobFormsForYard$filteredForUser) then,
  ) = _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser;

  factory CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser;

  TRes call({
    List<Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes?>? nodes,
    Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes?>? Function(
              Iterable<
                  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes<
                      Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes>?>?)
          _fn);
  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser<TRes>
    implements
        CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser<TRes> {
  _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser(
    this._instance,
    this._then,
  );

  final Query$GetAssignedJobs$jobFormsForYard$filteredForUser _instance;

  final TRes Function(Query$GetAssignedJobs$jobFormsForYard$filteredForUser)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAssignedJobs$jobFormsForYard$filteredForUser(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<
                Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes?>?),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes<
                          Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser<
        TRes>
    implements
        CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser<TRes> {
  _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser(
      this._res);

  TRes _res;

  call({
    List<Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes?>? nodes,
    Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;

  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo
              .stub(_res);
}

class Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes {
  Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes({
    this.template,
    this.scheduledItemId,
    this.job,
    this.$__typename = 'ScheduledJobForm',
  });

  factory Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$template = json['template'];
    final l$scheduledItemId = json['scheduledItemId'];
    final l$job = json['job'];
    final l$$__typename = json['__typename'];
    return Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes(
      template: l$template == null
          ? null
          : Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template
              .fromJson((l$template as Map<String, dynamic>)),
      scheduledItemId: (l$scheduledItemId as String?),
      job: l$job == null
          ? null
          : Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job
              .fromJson((l$job as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template?
      template;

  final String? scheduledItemId;

  final Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job? job;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$template = template;
    _resultData['template'] = l$template?.toJson();
    final l$scheduledItemId = scheduledItemId;
    _resultData['scheduledItemId'] = l$scheduledItemId;
    final l$job = job;
    _resultData['job'] = l$job?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$template = template;
    final l$scheduledItemId = scheduledItemId;
    final l$job = job;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$template,
      l$scheduledItemId,
      l$job,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$template = template;
    final lOther$template = other.template;
    if (l$template != lOther$template) {
      return false;
    }
    final l$scheduledItemId = scheduledItemId;
    final lOther$scheduledItemId = other.scheduledItemId;
    if (l$scheduledItemId != lOther$scheduledItemId) {
      return false;
    }
    final l$job = job;
    final lOther$job = other.job;
    if (l$job != lOther$job) {
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

extension UtilityExtension$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes
    on Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes {
  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes<
          Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes>
      get copyWith =>
          CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes<
    TRes> {
  factory CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes(
    Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes instance,
    TRes Function(Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes)
        then,
  ) = _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes;

  factory CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes;

  TRes call({
    Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template?
        template,
    String? scheduledItemId,
    Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job? job,
    String? $__typename,
  });
  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template<
      TRes> get template;
  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job<TRes>
      get job;
}

class _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes<
        TRes>
    implements
        CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes<
            TRes> {
  _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes(
    this._instance,
    this._then,
  );

  final Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes _instance;

  final TRes Function(
      Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? template = _undefined,
    Object? scheduledItemId = _undefined,
    Object? job = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes(
        template: template == _undefined
            ? _instance.template
            : (template
                as Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template?),
        scheduledItemId: scheduledItemId == _undefined
            ? _instance.scheduledItemId
            : (scheduledItemId as String?),
        job: job == _undefined
            ? _instance.job
            : (job
                as Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template<
      TRes> get template {
    final local$template = _instance.template;
    return local$template == null
        ? CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template
            .stub(_then(_instance))
        : CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template(
            local$template, (e) => call(template: e));
  }

  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job<TRes>
      get job {
    final local$job = _instance.job;
    return local$job == null
        ? CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job
            .stub(_then(_instance))
        : CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job(
            local$job, (e) => call(job: e));
  }
}

class _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes<
        TRes>
    implements
        CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes<
            TRes> {
  _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes(
      this._res);

  TRes _res;

  call({
    Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template?
        template,
    String? scheduledItemId,
    Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job? job,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template<
          TRes>
      get template =>
          CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template
              .stub(_res);

  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job<TRes>
      get job =>
          CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job
              .stub(_res);
}

class Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template {
  Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template({
    required this.id,
    this.templateId,
    required this.version,
    this.title,
    this.description,
    this.referenceId,
    required this.isDigitalSignatureRequired,
    required this.isEmailNotificationRequired,
    required this.sendEmailOnFailedQuestions,
    this.emailIds,
    this.assignFailedQuestionToTeam,
    this.assignFailedQuestionToTeamId,
    this.$__typename = 'FormTemplate',
  });

  factory Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$templateId = json['templateId'];
    final l$version = json['version'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$referenceId = json['referenceId'];
    final l$isDigitalSignatureRequired = json['isDigitalSignatureRequired'];
    final l$isEmailNotificationRequired = json['isEmailNotificationRequired'];
    final l$sendEmailOnFailedQuestions = json['sendEmailOnFailedQuestions'];
    final l$emailIds = json['emailIds'];
    final l$assignFailedQuestionToTeam = json['assignFailedQuestionToTeam'];
    final l$assignFailedQuestionToTeamId = json['assignFailedQuestionToTeamId'];
    final l$$__typename = json['__typename'];
    return Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template(
      id: (l$id as String),
      templateId: (l$templateId as String?),
      version: (l$version as int),
      title: (l$title as String?),
      description: (l$description as String?),
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

  final String id;

  final String? templateId;

  final int version;

  final String? title;

  final String? description;

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
    final l$id = id;
    final l$templateId = templateId;
    final l$version = version;
    final l$title = title;
    final l$description = description;
    final l$referenceId = referenceId;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final l$isEmailNotificationRequired = isEmailNotificationRequired;
    final l$sendEmailOnFailedQuestions = sendEmailOnFailedQuestions;
    final l$emailIds = emailIds;
    final l$assignFailedQuestionToTeam = assignFailedQuestionToTeam;
    final l$assignFailedQuestionToTeamId = assignFailedQuestionToTeamId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$templateId,
      l$version,
      l$title,
      l$description,
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
            is Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template
    on Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template {
  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template<
          Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template>
      get copyWith =>
          CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template<
    TRes> {
  factory CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template(
    Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template
        instance,
    TRes Function(
            Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template)
        then,
  ) = _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template;

  factory CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template;

  TRes call({
    String? id,
    String? templateId,
    int? version,
    String? title,
    String? description,
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

class _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template<
        TRes>
    implements
        CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template<
            TRes> {
  _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template(
    this._instance,
    this._then,
  );

  final Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template
      _instance;

  final TRes Function(
          Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? templateId = _undefined,
    Object? version = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? referenceId = _undefined,
    Object? isDigitalSignatureRequired = _undefined,
    Object? isEmailNotificationRequired = _undefined,
    Object? sendEmailOnFailedQuestions = _undefined,
    Object? emailIds = _undefined,
    Object? assignFailedQuestionToTeam = _undefined,
    Object? assignFailedQuestionToTeamId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template(
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

class _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template<
        TRes>
    implements
        CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template<
            TRes> {
  _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$template(
      this._res);

  TRes _res;

  call({
    String? id,
    String? templateId,
    int? version,
    String? title,
    String? description,
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

class Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job {
  Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job({
    required this.workOrderId,
    this.workOrderDescription,
    this.originalDescription,
    this.assignedTo,
    this.assignedBy,
    this.assignedDate,
    this.assignedTypeId,
    required this.companyCode,
    this.asset,
    required this.expectedStartDate,
    required this.expectedEndDate,
    required this.jobType,
    required this.jobTrade,
    this.jobTypeVariant,
    this.referenceId,
    this.referenceType,
    required this.yardCode,
    required this.depotNo,
    required this.isDigitalSignatureRequired,
    required this.scheduleItemType,
    this.category,
    required this.jobPriority,
    this.notes,
    this.assignedToTeam,
    this.assignedToTeamId,
    this.$__typename = 'WorkOrderInfo',
  });

  factory Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job.fromJson(
      Map<String, dynamic> json) {
    final l$workOrderId = json['workOrderId'];
    final l$workOrderDescription = json['workOrderDescription'];
    final l$originalDescription = json['originalDescription'];
    final l$assignedTo = json['assignedTo'];
    final l$assignedBy = json['assignedBy'];
    final l$assignedDate = json['assignedDate'];
    final l$assignedTypeId = json['assignedTypeId'];
    final l$companyCode = json['companyCode'];
    final l$asset = json['asset'];
    final l$expectedStartDate = json['expectedStartDate'];
    final l$expectedEndDate = json['expectedEndDate'];
    final l$jobType = json['jobType'];
    final l$jobTrade = json['jobTrade'];
    final l$jobTypeVariant = json['jobTypeVariant'];
    final l$referenceId = json['referenceId'];
    final l$referenceType = json['referenceType'];
    final l$yardCode = json['yardCode'];
    final l$depotNo = json['depotNo'];
    final l$isDigitalSignatureRequired = json['isDigitalSignatureRequired'];
    final l$scheduleItemType = json['scheduleItemType'];
    final l$category = json['category'];
    final l$jobPriority = json['jobPriority'];
    final l$notes = json['notes'];
    final l$assignedToTeam = json['assignedToTeam'];
    final l$assignedToTeamId = json['assignedToTeamId'];
    final l$$__typename = json['__typename'];
    return Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job(
      workOrderId: (l$workOrderId as String),
      workOrderDescription: (l$workOrderDescription as String?),
      originalDescription: (l$originalDescription as String?),
      assignedTo: (l$assignedTo as String?),
      assignedBy: (l$assignedBy as String?),
      assignedDate: (l$assignedDate as String?),
      assignedTypeId: (l$assignedTypeId as int?),
      companyCode: (l$companyCode as String),
      asset: l$asset == null
          ? null
          : Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset
              .fromJson((l$asset as Map<String, dynamic>)),
      expectedStartDate: (l$expectedStartDate as String),
      expectedEndDate: (l$expectedEndDate as String),
      jobType: (l$jobType as String),
      jobTrade: (l$jobTrade as String),
      jobTypeVariant: (l$jobTypeVariant as String?),
      referenceId: (l$referenceId as String?),
      referenceType: (l$referenceType as String?),
      yardCode: (l$yardCode as String),
      depotNo: (l$depotNo as String),
      isDigitalSignatureRequired: (l$isDigitalSignatureRequired as bool),
      scheduleItemType: (l$scheduleItemType as String),
      category: (l$category as String?),
      jobPriority: (l$jobPriority as String),
      notes: (l$notes as String?),
      assignedToTeam: (l$assignedToTeam as String?),
      assignedToTeamId: (l$assignedToTeamId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String workOrderId;

  final String? workOrderDescription;

  final String? originalDescription;

  final String? assignedTo;

  final String? assignedBy;

  final String? assignedDate;

  final int? assignedTypeId;

  final String companyCode;

  final Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset?
      asset;

  final String expectedStartDate;

  final String expectedEndDate;

  final String jobType;

  final String jobTrade;

  final String? jobTypeVariant;

  final String? referenceId;

  final String? referenceType;

  final String yardCode;

  final String depotNo;

  final bool isDigitalSignatureRequired;

  final String scheduleItemType;

  final String? category;

  final String jobPriority;

  final String? notes;

  final String? assignedToTeam;

  final String? assignedToTeamId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$workOrderId = workOrderId;
    _resultData['workOrderId'] = l$workOrderId;
    final l$workOrderDescription = workOrderDescription;
    _resultData['workOrderDescription'] = l$workOrderDescription;
    final l$originalDescription = originalDescription;
    _resultData['originalDescription'] = l$originalDescription;
    final l$assignedTo = assignedTo;
    _resultData['assignedTo'] = l$assignedTo;
    final l$assignedBy = assignedBy;
    _resultData['assignedBy'] = l$assignedBy;
    final l$assignedDate = assignedDate;
    _resultData['assignedDate'] = l$assignedDate;
    final l$assignedTypeId = assignedTypeId;
    _resultData['assignedTypeId'] = l$assignedTypeId;
    final l$companyCode = companyCode;
    _resultData['companyCode'] = l$companyCode;
    final l$asset = asset;
    _resultData['asset'] = l$asset?.toJson();
    final l$expectedStartDate = expectedStartDate;
    _resultData['expectedStartDate'] = l$expectedStartDate;
    final l$expectedEndDate = expectedEndDate;
    _resultData['expectedEndDate'] = l$expectedEndDate;
    final l$jobType = jobType;
    _resultData['jobType'] = l$jobType;
    final l$jobTrade = jobTrade;
    _resultData['jobTrade'] = l$jobTrade;
    final l$jobTypeVariant = jobTypeVariant;
    _resultData['jobTypeVariant'] = l$jobTypeVariant;
    final l$referenceId = referenceId;
    _resultData['referenceId'] = l$referenceId;
    final l$referenceType = referenceType;
    _resultData['referenceType'] = l$referenceType;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    _resultData['isDigitalSignatureRequired'] = l$isDigitalSignatureRequired;
    final l$scheduleItemType = scheduleItemType;
    _resultData['scheduleItemType'] = l$scheduleItemType;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$jobPriority = jobPriority;
    _resultData['jobPriority'] = l$jobPriority;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$assignedToTeam = assignedToTeam;
    _resultData['assignedToTeam'] = l$assignedToTeam;
    final l$assignedToTeamId = assignedToTeamId;
    _resultData['assignedToTeamId'] = l$assignedToTeamId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$workOrderId = workOrderId;
    final l$workOrderDescription = workOrderDescription;
    final l$originalDescription = originalDescription;
    final l$assignedTo = assignedTo;
    final l$assignedBy = assignedBy;
    final l$assignedDate = assignedDate;
    final l$assignedTypeId = assignedTypeId;
    final l$companyCode = companyCode;
    final l$asset = asset;
    final l$expectedStartDate = expectedStartDate;
    final l$expectedEndDate = expectedEndDate;
    final l$jobType = jobType;
    final l$jobTrade = jobTrade;
    final l$jobTypeVariant = jobTypeVariant;
    final l$referenceId = referenceId;
    final l$referenceType = referenceType;
    final l$yardCode = yardCode;
    final l$depotNo = depotNo;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final l$scheduleItemType = scheduleItemType;
    final l$category = category;
    final l$jobPriority = jobPriority;
    final l$notes = notes;
    final l$assignedToTeam = assignedToTeam;
    final l$assignedToTeamId = assignedToTeamId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$workOrderId,
      l$workOrderDescription,
      l$originalDescription,
      l$assignedTo,
      l$assignedBy,
      l$assignedDate,
      l$assignedTypeId,
      l$companyCode,
      l$asset,
      l$expectedStartDate,
      l$expectedEndDate,
      l$jobType,
      l$jobTrade,
      l$jobTypeVariant,
      l$referenceId,
      l$referenceType,
      l$yardCode,
      l$depotNo,
      l$isDigitalSignatureRequired,
      l$scheduleItemType,
      l$category,
      l$jobPriority,
      l$notes,
      l$assignedToTeam,
      l$assignedToTeamId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job) ||
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
    final l$originalDescription = originalDescription;
    final lOther$originalDescription = other.originalDescription;
    if (l$originalDescription != lOther$originalDescription) {
      return false;
    }
    final l$assignedTo = assignedTo;
    final lOther$assignedTo = other.assignedTo;
    if (l$assignedTo != lOther$assignedTo) {
      return false;
    }
    final l$assignedBy = assignedBy;
    final lOther$assignedBy = other.assignedBy;
    if (l$assignedBy != lOther$assignedBy) {
      return false;
    }
    final l$assignedDate = assignedDate;
    final lOther$assignedDate = other.assignedDate;
    if (l$assignedDate != lOther$assignedDate) {
      return false;
    }
    final l$assignedTypeId = assignedTypeId;
    final lOther$assignedTypeId = other.assignedTypeId;
    if (l$assignedTypeId != lOther$assignedTypeId) {
      return false;
    }
    final l$companyCode = companyCode;
    final lOther$companyCode = other.companyCode;
    if (l$companyCode != lOther$companyCode) {
      return false;
    }
    final l$asset = asset;
    final lOther$asset = other.asset;
    if (l$asset != lOther$asset) {
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
    final l$jobType = jobType;
    final lOther$jobType = other.jobType;
    if (l$jobType != lOther$jobType) {
      return false;
    }
    final l$jobTrade = jobTrade;
    final lOther$jobTrade = other.jobTrade;
    if (l$jobTrade != lOther$jobTrade) {
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
    final l$referenceType = referenceType;
    final lOther$referenceType = other.referenceType;
    if (l$referenceType != lOther$referenceType) {
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
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final lOther$isDigitalSignatureRequired = other.isDigitalSignatureRequired;
    if (l$isDigitalSignatureRequired != lOther$isDigitalSignatureRequired) {
      return false;
    }
    final l$scheduleItemType = scheduleItemType;
    final lOther$scheduleItemType = other.scheduleItemType;
    if (l$scheduleItemType != lOther$scheduleItemType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job
    on Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job {
  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job<
          Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job>
      get copyWith =>
          CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job<
    TRes> {
  factory CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job(
    Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job instance,
    TRes Function(
            Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job)
        then,
  ) = _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job;

  factory CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job;

  TRes call({
    String? workOrderId,
    String? workOrderDescription,
    String? originalDescription,
    String? assignedTo,
    String? assignedBy,
    String? assignedDate,
    int? assignedTypeId,
    String? companyCode,
    Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset?
        asset,
    String? expectedStartDate,
    String? expectedEndDate,
    String? jobType,
    String? jobTrade,
    String? jobTypeVariant,
    String? referenceId,
    String? referenceType,
    String? yardCode,
    String? depotNo,
    bool? isDigitalSignatureRequired,
    String? scheduleItemType,
    String? category,
    String? jobPriority,
    String? notes,
    String? assignedToTeam,
    String? assignedToTeamId,
    String? $__typename,
  });
  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset<
      TRes> get asset;
}

class _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job<
        TRes>
    implements
        CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job<
            TRes> {
  _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job(
    this._instance,
    this._then,
  );

  final Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job
      _instance;

  final TRes Function(
      Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? workOrderId = _undefined,
    Object? workOrderDescription = _undefined,
    Object? originalDescription = _undefined,
    Object? assignedTo = _undefined,
    Object? assignedBy = _undefined,
    Object? assignedDate = _undefined,
    Object? assignedTypeId = _undefined,
    Object? companyCode = _undefined,
    Object? asset = _undefined,
    Object? expectedStartDate = _undefined,
    Object? expectedEndDate = _undefined,
    Object? jobType = _undefined,
    Object? jobTrade = _undefined,
    Object? jobTypeVariant = _undefined,
    Object? referenceId = _undefined,
    Object? referenceType = _undefined,
    Object? yardCode = _undefined,
    Object? depotNo = _undefined,
    Object? isDigitalSignatureRequired = _undefined,
    Object? scheduleItemType = _undefined,
    Object? category = _undefined,
    Object? jobPriority = _undefined,
    Object? notes = _undefined,
    Object? assignedToTeam = _undefined,
    Object? assignedToTeamId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job(
        workOrderId: workOrderId == _undefined || workOrderId == null
            ? _instance.workOrderId
            : (workOrderId as String),
        workOrderDescription: workOrderDescription == _undefined
            ? _instance.workOrderDescription
            : (workOrderDescription as String?),
        originalDescription: originalDescription == _undefined
            ? _instance.originalDescription
            : (originalDescription as String?),
        assignedTo: assignedTo == _undefined
            ? _instance.assignedTo
            : (assignedTo as String?),
        assignedBy: assignedBy == _undefined
            ? _instance.assignedBy
            : (assignedBy as String?),
        assignedDate: assignedDate == _undefined
            ? _instance.assignedDate
            : (assignedDate as String?),
        assignedTypeId: assignedTypeId == _undefined
            ? _instance.assignedTypeId
            : (assignedTypeId as int?),
        companyCode: companyCode == _undefined || companyCode == null
            ? _instance.companyCode
            : (companyCode as String),
        asset: asset == _undefined
            ? _instance.asset
            : (asset
                as Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset?),
        expectedStartDate:
            expectedStartDate == _undefined || expectedStartDate == null
                ? _instance.expectedStartDate
                : (expectedStartDate as String),
        expectedEndDate:
            expectedEndDate == _undefined || expectedEndDate == null
                ? _instance.expectedEndDate
                : (expectedEndDate as String),
        jobType: jobType == _undefined || jobType == null
            ? _instance.jobType
            : (jobType as String),
        jobTrade: jobTrade == _undefined || jobTrade == null
            ? _instance.jobTrade
            : (jobTrade as String),
        jobTypeVariant: jobTypeVariant == _undefined
            ? _instance.jobTypeVariant
            : (jobTypeVariant as String?),
        referenceId: referenceId == _undefined
            ? _instance.referenceId
            : (referenceId as String?),
        referenceType: referenceType == _undefined
            ? _instance.referenceType
            : (referenceType as String?),
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        depotNo: depotNo == _undefined || depotNo == null
            ? _instance.depotNo
            : (depotNo as String),
        isDigitalSignatureRequired: isDigitalSignatureRequired == _undefined ||
                isDigitalSignatureRequired == null
            ? _instance.isDigitalSignatureRequired
            : (isDigitalSignatureRequired as bool),
        scheduleItemType:
            scheduleItemType == _undefined || scheduleItemType == null
                ? _instance.scheduleItemType
                : (scheduleItemType as String),
        category:
            category == _undefined ? _instance.category : (category as String?),
        jobPriority: jobPriority == _undefined || jobPriority == null
            ? _instance.jobPriority
            : (jobPriority as String),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        assignedToTeam: assignedToTeam == _undefined
            ? _instance.assignedToTeam
            : (assignedToTeam as String?),
        assignedToTeamId: assignedToTeamId == _undefined
            ? _instance.assignedToTeamId
            : (assignedToTeamId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset<
      TRes> get asset {
    final local$asset = _instance.asset;
    return local$asset == null
        ? CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset
            .stub(_then(_instance))
        : CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset(
            local$asset, (e) => call(asset: e));
  }
}

class _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job<
        TRes>
    implements
        CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job<
            TRes> {
  _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job(
      this._res);

  TRes _res;

  call({
    String? workOrderId,
    String? workOrderDescription,
    String? originalDescription,
    String? assignedTo,
    String? assignedBy,
    String? assignedDate,
    int? assignedTypeId,
    String? companyCode,
    Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset?
        asset,
    String? expectedStartDate,
    String? expectedEndDate,
    String? jobType,
    String? jobTrade,
    String? jobTypeVariant,
    String? referenceId,
    String? referenceType,
    String? yardCode,
    String? depotNo,
    bool? isDigitalSignatureRequired,
    String? scheduleItemType,
    String? category,
    String? jobPriority,
    String? notes,
    String? assignedToTeam,
    String? assignedToTeamId,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset<
          TRes>
      get asset =>
          CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset
              .stub(_res);
}

class Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset {
  Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset({
    required this.assetCode,
    this.assetType,
    this.name,
    required this.yardCode,
    required this.depotNo,
    this.$__typename = 'Asset',
  });

  factory Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset.fromJson(
      Map<String, dynamic> json) {
    final l$assetCode = json['assetCode'];
    final l$assetType = json['assetType'];
    final l$name = json['name'];
    final l$yardCode = json['yardCode'];
    final l$depotNo = json['depotNo'];
    final l$$__typename = json['__typename'];
    return Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset(
      assetCode: (l$assetCode as String),
      assetType: (l$assetType as String?),
      name: (l$name as String?),
      yardCode: (l$yardCode as String),
      depotNo: (l$depotNo as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String assetCode;

  final String? assetType;

  final String? name;

  final String yardCode;

  final String depotNo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assetCode = assetCode;
    _resultData['assetCode'] = l$assetCode;
    final l$assetType = assetType;
    _resultData['assetType'] = l$assetType;
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
    final l$assetType = assetType;
    final l$name = name;
    final l$yardCode = yardCode;
    final l$depotNo = depotNo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$assetCode,
      l$assetType,
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
    if (!(other
            is Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (l$assetCode != lOther$assetCode) {
      return false;
    }
    final l$assetType = assetType;
    final lOther$assetType = other.assetType;
    if (l$assetType != lOther$assetType) {
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

extension UtilityExtension$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset
    on Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset {
  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset<
          Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset>
      get copyWith =>
          CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset<
    TRes> {
  factory CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset(
    Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset
        instance,
    TRes Function(
            Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset)
        then,
  ) = _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset;

  factory CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset;

  TRes call({
    String? assetCode,
    String? assetType,
    String? name,
    String? yardCode,
    String? depotNo,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset<
        TRes>
    implements
        CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset<
            TRes> {
  _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset(
    this._instance,
    this._then,
  );

  final Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset
      _instance;

  final TRes Function(
          Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetCode = _undefined,
    Object? assetType = _undefined,
    Object? name = _undefined,
    Object? yardCode = _undefined,
    Object? depotNo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset(
        assetCode: assetCode == _undefined || assetCode == null
            ? _instance.assetCode
            : (assetCode as String),
        assetType: assetType == _undefined
            ? _instance.assetType
            : (assetType as String?),
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

class _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset<
        TRes>
    implements
        CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset<
            TRes> {
  _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$nodes$job$asset(
      this._res);

  TRes _res;

  call({
    String? assetCode,
    String? assetType,
    String? name,
    String? yardCode,
    String? depotNo,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo {
  Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo({
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo(
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
            is Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo) ||
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

extension UtilityExtension$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo
    on Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo {
  CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo<
          Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo>
      get copyWith =>
          CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo<
    TRes> {
  factory CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo(
    Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo instance,
    TRes Function(
            Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo)
        then,
  ) = _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo;

  factory CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo<
        TRes>
    implements
        CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo<
            TRes> {
  _CopyWithImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo
      _instance;

  final TRes Function(
      Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo(
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

class _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo<
        TRes>
    implements
        CopyWith$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$GetAssignedJobs$jobFormsForYard$filteredForUser$pageInfo(
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
