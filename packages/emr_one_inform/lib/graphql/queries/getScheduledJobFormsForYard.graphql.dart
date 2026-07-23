import 'package:gql/ast.dart';

class Variables$Query$GetScheduledJobFormsForYard {
  factory Variables$Query$GetScheduledJobFormsForYard({
    int? firstSc,
    String? afterSc,
    int? lastSc,
    String? beforeSc,
    required String yardCode,
    String? startDate,
    String? endDate,
    bool? filterForUser,
    bool? forcedUpdate,
    String? jobId,
    String? assetCode,
  }) =>
      Variables$Query$GetScheduledJobFormsForYard._({
        if (firstSc != null) r'firstSc': firstSc,
        if (afterSc != null) r'afterSc': afterSc,
        if (lastSc != null) r'lastSc': lastSc,
        if (beforeSc != null) r'beforeSc': beforeSc,
        r'yardCode': yardCode,
        if (startDate != null) r'startDate': startDate,
        if (endDate != null) r'endDate': endDate,
        if (filterForUser != null) r'filterForUser': filterForUser,
        if (forcedUpdate != null) r'forcedUpdate': forcedUpdate,
        if (jobId != null) r'jobId': jobId,
        if (assetCode != null) r'assetCode': assetCode,
      });

  Variables$Query$GetScheduledJobFormsForYard._(this._$data);

  factory Variables$Query$GetScheduledJobFormsForYard.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('firstSc')) {
      final l$firstSc = data['firstSc'];
      result$data['firstSc'] = (l$firstSc as int?);
    }
    if (data.containsKey('afterSc')) {
      final l$afterSc = data['afterSc'];
      result$data['afterSc'] = (l$afterSc as String?);
    }
    if (data.containsKey('lastSc')) {
      final l$lastSc = data['lastSc'];
      result$data['lastSc'] = (l$lastSc as int?);
    }
    if (data.containsKey('beforeSc')) {
      final l$beforeSc = data['beforeSc'];
      result$data['beforeSc'] = (l$beforeSc as String?);
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
    if (data.containsKey('forcedUpdate')) {
      final l$forcedUpdate = data['forcedUpdate'];
      result$data['forcedUpdate'] = (l$forcedUpdate as bool?);
    }
    if (data.containsKey('jobId')) {
      final l$jobId = data['jobId'];
      result$data['jobId'] = (l$jobId as String?);
    }
    if (data.containsKey('assetCode')) {
      final l$assetCode = data['assetCode'];
      result$data['assetCode'] = (l$assetCode as String?);
    }
    return Variables$Query$GetScheduledJobFormsForYard._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get firstSc => (_$data['firstSc'] as int?);

  String? get afterSc => (_$data['afterSc'] as String?);

  int? get lastSc => (_$data['lastSc'] as int?);

  String? get beforeSc => (_$data['beforeSc'] as String?);

  String get yardCode => (_$data['yardCode'] as String);

  String? get startDate => (_$data['startDate'] as String?);

  String? get endDate => (_$data['endDate'] as String?);

  bool? get filterForUser => (_$data['filterForUser'] as bool?);

  bool? get forcedUpdate => (_$data['forcedUpdate'] as bool?);

  String? get jobId => (_$data['jobId'] as String?);

  String? get assetCode => (_$data['assetCode'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('firstSc')) {
      final l$firstSc = firstSc;
      result$data['firstSc'] = l$firstSc;
    }
    if (_$data.containsKey('afterSc')) {
      final l$afterSc = afterSc;
      result$data['afterSc'] = l$afterSc;
    }
    if (_$data.containsKey('lastSc')) {
      final l$lastSc = lastSc;
      result$data['lastSc'] = l$lastSc;
    }
    if (_$data.containsKey('beforeSc')) {
      final l$beforeSc = beforeSc;
      result$data['beforeSc'] = l$beforeSc;
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
    if (_$data.containsKey('forcedUpdate')) {
      final l$forcedUpdate = forcedUpdate;
      result$data['forcedUpdate'] = l$forcedUpdate;
    }
    if (_$data.containsKey('jobId')) {
      final l$jobId = jobId;
      result$data['jobId'] = l$jobId;
    }
    if (_$data.containsKey('assetCode')) {
      final l$assetCode = assetCode;
      result$data['assetCode'] = l$assetCode;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetScheduledJobFormsForYard<
          Variables$Query$GetScheduledJobFormsForYard>
      get copyWith => CopyWith$Variables$Query$GetScheduledJobFormsForYard(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetScheduledJobFormsForYard) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstSc = firstSc;
    final lOther$firstSc = other.firstSc;
    if (_$data.containsKey('firstSc') != other._$data.containsKey('firstSc')) {
      return false;
    }
    if (l$firstSc != lOther$firstSc) {
      return false;
    }
    final l$afterSc = afterSc;
    final lOther$afterSc = other.afterSc;
    if (_$data.containsKey('afterSc') != other._$data.containsKey('afterSc')) {
      return false;
    }
    if (l$afterSc != lOther$afterSc) {
      return false;
    }
    final l$lastSc = lastSc;
    final lOther$lastSc = other.lastSc;
    if (_$data.containsKey('lastSc') != other._$data.containsKey('lastSc')) {
      return false;
    }
    if (l$lastSc != lOther$lastSc) {
      return false;
    }
    final l$beforeSc = beforeSc;
    final lOther$beforeSc = other.beforeSc;
    if (_$data.containsKey('beforeSc') !=
        other._$data.containsKey('beforeSc')) {
      return false;
    }
    if (l$beforeSc != lOther$beforeSc) {
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
    final l$forcedUpdate = forcedUpdate;
    final lOther$forcedUpdate = other.forcedUpdate;
    if (_$data.containsKey('forcedUpdate') !=
        other._$data.containsKey('forcedUpdate')) {
      return false;
    }
    if (l$forcedUpdate != lOther$forcedUpdate) {
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
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (_$data.containsKey('assetCode') !=
        other._$data.containsKey('assetCode')) {
      return false;
    }
    if (l$assetCode != lOther$assetCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$firstSc = firstSc;
    final l$afterSc = afterSc;
    final l$lastSc = lastSc;
    final l$beforeSc = beforeSc;
    final l$yardCode = yardCode;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$filterForUser = filterForUser;
    final l$forcedUpdate = forcedUpdate;
    final l$jobId = jobId;
    final l$assetCode = assetCode;
    return Object.hashAll([
      _$data.containsKey('firstSc') ? l$firstSc : const {},
      _$data.containsKey('afterSc') ? l$afterSc : const {},
      _$data.containsKey('lastSc') ? l$lastSc : const {},
      _$data.containsKey('beforeSc') ? l$beforeSc : const {},
      l$yardCode,
      _$data.containsKey('startDate') ? l$startDate : const {},
      _$data.containsKey('endDate') ? l$endDate : const {},
      _$data.containsKey('filterForUser') ? l$filterForUser : const {},
      _$data.containsKey('forcedUpdate') ? l$forcedUpdate : const {},
      _$data.containsKey('jobId') ? l$jobId : const {},
      _$data.containsKey('assetCode') ? l$assetCode : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetScheduledJobFormsForYard<TRes> {
  factory CopyWith$Variables$Query$GetScheduledJobFormsForYard(
    Variables$Query$GetScheduledJobFormsForYard instance,
    TRes Function(Variables$Query$GetScheduledJobFormsForYard) then,
  ) = _CopyWithImpl$Variables$Query$GetScheduledJobFormsForYard;

  factory CopyWith$Variables$Query$GetScheduledJobFormsForYard.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetScheduledJobFormsForYard;

  TRes call({
    int? firstSc,
    String? afterSc,
    int? lastSc,
    String? beforeSc,
    String? yardCode,
    String? startDate,
    String? endDate,
    bool? filterForUser,
    bool? forcedUpdate,
    String? jobId,
    String? assetCode,
  });
}

class _CopyWithImpl$Variables$Query$GetScheduledJobFormsForYard<TRes>
    implements CopyWith$Variables$Query$GetScheduledJobFormsForYard<TRes> {
  _CopyWithImpl$Variables$Query$GetScheduledJobFormsForYard(
    this._instance,
    this._then,
  );

  final Variables$Query$GetScheduledJobFormsForYard _instance;

  final TRes Function(Variables$Query$GetScheduledJobFormsForYard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstSc = _undefined,
    Object? afterSc = _undefined,
    Object? lastSc = _undefined,
    Object? beforeSc = _undefined,
    Object? yardCode = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? filterForUser = _undefined,
    Object? forcedUpdate = _undefined,
    Object? jobId = _undefined,
    Object? assetCode = _undefined,
  }) =>
      _then(Variables$Query$GetScheduledJobFormsForYard._({
        ..._instance._$data,
        if (firstSc != _undefined) 'firstSc': (firstSc as int?),
        if (afterSc != _undefined) 'afterSc': (afterSc as String?),
        if (lastSc != _undefined) 'lastSc': (lastSc as int?),
        if (beforeSc != _undefined) 'beforeSc': (beforeSc as String?),
        if (yardCode != _undefined && yardCode != null)
          'yardCode': (yardCode as String),
        if (startDate != _undefined) 'startDate': (startDate as String?),
        if (endDate != _undefined) 'endDate': (endDate as String?),
        if (filterForUser != _undefined)
          'filterForUser': (filterForUser as bool?),
        if (forcedUpdate != _undefined) 'forcedUpdate': (forcedUpdate as bool?),
        if (jobId != _undefined) 'jobId': (jobId as String?),
        if (assetCode != _undefined) 'assetCode': (assetCode as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetScheduledJobFormsForYard<TRes>
    implements CopyWith$Variables$Query$GetScheduledJobFormsForYard<TRes> {
  _CopyWithStubImpl$Variables$Query$GetScheduledJobFormsForYard(this._res);

  TRes _res;

  call({
    int? firstSc,
    String? afterSc,
    int? lastSc,
    String? beforeSc,
    String? yardCode,
    String? startDate,
    String? endDate,
    bool? filterForUser,
    bool? forcedUpdate,
    String? jobId,
    String? assetCode,
  }) =>
      _res;
}

class Query$GetScheduledJobFormsForYard {
  Query$GetScheduledJobFormsForYard({
    required this.jobFormsForYard,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetScheduledJobFormsForYard.fromJson(
      Map<String, dynamic> json) {
    final l$jobFormsForYard = json['jobFormsForYard'];
    final l$$__typename = json['__typename'];
    return Query$GetScheduledJobFormsForYard(
      jobFormsForYard:
          Query$GetScheduledJobFormsForYard$jobFormsForYard.fromJson(
              (l$jobFormsForYard as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetScheduledJobFormsForYard$jobFormsForYard jobFormsForYard;

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
    if (!(other is Query$GetScheduledJobFormsForYard) ||
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

extension UtilityExtension$Query$GetScheduledJobFormsForYard
    on Query$GetScheduledJobFormsForYard {
  CopyWith$Query$GetScheduledJobFormsForYard<Query$GetScheduledJobFormsForYard>
      get copyWith => CopyWith$Query$GetScheduledJobFormsForYard(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetScheduledJobFormsForYard<TRes> {
  factory CopyWith$Query$GetScheduledJobFormsForYard(
    Query$GetScheduledJobFormsForYard instance,
    TRes Function(Query$GetScheduledJobFormsForYard) then,
  ) = _CopyWithImpl$Query$GetScheduledJobFormsForYard;

  factory CopyWith$Query$GetScheduledJobFormsForYard.stub(TRes res) =
      _CopyWithStubImpl$Query$GetScheduledJobFormsForYard;

  TRes call({
    Query$GetScheduledJobFormsForYard$jobFormsForYard? jobFormsForYard,
    String? $__typename,
  });
  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard<TRes>
      get jobFormsForYard;
}

class _CopyWithImpl$Query$GetScheduledJobFormsForYard<TRes>
    implements CopyWith$Query$GetScheduledJobFormsForYard<TRes> {
  _CopyWithImpl$Query$GetScheduledJobFormsForYard(
    this._instance,
    this._then,
  );

  final Query$GetScheduledJobFormsForYard _instance;

  final TRes Function(Query$GetScheduledJobFormsForYard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? jobFormsForYard = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetScheduledJobFormsForYard(
        jobFormsForYard:
            jobFormsForYard == _undefined || jobFormsForYard == null
                ? _instance.jobFormsForYard
                : (jobFormsForYard
                    as Query$GetScheduledJobFormsForYard$jobFormsForYard),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard<TRes>
      get jobFormsForYard {
    final local$jobFormsForYard = _instance.jobFormsForYard;
    return CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard(
        local$jobFormsForYard, (e) => call(jobFormsForYard: e));
  }
}

class _CopyWithStubImpl$Query$GetScheduledJobFormsForYard<TRes>
    implements CopyWith$Query$GetScheduledJobFormsForYard<TRes> {
  _CopyWithStubImpl$Query$GetScheduledJobFormsForYard(this._res);

  TRes _res;

  call({
    Query$GetScheduledJobFormsForYard$jobFormsForYard? jobFormsForYard,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard<TRes>
      get jobFormsForYard =>
          CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard.stub(_res);
}

const documentNodeQueryGetScheduledJobFormsForYard = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetScheduledJobFormsForYard'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'firstSc')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'afterSc')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastSc')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'beforeSc')),
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
        variable: VariableNode(name: NameNode(value: 'forcedUpdate')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'assetCode')),
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
            name: NameNode(value: 'forcedUpdate'),
            value: VariableNode(name: NameNode(value: 'forcedUpdate')),
          ),
          ArgumentNode(
            name: NameNode(value: 'jobId'),
            value: VariableNode(name: NameNode(value: 'jobId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'assetCode'),
            value: VariableNode(name: NameNode(value: 'assetCode')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'yardCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'scheduled'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'firstSc')),
              ),
              ArgumentNode(
                name: NameNode(value: 'after'),
                value: VariableNode(name: NameNode(value: 'afterSc')),
              ),
              ArgumentNode(
                name: NameNode(value: 'last'),
                value: VariableNode(name: NameNode(value: 'lastSc')),
              ),
              ArgumentNode(
                name: NameNode(value: 'before'),
                value: VariableNode(name: NameNode(value: 'beforeSc')),
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
                            name: NameNode(value: 'depotNo'),
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
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: 'workOrderId'),
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
                        name: NameNode(value: 'jobTrade'),
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
                        name: NameNode(value: 'isDigitalSignatureRequired'),
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
                        name: NameNode(value: 'scheduleItemType'),
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

class Query$GetScheduledJobFormsForYard$jobFormsForYard {
  Query$GetScheduledJobFormsForYard$jobFormsForYard({
    this.yardCode,
    this.scheduled,
    this.$__typename = 'JobForms',
  });

  factory Query$GetScheduledJobFormsForYard$jobFormsForYard.fromJson(
      Map<String, dynamic> json) {
    final l$yardCode = json['yardCode'];
    final l$scheduled = json['scheduled'];
    final l$$__typename = json['__typename'];
    return Query$GetScheduledJobFormsForYard$jobFormsForYard(
      yardCode: (l$yardCode as String?),
      scheduled: l$scheduled == null
          ? null
          : Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled
              .fromJson((l$scheduled as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? yardCode;

  final Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled? scheduled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$scheduled = scheduled;
    _resultData['scheduled'] = l$scheduled?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yardCode = yardCode;
    final l$scheduled = scheduled;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$yardCode,
      l$scheduled,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetScheduledJobFormsForYard$jobFormsForYard) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$scheduled = scheduled;
    final lOther$scheduled = other.scheduled;
    if (l$scheduled != lOther$scheduled) {
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

extension UtilityExtension$Query$GetScheduledJobFormsForYard$jobFormsForYard
    on Query$GetScheduledJobFormsForYard$jobFormsForYard {
  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard<
          Query$GetScheduledJobFormsForYard$jobFormsForYard>
      get copyWith =>
          CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard<
    TRes> {
  factory CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard(
    Query$GetScheduledJobFormsForYard$jobFormsForYard instance,
    TRes Function(Query$GetScheduledJobFormsForYard$jobFormsForYard) then,
  ) = _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard;

  factory CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard;

  TRes call({
    String? yardCode,
    Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled? scheduled,
    String? $__typename,
  });
  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled<TRes>
      get scheduled;
}

class _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard<TRes>
    implements
        CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard<TRes> {
  _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard(
    this._instance,
    this._then,
  );

  final Query$GetScheduledJobFormsForYard$jobFormsForYard _instance;

  final TRes Function(Query$GetScheduledJobFormsForYard$jobFormsForYard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yardCode = _undefined,
    Object? scheduled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetScheduledJobFormsForYard$jobFormsForYard(
        yardCode:
            yardCode == _undefined ? _instance.yardCode : (yardCode as String?),
        scheduled: scheduled == _undefined
            ? _instance.scheduled
            : (scheduled
                as Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled<TRes>
      get scheduled {
    final local$scheduled = _instance.scheduled;
    return local$scheduled == null
        ? CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled
            .stub(_then(_instance))
        : CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled(
            local$scheduled, (e) => call(scheduled: e));
  }
}

class _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard<TRes>
    implements
        CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard<TRes> {
  _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard(
      this._res);

  TRes _res;

  call({
    String? yardCode,
    Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled? scheduled,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled<TRes>
      get scheduled =>
          CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled
              .stub(_res);
}

class Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled {
  Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled({
    this.nodes,
    required this.pageInfo,
    this.$__typename = 'ScheduledConnection',
  });

  factory Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo
              .fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes?>?
      nodes;

  final Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo
      pageInfo;

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
    if (!(other
            is Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled) ||
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

extension UtilityExtension$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled
    on Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled {
  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled<
          Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled>
      get copyWith =>
          CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled<
    TRes> {
  factory CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled(
    Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled instance,
    TRes Function(Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled)
        then,
  ) = _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled;

  factory CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled;

  TRes call({
    List<Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes?>?
        nodes,
    Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo?
        pageInfo,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes?>? Function(
              Iterable<
                  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes<
                      Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes>?>?)
          _fn);
  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo<
      TRes> get pageInfo;
}

class _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled<
        TRes>
    implements
        CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled<
            TRes> {
  _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled(
    this._instance,
    this._then,
  );

  final Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled _instance;

  final TRes Function(
      Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<
                Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes?>?),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes<
                          Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo<
      TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled<
        TRes>
    implements
        CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled<
            TRes> {
  _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled(
      this._res);

  TRes _res;

  call({
    List<Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes?>?
        nodes,
    Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo?
        pageInfo,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;

  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo<
          TRes>
      get pageInfo =>
          CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo
              .stub(_res);
}

class Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes {
  Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes({
    this.scheduledItemId,
    this.job,
    this.template,
    this.$__typename = 'ScheduledJobForm',
  });

  factory Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$scheduledItemId = json['scheduledItemId'];
    final l$job = json['job'];
    final l$template = json['template'];
    final l$$__typename = json['__typename'];
    return Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes(
      scheduledItemId: (l$scheduledItemId as String?),
      job: l$job == null
          ? null
          : Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job
              .fromJson((l$job as Map<String, dynamic>)),
      template: l$template == null
          ? null
          : Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template
              .fromJson((l$template as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? scheduledItemId;

  final Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job?
      job;

  final Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template?
      template;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$scheduledItemId = scheduledItemId;
    _resultData['scheduledItemId'] = l$scheduledItemId;
    final l$job = job;
    _resultData['job'] = l$job?.toJson();
    final l$template = template;
    _resultData['template'] = l$template?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$scheduledItemId = scheduledItemId;
    final l$job = job;
    final l$template = template;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$scheduledItemId,
      l$job,
      l$template,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes
    on Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes {
  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes<
          Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes>
      get copyWith =>
          CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes<
    TRes> {
  factory CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes(
    Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes instance,
    TRes Function(
            Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes)
        then,
  ) = _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes;

  factory CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes;

  TRes call({
    String? scheduledItemId,
    Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job? job,
    Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template?
        template,
    String? $__typename,
  });
  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job<
      TRes> get job;
  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template<
      TRes> get template;
}

class _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes<
        TRes>
    implements
        CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes<
            TRes> {
  _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes(
    this._instance,
    this._then,
  );

  final Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes
      _instance;

  final TRes Function(
      Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scheduledItemId = _undefined,
    Object? job = _undefined,
    Object? template = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes(
        scheduledItemId: scheduledItemId == _undefined
            ? _instance.scheduledItemId
            : (scheduledItemId as String?),
        job: job == _undefined
            ? _instance.job
            : (job
                as Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job?),
        template: template == _undefined
            ? _instance.template
            : (template
                as Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job<
      TRes> get job {
    final local$job = _instance.job;
    return local$job == null
        ? CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job
            .stub(_then(_instance))
        : CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job(
            local$job, (e) => call(job: e));
  }

  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template<
      TRes> get template {
    final local$template = _instance.template;
    return local$template == null
        ? CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template
            .stub(_then(_instance))
        : CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template(
            local$template, (e) => call(template: e));
  }
}

class _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes<
        TRes>
    implements
        CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes<
            TRes> {
  _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes(
      this._res);

  TRes _res;

  call({
    String? scheduledItemId,
    Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job? job,
    Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template?
        template,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job<
          TRes>
      get job =>
          CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job
              .stub(_res);

  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template<
          TRes>
      get template =>
          CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template
              .stub(_res);
}

class Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job {
  Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job({
    this.asset,
    required this.workOrderId,
    required this.expectedStartDate,
    required this.jobType,
    this.jobTypeVariant,
    required this.jobTrade,
    this.workOrderDescription,
    this.assignedTo,
    required this.isDigitalSignatureRequired,
    this.assignedToTeam,
    this.assignedToTeamId,
    required this.yardCode,
    required this.depotNo,
    required this.scheduleItemType,
    required this.jobPriority,
    this.notes,
    this.$__typename = 'WorkOrderInfo',
  });

  factory Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job.fromJson(
      Map<String, dynamic> json) {
    final l$asset = json['asset'];
    final l$workOrderId = json['workOrderId'];
    final l$expectedStartDate = json['expectedStartDate'];
    final l$jobType = json['jobType'];
    final l$jobTypeVariant = json['jobTypeVariant'];
    final l$jobTrade = json['jobTrade'];
    final l$workOrderDescription = json['workOrderDescription'];
    final l$assignedTo = json['assignedTo'];
    final l$isDigitalSignatureRequired = json['isDigitalSignatureRequired'];
    final l$assignedToTeam = json['assignedToTeam'];
    final l$assignedToTeamId = json['assignedToTeamId'];
    final l$yardCode = json['yardCode'];
    final l$depotNo = json['depotNo'];
    final l$scheduleItemType = json['scheduleItemType'];
    final l$jobPriority = json['jobPriority'];
    final l$notes = json['notes'];
    final l$$__typename = json['__typename'];
    return Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job(
      asset: l$asset == null
          ? null
          : Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset
              .fromJson((l$asset as Map<String, dynamic>)),
      workOrderId: (l$workOrderId as String),
      expectedStartDate: (l$expectedStartDate as String),
      jobType: (l$jobType as String),
      jobTypeVariant: (l$jobTypeVariant as String?),
      jobTrade: (l$jobTrade as String),
      workOrderDescription: (l$workOrderDescription as String?),
      assignedTo: (l$assignedTo as String?),
      isDigitalSignatureRequired: (l$isDigitalSignatureRequired as bool),
      assignedToTeam: (l$assignedToTeam as String?),
      assignedToTeamId: (l$assignedToTeamId as String?),
      yardCode: (l$yardCode as String),
      depotNo: (l$depotNo as String),
      scheduleItemType: (l$scheduleItemType as String),
      jobPriority: (l$jobPriority as String),
      notes: (l$notes as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset?
      asset;

  final String workOrderId;

  final String expectedStartDate;

  final String jobType;

  final String? jobTypeVariant;

  final String jobTrade;

  final String? workOrderDescription;

  final String? assignedTo;

  final bool isDigitalSignatureRequired;

  final String? assignedToTeam;

  final String? assignedToTeamId;

  final String yardCode;

  final String depotNo;

  final String scheduleItemType;

  final String jobPriority;

  final String? notes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$asset = asset;
    _resultData['asset'] = l$asset?.toJson();
    final l$workOrderId = workOrderId;
    _resultData['workOrderId'] = l$workOrderId;
    final l$expectedStartDate = expectedStartDate;
    _resultData['expectedStartDate'] = l$expectedStartDate;
    final l$jobType = jobType;
    _resultData['jobType'] = l$jobType;
    final l$jobTypeVariant = jobTypeVariant;
    _resultData['jobTypeVariant'] = l$jobTypeVariant;
    final l$jobTrade = jobTrade;
    _resultData['jobTrade'] = l$jobTrade;
    final l$workOrderDescription = workOrderDescription;
    _resultData['workOrderDescription'] = l$workOrderDescription;
    final l$assignedTo = assignedTo;
    _resultData['assignedTo'] = l$assignedTo;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    _resultData['isDigitalSignatureRequired'] = l$isDigitalSignatureRequired;
    final l$assignedToTeam = assignedToTeam;
    _resultData['assignedToTeam'] = l$assignedToTeam;
    final l$assignedToTeamId = assignedToTeamId;
    _resultData['assignedToTeamId'] = l$assignedToTeamId;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$scheduleItemType = scheduleItemType;
    _resultData['scheduleItemType'] = l$scheduleItemType;
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
    final l$asset = asset;
    final l$workOrderId = workOrderId;
    final l$expectedStartDate = expectedStartDate;
    final l$jobType = jobType;
    final l$jobTypeVariant = jobTypeVariant;
    final l$jobTrade = jobTrade;
    final l$workOrderDescription = workOrderDescription;
    final l$assignedTo = assignedTo;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final l$assignedToTeam = assignedToTeam;
    final l$assignedToTeamId = assignedToTeamId;
    final l$yardCode = yardCode;
    final l$depotNo = depotNo;
    final l$scheduleItemType = scheduleItemType;
    final l$jobPriority = jobPriority;
    final l$notes = notes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$asset,
      l$workOrderId,
      l$expectedStartDate,
      l$jobType,
      l$jobTypeVariant,
      l$jobTrade,
      l$workOrderDescription,
      l$assignedTo,
      l$isDigitalSignatureRequired,
      l$assignedToTeam,
      l$assignedToTeamId,
      l$yardCode,
      l$depotNo,
      l$scheduleItemType,
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
    if (!(other
            is Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$asset = asset;
    final lOther$asset = other.asset;
    if (l$asset != lOther$asset) {
      return false;
    }
    final l$workOrderId = workOrderId;
    final lOther$workOrderId = other.workOrderId;
    if (l$workOrderId != lOther$workOrderId) {
      return false;
    }
    final l$expectedStartDate = expectedStartDate;
    final lOther$expectedStartDate = other.expectedStartDate;
    if (l$expectedStartDate != lOther$expectedStartDate) {
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
    final l$jobTrade = jobTrade;
    final lOther$jobTrade = other.jobTrade;
    if (l$jobTrade != lOther$jobTrade) {
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
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final lOther$isDigitalSignatureRequired = other.isDigitalSignatureRequired;
    if (l$isDigitalSignatureRequired != lOther$isDigitalSignatureRequired) {
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
    final l$scheduleItemType = scheduleItemType;
    final lOther$scheduleItemType = other.scheduleItemType;
    if (l$scheduleItemType != lOther$scheduleItemType) {
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

extension UtilityExtension$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job
    on Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job {
  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job<
          Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job>
      get copyWith =>
          CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job<
    TRes> {
  factory CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job(
    Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job
        instance,
    TRes Function(
            Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job)
        then,
  ) = _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job;

  factory CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job;

  TRes call({
    Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset?
        asset,
    String? workOrderId,
    String? expectedStartDate,
    String? jobType,
    String? jobTypeVariant,
    String? jobTrade,
    String? workOrderDescription,
    String? assignedTo,
    bool? isDigitalSignatureRequired,
    String? assignedToTeam,
    String? assignedToTeamId,
    String? yardCode,
    String? depotNo,
    String? scheduleItemType,
    String? jobPriority,
    String? notes,
    String? $__typename,
  });
  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset<
      TRes> get asset;
}

class _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job<
        TRes>
    implements
        CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job<
            TRes> {
  _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job(
    this._instance,
    this._then,
  );

  final Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job
      _instance;

  final TRes Function(
          Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? asset = _undefined,
    Object? workOrderId = _undefined,
    Object? expectedStartDate = _undefined,
    Object? jobType = _undefined,
    Object? jobTypeVariant = _undefined,
    Object? jobTrade = _undefined,
    Object? workOrderDescription = _undefined,
    Object? assignedTo = _undefined,
    Object? isDigitalSignatureRequired = _undefined,
    Object? assignedToTeam = _undefined,
    Object? assignedToTeamId = _undefined,
    Object? yardCode = _undefined,
    Object? depotNo = _undefined,
    Object? scheduleItemType = _undefined,
    Object? jobPriority = _undefined,
    Object? notes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job(
        asset: asset == _undefined
            ? _instance.asset
            : (asset
                as Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset?),
        workOrderId: workOrderId == _undefined || workOrderId == null
            ? _instance.workOrderId
            : (workOrderId as String),
        expectedStartDate:
            expectedStartDate == _undefined || expectedStartDate == null
                ? _instance.expectedStartDate
                : (expectedStartDate as String),
        jobType: jobType == _undefined || jobType == null
            ? _instance.jobType
            : (jobType as String),
        jobTypeVariant: jobTypeVariant == _undefined
            ? _instance.jobTypeVariant
            : (jobTypeVariant as String?),
        jobTrade: jobTrade == _undefined || jobTrade == null
            ? _instance.jobTrade
            : (jobTrade as String),
        workOrderDescription: workOrderDescription == _undefined
            ? _instance.workOrderDescription
            : (workOrderDescription as String?),
        assignedTo: assignedTo == _undefined
            ? _instance.assignedTo
            : (assignedTo as String?),
        isDigitalSignatureRequired: isDigitalSignatureRequired == _undefined ||
                isDigitalSignatureRequired == null
            ? _instance.isDigitalSignatureRequired
            : (isDigitalSignatureRequired as bool),
        assignedToTeam: assignedToTeam == _undefined
            ? _instance.assignedToTeam
            : (assignedToTeam as String?),
        assignedToTeamId: assignedToTeamId == _undefined
            ? _instance.assignedToTeamId
            : (assignedToTeamId as String?),
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        depotNo: depotNo == _undefined || depotNo == null
            ? _instance.depotNo
            : (depotNo as String),
        scheduleItemType:
            scheduleItemType == _undefined || scheduleItemType == null
                ? _instance.scheduleItemType
                : (scheduleItemType as String),
        jobPriority: jobPriority == _undefined || jobPriority == null
            ? _instance.jobPriority
            : (jobPriority as String),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset<
      TRes> get asset {
    final local$asset = _instance.asset;
    return local$asset == null
        ? CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset
            .stub(_then(_instance))
        : CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset(
            local$asset, (e) => call(asset: e));
  }
}

class _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job<
        TRes>
    implements
        CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job<
            TRes> {
  _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job(
      this._res);

  TRes _res;

  call({
    Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset?
        asset,
    String? workOrderId,
    String? expectedStartDate,
    String? jobType,
    String? jobTypeVariant,
    String? jobTrade,
    String? workOrderDescription,
    String? assignedTo,
    bool? isDigitalSignatureRequired,
    String? assignedToTeam,
    String? assignedToTeamId,
    String? yardCode,
    String? depotNo,
    String? scheduleItemType,
    String? jobPriority,
    String? notes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset<
          TRes>
      get asset =>
          CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset
              .stub(_res);
}

class Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset {
  Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset({
    required this.assetCode,
    required this.depotNo,
    this.name,
    required this.yardCode,
    this.$__typename = 'Asset',
  });

  factory Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset.fromJson(
      Map<String, dynamic> json) {
    final l$assetCode = json['assetCode'];
    final l$depotNo = json['depotNo'];
    final l$name = json['name'];
    final l$yardCode = json['yardCode'];
    final l$$__typename = json['__typename'];
    return Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset(
      assetCode: (l$assetCode as String),
      depotNo: (l$depotNo as String),
      name: (l$name as String?),
      yardCode: (l$yardCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String assetCode;

  final String depotNo;

  final String? name;

  final String yardCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assetCode = assetCode;
    _resultData['assetCode'] = l$assetCode;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$assetCode = assetCode;
    final l$depotNo = depotNo;
    final l$name = name;
    final l$yardCode = yardCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$assetCode,
      l$depotNo,
      l$name,
      l$yardCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (l$assetCode != lOther$assetCode) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset
    on Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset {
  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset<
          Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset>
      get copyWith =>
          CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset<
    TRes> {
  factory CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset(
    Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset
        instance,
    TRes Function(
            Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset)
        then,
  ) = _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset;

  factory CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset;

  TRes call({
    String? assetCode,
    String? depotNo,
    String? name,
    String? yardCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset<
        TRes>
    implements
        CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset<
            TRes> {
  _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset(
    this._instance,
    this._then,
  );

  final Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset
      _instance;

  final TRes Function(
          Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetCode = _undefined,
    Object? depotNo = _undefined,
    Object? name = _undefined,
    Object? yardCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset(
        assetCode: assetCode == _undefined || assetCode == null
            ? _instance.assetCode
            : (assetCode as String),
        depotNo: depotNo == _undefined || depotNo == null
            ? _instance.depotNo
            : (depotNo as String),
        name: name == _undefined ? _instance.name : (name as String?),
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset<
        TRes>
    implements
        CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset<
            TRes> {
  _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$job$asset(
      this._res);

  TRes _res;

  call({
    String? assetCode,
    String? depotNo,
    String? name,
    String? yardCode,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template {
  Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template({
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

  factory Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template.fromJson(
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
    return Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template(
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
            is Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template) ||
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

extension UtilityExtension$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template
    on Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template {
  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template<
          Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template>
      get copyWith =>
          CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template<
    TRes> {
  factory CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template(
    Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template
        instance,
    TRes Function(
            Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template)
        then,
  ) = _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template;

  factory CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template;

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

class _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template<
        TRes>
    implements
        CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template<
            TRes> {
  _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template(
    this._instance,
    this._then,
  );

  final Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template
      _instance;

  final TRes Function(
          Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template)
      _then;

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
      _then(
          Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template(
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

class _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template<
        TRes>
    implements
        CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template<
            TRes> {
  _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$nodes$template(
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

class Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo {
  Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo({
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo(
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
            is Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo) ||
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

extension UtilityExtension$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo
    on Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo {
  CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo<
          Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo>
      get copyWith =>
          CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo<
    TRes> {
  factory CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo(
    Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo
        instance,
    TRes Function(
            Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo)
        then,
  ) = _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo;

  factory CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo<
        TRes>
    implements
        CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo<
            TRes> {
  _CopyWithImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo
      _instance;

  final TRes Function(
          Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo(
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

class _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo<
        TRes>
    implements
        CopyWith$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$GetScheduledJobFormsForYard$jobFormsForYard$scheduled$pageInfo(
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
