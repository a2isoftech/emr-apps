import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$CompletedJobs {
  factory Variables$Query$CompletedJobs({
    int? first,
    String? after,
    int? last,
    String? before,
    required Input$CompletedFormInstanceQueryFilterInput filter,
  }) =>
      Variables$Query$CompletedJobs._({
        if (first != null) r'first': first,
        if (after != null) r'after': after,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        r'filter': filter,
      });

  Variables$Query$CompletedJobs._(this._$data);

  factory Variables$Query$CompletedJobs.fromJson(Map<String, dynamic> data) {
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
    final l$filter = data['filter'];
    result$data['filter'] =
        Input$CompletedFormInstanceQueryFilterInput.fromJson(
            (l$filter as Map<String, dynamic>));
    return Variables$Query$CompletedJobs._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  Input$CompletedFormInstanceQueryFilterInput get filter =>
      (_$data['filter'] as Input$CompletedFormInstanceQueryFilterInput);

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
    final l$filter = filter;
    result$data['filter'] = l$filter.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$CompletedJobs<Variables$Query$CompletedJobs>
      get copyWith => CopyWith$Variables$Query$CompletedJobs(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$CompletedJobs) ||
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
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) {
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
    final l$filter = filter;
    return Object.hashAll([
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
      l$filter,
    ]);
  }
}

abstract class CopyWith$Variables$Query$CompletedJobs<TRes> {
  factory CopyWith$Variables$Query$CompletedJobs(
    Variables$Query$CompletedJobs instance,
    TRes Function(Variables$Query$CompletedJobs) then,
  ) = _CopyWithImpl$Variables$Query$CompletedJobs;

  factory CopyWith$Variables$Query$CompletedJobs.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CompletedJobs;

  TRes call({
    int? first,
    String? after,
    int? last,
    String? before,
    Input$CompletedFormInstanceQueryFilterInput? filter,
  });
}

class _CopyWithImpl$Variables$Query$CompletedJobs<TRes>
    implements CopyWith$Variables$Query$CompletedJobs<TRes> {
  _CopyWithImpl$Variables$Query$CompletedJobs(
    this._instance,
    this._then,
  );

  final Variables$Query$CompletedJobs _instance;

  final TRes Function(Variables$Query$CompletedJobs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? after = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? filter = _undefined,
  }) =>
      _then(Variables$Query$CompletedJobs._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (after != _undefined) 'after': (after as String?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as String?),
        if (filter != _undefined && filter != null)
          'filter': (filter as Input$CompletedFormInstanceQueryFilterInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$CompletedJobs<TRes>
    implements CopyWith$Variables$Query$CompletedJobs<TRes> {
  _CopyWithStubImpl$Variables$Query$CompletedJobs(this._res);

  TRes _res;

  call({
    int? first,
    String? after,
    int? last,
    String? before,
    Input$CompletedFormInstanceQueryFilterInput? filter,
  }) =>
      _res;
}

class Query$CompletedJobs {
  Query$CompletedJobs({
    this.completedFormInstances,
    this.$__typename = 'FormsQuery',
  });

  factory Query$CompletedJobs.fromJson(Map<String, dynamic> json) {
    final l$completedFormInstances = json['completedFormInstances'];
    final l$$__typename = json['__typename'];
    return Query$CompletedJobs(
      completedFormInstances: l$completedFormInstances == null
          ? null
          : Query$CompletedJobs$completedFormInstances.fromJson(
              (l$completedFormInstances as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CompletedJobs$completedFormInstances? completedFormInstances;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$completedFormInstances = completedFormInstances;
    _resultData['completedFormInstances'] = l$completedFormInstances?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$completedFormInstances = completedFormInstances;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$completedFormInstances,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CompletedJobs) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$completedFormInstances = completedFormInstances;
    final lOther$completedFormInstances = other.completedFormInstances;
    if (l$completedFormInstances != lOther$completedFormInstances) {
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

extension UtilityExtension$Query$CompletedJobs on Query$CompletedJobs {
  CopyWith$Query$CompletedJobs<Query$CompletedJobs> get copyWith =>
      CopyWith$Query$CompletedJobs(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CompletedJobs<TRes> {
  factory CopyWith$Query$CompletedJobs(
    Query$CompletedJobs instance,
    TRes Function(Query$CompletedJobs) then,
  ) = _CopyWithImpl$Query$CompletedJobs;

  factory CopyWith$Query$CompletedJobs.stub(TRes res) =
      _CopyWithStubImpl$Query$CompletedJobs;

  TRes call({
    Query$CompletedJobs$completedFormInstances? completedFormInstances,
    String? $__typename,
  });
  CopyWith$Query$CompletedJobs$completedFormInstances<TRes>
      get completedFormInstances;
}

class _CopyWithImpl$Query$CompletedJobs<TRes>
    implements CopyWith$Query$CompletedJobs<TRes> {
  _CopyWithImpl$Query$CompletedJobs(
    this._instance,
    this._then,
  );

  final Query$CompletedJobs _instance;

  final TRes Function(Query$CompletedJobs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? completedFormInstances = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CompletedJobs(
        completedFormInstances: completedFormInstances == _undefined
            ? _instance.completedFormInstances
            : (completedFormInstances
                as Query$CompletedJobs$completedFormInstances?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$CompletedJobs$completedFormInstances<TRes>
      get completedFormInstances {
    final local$completedFormInstances = _instance.completedFormInstances;
    return local$completedFormInstances == null
        ? CopyWith$Query$CompletedJobs$completedFormInstances.stub(
            _then(_instance))
        : CopyWith$Query$CompletedJobs$completedFormInstances(
            local$completedFormInstances,
            (e) => call(completedFormInstances: e));
  }
}

class _CopyWithStubImpl$Query$CompletedJobs<TRes>
    implements CopyWith$Query$CompletedJobs<TRes> {
  _CopyWithStubImpl$Query$CompletedJobs(this._res);

  TRes _res;

  call({
    Query$CompletedJobs$completedFormInstances? completedFormInstances,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$CompletedJobs$completedFormInstances<TRes>
      get completedFormInstances =>
          CopyWith$Query$CompletedJobs$completedFormInstances.stub(_res);
}

const documentNodeQueryCompletedJobs = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'CompletedJobs'),
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
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'CompletedFormInstanceQueryFilterInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'completedFormInstances'),
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
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
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
                name: NameNode(value: 'startedBy'),
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
                name: NameNode(value: 'scheduledItemId'),
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
                name: NameNode(value: 'validations'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'validatedBy'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'validatedOn'),
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
                    name: NameNode(value: 'notes'),
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
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
                    name: NameNode(value: 'clientId'),
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
                name: NameNode(value: 'teamName'),
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
]);

class Query$CompletedJobs$completedFormInstances {
  Query$CompletedJobs$completedFormInstances({
    this.nodes,
    required this.pageInfo,
    this.$__typename = 'CompletedFormInstancesConnection',
  });

  factory Query$CompletedJobs$completedFormInstances.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$CompletedJobs$completedFormInstances(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) =>
              Query$CompletedJobs$completedFormInstances$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$CompletedJobs$completedFormInstances$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$CompletedJobs$completedFormInstances$nodes>? nodes;

  final Query$CompletedJobs$completedFormInstances$pageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
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
    if (!(other is Query$CompletedJobs$completedFormInstances) ||
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

extension UtilityExtension$Query$CompletedJobs$completedFormInstances
    on Query$CompletedJobs$completedFormInstances {
  CopyWith$Query$CompletedJobs$completedFormInstances<
          Query$CompletedJobs$completedFormInstances>
      get copyWith => CopyWith$Query$CompletedJobs$completedFormInstances(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CompletedJobs$completedFormInstances<TRes> {
  factory CopyWith$Query$CompletedJobs$completedFormInstances(
    Query$CompletedJobs$completedFormInstances instance,
    TRes Function(Query$CompletedJobs$completedFormInstances) then,
  ) = _CopyWithImpl$Query$CompletedJobs$completedFormInstances;

  factory CopyWith$Query$CompletedJobs$completedFormInstances.stub(TRes res) =
      _CopyWithStubImpl$Query$CompletedJobs$completedFormInstances;

  TRes call({
    List<Query$CompletedJobs$completedFormInstances$nodes>? nodes,
    Query$CompletedJobs$completedFormInstances$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$CompletedJobs$completedFormInstances$nodes>? Function(
              Iterable<
                  CopyWith$Query$CompletedJobs$completedFormInstances$nodes<
                      Query$CompletedJobs$completedFormInstances$nodes>>?)
          _fn);
  CopyWith$Query$CompletedJobs$completedFormInstances$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$CompletedJobs$completedFormInstances<TRes>
    implements CopyWith$Query$CompletedJobs$completedFormInstances<TRes> {
  _CopyWithImpl$Query$CompletedJobs$completedFormInstances(
    this._instance,
    this._then,
  );

  final Query$CompletedJobs$completedFormInstances _instance;

  final TRes Function(Query$CompletedJobs$completedFormInstances) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CompletedJobs$completedFormInstances(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes
                as List<Query$CompletedJobs$completedFormInstances$nodes>?),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$CompletedJobs$completedFormInstances$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$CompletedJobs$completedFormInstances$nodes>? Function(
                  Iterable<
                      CopyWith$Query$CompletedJobs$completedFormInstances$nodes<
                          Query$CompletedJobs$completedFormInstances$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map(
              (e) => CopyWith$Query$CompletedJobs$completedFormInstances$nodes(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Query$CompletedJobs$completedFormInstances$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$CompletedJobs$completedFormInstances$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$CompletedJobs$completedFormInstances<TRes>
    implements CopyWith$Query$CompletedJobs$completedFormInstances<TRes> {
  _CopyWithStubImpl$Query$CompletedJobs$completedFormInstances(this._res);

  TRes _res;

  call({
    List<Query$CompletedJobs$completedFormInstances$nodes>? nodes,
    Query$CompletedJobs$completedFormInstances$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;

  CopyWith$Query$CompletedJobs$completedFormInstances$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$CompletedJobs$completedFormInstances$pageInfo.stub(
              _res);
}

class Query$CompletedJobs$completedFormInstances$nodes {
  Query$CompletedJobs$completedFormInstances$nodes({
    this.workOrderId,
    this.workOrderDescription,
    required this.startedBy,
    this.companyCode,
    this.submittedBy,
    this.submittedDate,
    this.assetCode,
    this.assetName,
    this.jobType,
    this.jobTrade,
    this.jobTypeVariant,
    this.yardCode,
    this.depotNo,
    this.scheduledItemId,
    required this.isDigitalSignatureRequired,
    required this.scheduleItemType,
    this.assignedToTeam,
    this.assignedToTeamId,
    required this.validations,
    required this.jobPriority,
    this.notes,
    this.template,
    this.teamName,
    this.category,
    this.$__typename = 'CompletedFormInstance',
  });

  factory Query$CompletedJobs$completedFormInstances$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$workOrderId = json['workOrderId'];
    final l$workOrderDescription = json['workOrderDescription'];
    final l$startedBy = json['startedBy'];
    final l$companyCode = json['companyCode'];
    final l$submittedBy = json['submittedBy'];
    final l$submittedDate = json['submittedDate'];
    final l$assetCode = json['assetCode'];
    final l$assetName = json['assetName'];
    final l$jobType = json['jobType'];
    final l$jobTrade = json['jobTrade'];
    final l$jobTypeVariant = json['jobTypeVariant'];
    final l$yardCode = json['yardCode'];
    final l$depotNo = json['depotNo'];
    final l$scheduledItemId = json['scheduledItemId'];
    final l$isDigitalSignatureRequired = json['isDigitalSignatureRequired'];
    final l$scheduleItemType = json['scheduleItemType'];
    final l$assignedToTeam = json['assignedToTeam'];
    final l$assignedToTeamId = json['assignedToTeamId'];
    final l$validations = json['validations'];
    final l$jobPriority = json['jobPriority'];
    final l$notes = json['notes'];
    final l$template = json['template'];
    final l$teamName = json['teamName'];
    final l$category = json['category'];
    final l$$__typename = json['__typename'];
    return Query$CompletedJobs$completedFormInstances$nodes(
      workOrderId: (l$workOrderId as String?),
      workOrderDescription: (l$workOrderDescription as String?),
      startedBy: (l$startedBy as String),
      companyCode: (l$companyCode as String?),
      submittedBy: (l$submittedBy as String?),
      submittedDate: (l$submittedDate as String?),
      assetCode: (l$assetCode as String?),
      assetName: (l$assetName as String?),
      jobType: (l$jobType as String?),
      jobTrade: (l$jobTrade as String?),
      jobTypeVariant: (l$jobTypeVariant as String?),
      yardCode: (l$yardCode as String?),
      depotNo: (l$depotNo as String?),
      scheduledItemId: (l$scheduledItemId as String?),
      isDigitalSignatureRequired: (l$isDigitalSignatureRequired as bool),
      scheduleItemType: (l$scheduleItemType as String),
      assignedToTeam: (l$assignedToTeam as String?),
      assignedToTeamId: (l$assignedToTeamId as String?),
      validations: (l$validations as List<dynamic>)
          .map((e) =>
              Query$CompletedJobs$completedFormInstances$nodes$validations
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      jobPriority: (l$jobPriority as String),
      notes: (l$notes as String?),
      template: l$template == null
          ? null
          : Query$CompletedJobs$completedFormInstances$nodes$template.fromJson(
              (l$template as Map<String, dynamic>)),
      teamName: (l$teamName as String?),
      category: (l$category as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? workOrderId;

  final String? workOrderDescription;

  final String startedBy;

  final String? companyCode;

  final String? submittedBy;

  final String? submittedDate;

  final String? assetCode;

  final String? assetName;

  final String? jobType;

  final String? jobTrade;

  final String? jobTypeVariant;

  final String? yardCode;

  final String? depotNo;

  final String? scheduledItemId;

  final bool isDigitalSignatureRequired;

  final String scheduleItemType;

  final String? assignedToTeam;

  final String? assignedToTeamId;

  final List<Query$CompletedJobs$completedFormInstances$nodes$validations>
      validations;

  final String jobPriority;

  final String? notes;

  final Query$CompletedJobs$completedFormInstances$nodes$template? template;

  final String? teamName;

  final String? category;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$workOrderId = workOrderId;
    _resultData['workOrderId'] = l$workOrderId;
    final l$workOrderDescription = workOrderDescription;
    _resultData['workOrderDescription'] = l$workOrderDescription;
    final l$startedBy = startedBy;
    _resultData['startedBy'] = l$startedBy;
    final l$companyCode = companyCode;
    _resultData['companyCode'] = l$companyCode;
    final l$submittedBy = submittedBy;
    _resultData['submittedBy'] = l$submittedBy;
    final l$submittedDate = submittedDate;
    _resultData['submittedDate'] = l$submittedDate;
    final l$assetCode = assetCode;
    _resultData['assetCode'] = l$assetCode;
    final l$assetName = assetName;
    _resultData['assetName'] = l$assetName;
    final l$jobType = jobType;
    _resultData['jobType'] = l$jobType;
    final l$jobTrade = jobTrade;
    _resultData['jobTrade'] = l$jobTrade;
    final l$jobTypeVariant = jobTypeVariant;
    _resultData['jobTypeVariant'] = l$jobTypeVariant;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$scheduledItemId = scheduledItemId;
    _resultData['scheduledItemId'] = l$scheduledItemId;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    _resultData['isDigitalSignatureRequired'] = l$isDigitalSignatureRequired;
    final l$scheduleItemType = scheduleItemType;
    _resultData['scheduleItemType'] = l$scheduleItemType;
    final l$assignedToTeam = assignedToTeam;
    _resultData['assignedToTeam'] = l$assignedToTeam;
    final l$assignedToTeamId = assignedToTeamId;
    _resultData['assignedToTeamId'] = l$assignedToTeamId;
    final l$validations = validations;
    _resultData['validations'] = l$validations.map((e) => e.toJson()).toList();
    final l$jobPriority = jobPriority;
    _resultData['jobPriority'] = l$jobPriority;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$template = template;
    _resultData['template'] = l$template?.toJson();
    final l$teamName = teamName;
    _resultData['teamName'] = l$teamName;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$workOrderId = workOrderId;
    final l$workOrderDescription = workOrderDescription;
    final l$startedBy = startedBy;
    final l$companyCode = companyCode;
    final l$submittedBy = submittedBy;
    final l$submittedDate = submittedDate;
    final l$assetCode = assetCode;
    final l$assetName = assetName;
    final l$jobType = jobType;
    final l$jobTrade = jobTrade;
    final l$jobTypeVariant = jobTypeVariant;
    final l$yardCode = yardCode;
    final l$depotNo = depotNo;
    final l$scheduledItemId = scheduledItemId;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final l$scheduleItemType = scheduleItemType;
    final l$assignedToTeam = assignedToTeam;
    final l$assignedToTeamId = assignedToTeamId;
    final l$validations = validations;
    final l$jobPriority = jobPriority;
    final l$notes = notes;
    final l$template = template;
    final l$teamName = teamName;
    final l$category = category;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$workOrderId,
      l$workOrderDescription,
      l$startedBy,
      l$companyCode,
      l$submittedBy,
      l$submittedDate,
      l$assetCode,
      l$assetName,
      l$jobType,
      l$jobTrade,
      l$jobTypeVariant,
      l$yardCode,
      l$depotNo,
      l$scheduledItemId,
      l$isDigitalSignatureRequired,
      l$scheduleItemType,
      l$assignedToTeam,
      l$assignedToTeamId,
      Object.hashAll(l$validations.map((v) => v)),
      l$jobPriority,
      l$notes,
      l$template,
      l$teamName,
      l$category,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CompletedJobs$completedFormInstances$nodes) ||
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
    final l$startedBy = startedBy;
    final lOther$startedBy = other.startedBy;
    if (l$startedBy != lOther$startedBy) {
      return false;
    }
    final l$companyCode = companyCode;
    final lOther$companyCode = other.companyCode;
    if (l$companyCode != lOther$companyCode) {
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
    final l$scheduledItemId = scheduledItemId;
    final lOther$scheduledItemId = other.scheduledItemId;
    if (l$scheduledItemId != lOther$scheduledItemId) {
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
    final l$validations = validations;
    final lOther$validations = other.validations;
    if (l$validations.length != lOther$validations.length) {
      return false;
    }
    for (int i = 0; i < l$validations.length; i++) {
      final l$validations$entry = l$validations[i];
      final lOther$validations$entry = lOther$validations[i];
      if (l$validations$entry != lOther$validations$entry) {
        return false;
      }
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
    final l$template = template;
    final lOther$template = other.template;
    if (l$template != lOther$template) {
      return false;
    }
    final l$teamName = teamName;
    final lOther$teamName = other.teamName;
    if (l$teamName != lOther$teamName) {
      return false;
    }
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
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

extension UtilityExtension$Query$CompletedJobs$completedFormInstances$nodes
    on Query$CompletedJobs$completedFormInstances$nodes {
  CopyWith$Query$CompletedJobs$completedFormInstances$nodes<
          Query$CompletedJobs$completedFormInstances$nodes>
      get copyWith => CopyWith$Query$CompletedJobs$completedFormInstances$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CompletedJobs$completedFormInstances$nodes<TRes> {
  factory CopyWith$Query$CompletedJobs$completedFormInstances$nodes(
    Query$CompletedJobs$completedFormInstances$nodes instance,
    TRes Function(Query$CompletedJobs$completedFormInstances$nodes) then,
  ) = _CopyWithImpl$Query$CompletedJobs$completedFormInstances$nodes;

  factory CopyWith$Query$CompletedJobs$completedFormInstances$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$CompletedJobs$completedFormInstances$nodes;

  TRes call({
    String? workOrderId,
    String? workOrderDescription,
    String? startedBy,
    String? companyCode,
    String? submittedBy,
    String? submittedDate,
    String? assetCode,
    String? assetName,
    String? jobType,
    String? jobTrade,
    String? jobTypeVariant,
    String? yardCode,
    String? depotNo,
    String? scheduledItemId,
    bool? isDigitalSignatureRequired,
    String? scheduleItemType,
    String? assignedToTeam,
    String? assignedToTeamId,
    List<Query$CompletedJobs$completedFormInstances$nodes$validations>?
        validations,
    String? jobPriority,
    String? notes,
    Query$CompletedJobs$completedFormInstances$nodes$template? template,
    String? teamName,
    String? category,
    String? $__typename,
  });
  TRes validations(
      Iterable<Query$CompletedJobs$completedFormInstances$nodes$validations> Function(
              Iterable<
                  CopyWith$Query$CompletedJobs$completedFormInstances$nodes$validations<
                      Query$CompletedJobs$completedFormInstances$nodes$validations>>)
          _fn);
  CopyWith$Query$CompletedJobs$completedFormInstances$nodes$template<TRes>
      get template;
}

class _CopyWithImpl$Query$CompletedJobs$completedFormInstances$nodes<TRes>
    implements CopyWith$Query$CompletedJobs$completedFormInstances$nodes<TRes> {
  _CopyWithImpl$Query$CompletedJobs$completedFormInstances$nodes(
    this._instance,
    this._then,
  );

  final Query$CompletedJobs$completedFormInstances$nodes _instance;

  final TRes Function(Query$CompletedJobs$completedFormInstances$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? workOrderId = _undefined,
    Object? workOrderDescription = _undefined,
    Object? startedBy = _undefined,
    Object? companyCode = _undefined,
    Object? submittedBy = _undefined,
    Object? submittedDate = _undefined,
    Object? assetCode = _undefined,
    Object? assetName = _undefined,
    Object? jobType = _undefined,
    Object? jobTrade = _undefined,
    Object? jobTypeVariant = _undefined,
    Object? yardCode = _undefined,
    Object? depotNo = _undefined,
    Object? scheduledItemId = _undefined,
    Object? isDigitalSignatureRequired = _undefined,
    Object? scheduleItemType = _undefined,
    Object? assignedToTeam = _undefined,
    Object? assignedToTeamId = _undefined,
    Object? validations = _undefined,
    Object? jobPriority = _undefined,
    Object? notes = _undefined,
    Object? template = _undefined,
    Object? teamName = _undefined,
    Object? category = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CompletedJobs$completedFormInstances$nodes(
        workOrderId: workOrderId == _undefined
            ? _instance.workOrderId
            : (workOrderId as String?),
        workOrderDescription: workOrderDescription == _undefined
            ? _instance.workOrderDescription
            : (workOrderDescription as String?),
        startedBy: startedBy == _undefined || startedBy == null
            ? _instance.startedBy
            : (startedBy as String),
        companyCode: companyCode == _undefined
            ? _instance.companyCode
            : (companyCode as String?),
        submittedBy: submittedBy == _undefined
            ? _instance.submittedBy
            : (submittedBy as String?),
        submittedDate: submittedDate == _undefined
            ? _instance.submittedDate
            : (submittedDate as String?),
        assetCode: assetCode == _undefined
            ? _instance.assetCode
            : (assetCode as String?),
        assetName: assetName == _undefined
            ? _instance.assetName
            : (assetName as String?),
        jobType:
            jobType == _undefined ? _instance.jobType : (jobType as String?),
        jobTrade:
            jobTrade == _undefined ? _instance.jobTrade : (jobTrade as String?),
        jobTypeVariant: jobTypeVariant == _undefined
            ? _instance.jobTypeVariant
            : (jobTypeVariant as String?),
        yardCode:
            yardCode == _undefined ? _instance.yardCode : (yardCode as String?),
        depotNo:
            depotNo == _undefined ? _instance.depotNo : (depotNo as String?),
        scheduledItemId: scheduledItemId == _undefined
            ? _instance.scheduledItemId
            : (scheduledItemId as String?),
        isDigitalSignatureRequired: isDigitalSignatureRequired == _undefined ||
                isDigitalSignatureRequired == null
            ? _instance.isDigitalSignatureRequired
            : (isDigitalSignatureRequired as bool),
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
        validations: validations == _undefined || validations == null
            ? _instance.validations
            : (validations as List<
                Query$CompletedJobs$completedFormInstances$nodes$validations>),
        jobPriority: jobPriority == _undefined || jobPriority == null
            ? _instance.jobPriority
            : (jobPriority as String),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        template: template == _undefined
            ? _instance.template
            : (template
                as Query$CompletedJobs$completedFormInstances$nodes$template?),
        teamName:
            teamName == _undefined ? _instance.teamName : (teamName as String?),
        category:
            category == _undefined ? _instance.category : (category as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes validations(
          Iterable<Query$CompletedJobs$completedFormInstances$nodes$validations> Function(
                  Iterable<
                      CopyWith$Query$CompletedJobs$completedFormInstances$nodes$validations<
                          Query$CompletedJobs$completedFormInstances$nodes$validations>>)
              _fn) =>
      call(
          validations: _fn(_instance.validations.map((e) =>
              CopyWith$Query$CompletedJobs$completedFormInstances$nodes$validations(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$CompletedJobs$completedFormInstances$nodes$template<TRes>
      get template {
    final local$template = _instance.template;
    return local$template == null
        ? CopyWith$Query$CompletedJobs$completedFormInstances$nodes$template
            .stub(_then(_instance))
        : CopyWith$Query$CompletedJobs$completedFormInstances$nodes$template(
            local$template, (e) => call(template: e));
  }
}

class _CopyWithStubImpl$Query$CompletedJobs$completedFormInstances$nodes<TRes>
    implements CopyWith$Query$CompletedJobs$completedFormInstances$nodes<TRes> {
  _CopyWithStubImpl$Query$CompletedJobs$completedFormInstances$nodes(this._res);

  TRes _res;

  call({
    String? workOrderId,
    String? workOrderDescription,
    String? startedBy,
    String? companyCode,
    String? submittedBy,
    String? submittedDate,
    String? assetCode,
    String? assetName,
    String? jobType,
    String? jobTrade,
    String? jobTypeVariant,
    String? yardCode,
    String? depotNo,
    String? scheduledItemId,
    bool? isDigitalSignatureRequired,
    String? scheduleItemType,
    String? assignedToTeam,
    String? assignedToTeamId,
    List<Query$CompletedJobs$completedFormInstances$nodes$validations>?
        validations,
    String? jobPriority,
    String? notes,
    Query$CompletedJobs$completedFormInstances$nodes$template? template,
    String? teamName,
    String? category,
    String? $__typename,
  }) =>
      _res;

  validations(_fn) => _res;

  CopyWith$Query$CompletedJobs$completedFormInstances$nodes$template<TRes>
      get template =>
          CopyWith$Query$CompletedJobs$completedFormInstances$nodes$template
              .stub(_res);
}

class Query$CompletedJobs$completedFormInstances$nodes$validations {
  Query$CompletedJobs$completedFormInstances$nodes$validations({
    required this.validatedBy,
    required this.validatedOn,
    required this.status,
    this.notes,
    this.referenceId,
    this.$__typename = 'JobValidation',
  });

  factory Query$CompletedJobs$completedFormInstances$nodes$validations.fromJson(
      Map<String, dynamic> json) {
    final l$validatedBy = json['validatedBy'];
    final l$validatedOn = json['validatedOn'];
    final l$status = json['status'];
    final l$notes = json['notes'];
    final l$referenceId = json['referenceId'];
    final l$$__typename = json['__typename'];
    return Query$CompletedJobs$completedFormInstances$nodes$validations(
      validatedBy: (l$validatedBy as String),
      validatedOn: (l$validatedOn as String),
      status: (l$status as String),
      notes: (l$notes as String?),
      referenceId: (l$referenceId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String validatedBy;

  final String validatedOn;

  final String status;

  final String? notes;

  final String? referenceId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$validatedBy = validatedBy;
    _resultData['validatedBy'] = l$validatedBy;
    final l$validatedOn = validatedOn;
    _resultData['validatedOn'] = l$validatedOn;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$referenceId = referenceId;
    _resultData['referenceId'] = l$referenceId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$validatedBy = validatedBy;
    final l$validatedOn = validatedOn;
    final l$status = status;
    final l$notes = notes;
    final l$referenceId = referenceId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$validatedBy,
      l$validatedOn,
      l$status,
      l$notes,
      l$referenceId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$CompletedJobs$completedFormInstances$nodes$validations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$validatedBy = validatedBy;
    final lOther$validatedBy = other.validatedBy;
    if (l$validatedBy != lOther$validatedBy) {
      return false;
    }
    final l$validatedOn = validatedOn;
    final lOther$validatedOn = other.validatedOn;
    if (l$validatedOn != lOther$validatedOn) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$referenceId = referenceId;
    final lOther$referenceId = other.referenceId;
    if (l$referenceId != lOther$referenceId) {
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

extension UtilityExtension$Query$CompletedJobs$completedFormInstances$nodes$validations
    on Query$CompletedJobs$completedFormInstances$nodes$validations {
  CopyWith$Query$CompletedJobs$completedFormInstances$nodes$validations<
          Query$CompletedJobs$completedFormInstances$nodes$validations>
      get copyWith =>
          CopyWith$Query$CompletedJobs$completedFormInstances$nodes$validations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CompletedJobs$completedFormInstances$nodes$validations<
    TRes> {
  factory CopyWith$Query$CompletedJobs$completedFormInstances$nodes$validations(
    Query$CompletedJobs$completedFormInstances$nodes$validations instance,
    TRes Function(Query$CompletedJobs$completedFormInstances$nodes$validations)
        then,
  ) = _CopyWithImpl$Query$CompletedJobs$completedFormInstances$nodes$validations;

  factory CopyWith$Query$CompletedJobs$completedFormInstances$nodes$validations.stub(
          TRes res) =
      _CopyWithStubImpl$Query$CompletedJobs$completedFormInstances$nodes$validations;

  TRes call({
    String? validatedBy,
    String? validatedOn,
    String? status,
    String? notes,
    String? referenceId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CompletedJobs$completedFormInstances$nodes$validations<
        TRes>
    implements
        CopyWith$Query$CompletedJobs$completedFormInstances$nodes$validations<
            TRes> {
  _CopyWithImpl$Query$CompletedJobs$completedFormInstances$nodes$validations(
    this._instance,
    this._then,
  );

  final Query$CompletedJobs$completedFormInstances$nodes$validations _instance;

  final TRes Function(
      Query$CompletedJobs$completedFormInstances$nodes$validations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? validatedBy = _undefined,
    Object? validatedOn = _undefined,
    Object? status = _undefined,
    Object? notes = _undefined,
    Object? referenceId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CompletedJobs$completedFormInstances$nodes$validations(
        validatedBy: validatedBy == _undefined || validatedBy == null
            ? _instance.validatedBy
            : (validatedBy as String),
        validatedOn: validatedOn == _undefined || validatedOn == null
            ? _instance.validatedOn
            : (validatedOn as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as String),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        referenceId: referenceId == _undefined
            ? _instance.referenceId
            : (referenceId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$CompletedJobs$completedFormInstances$nodes$validations<
        TRes>
    implements
        CopyWith$Query$CompletedJobs$completedFormInstances$nodes$validations<
            TRes> {
  _CopyWithStubImpl$Query$CompletedJobs$completedFormInstances$nodes$validations(
      this._res);

  TRes _res;

  call({
    String? validatedBy,
    String? validatedOn,
    String? status,
    String? notes,
    String? referenceId,
    String? $__typename,
  }) =>
      _res;
}

class Query$CompletedJobs$completedFormInstances$nodes$template {
  Query$CompletedJobs$completedFormInstances$nodes$template({
    this.document,
    required this.id,
    this.templateId,
    required this.version,
    this.title,
    this.description,
    required this.clientId,
    this.referenceId,
    required this.isDigitalSignatureRequired,
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

  factory Query$CompletedJobs$completedFormInstances$nodes$template.fromJson(
      Map<String, dynamic> json) {
    final l$document = json['document'];
    final l$id = json['id'];
    final l$templateId = json['templateId'];
    final l$version = json['version'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$clientId = json['clientId'];
    final l$referenceId = json['referenceId'];
    final l$isDigitalSignatureRequired = json['isDigitalSignatureRequired'];
    final l$validateBySignature = json['validateBySignature'];
    final l$validateByWorkOrder = json['validateByWorkOrder'];
    final l$validateFrom = json['validateFrom'];
    final l$isEmailNotificationRequired = json['isEmailNotificationRequired'];
    final l$sendEmailOnFailedQuestions = json['sendEmailOnFailedQuestions'];
    final l$emailIds = json['emailIds'];
    final l$assignFailedQuestionToTeam = json['assignFailedQuestionToTeam'];
    final l$assignFailedQuestionToTeamId = json['assignFailedQuestionToTeamId'];
    final l$$__typename = json['__typename'];
    return Query$CompletedJobs$completedFormInstances$nodes$template(
      document: (l$document as String?),
      id: (l$id as String),
      templateId: (l$templateId as String?),
      version: (l$version as int),
      title: (l$title as String?),
      description: (l$description as String?),
      clientId: (l$clientId as int),
      referenceId: (l$referenceId as String?),
      isDigitalSignatureRequired: (l$isDigitalSignatureRequired as bool),
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

  final String id;

  final String? templateId;

  final int version;

  final String? title;

  final String? description;

  final int clientId;

  final String? referenceId;

  final bool isDigitalSignatureRequired;

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
    final l$clientId = clientId;
    _resultData['clientId'] = l$clientId;
    final l$referenceId = referenceId;
    _resultData['referenceId'] = l$referenceId;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    _resultData['isDigitalSignatureRequired'] = l$isDigitalSignatureRequired;
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
    final l$id = id;
    final l$templateId = templateId;
    final l$version = version;
    final l$title = title;
    final l$description = description;
    final l$clientId = clientId;
    final l$referenceId = referenceId;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
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
      l$id,
      l$templateId,
      l$version,
      l$title,
      l$description,
      l$clientId,
      l$referenceId,
      l$isDigitalSignatureRequired,
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
    if (!(other is Query$CompletedJobs$completedFormInstances$nodes$template) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$document = document;
    final lOther$document = other.document;
    if (l$document != lOther$document) {
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
    final l$clientId = clientId;
    final lOther$clientId = other.clientId;
    if (l$clientId != lOther$clientId) {
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

extension UtilityExtension$Query$CompletedJobs$completedFormInstances$nodes$template
    on Query$CompletedJobs$completedFormInstances$nodes$template {
  CopyWith$Query$CompletedJobs$completedFormInstances$nodes$template<
          Query$CompletedJobs$completedFormInstances$nodes$template>
      get copyWith =>
          CopyWith$Query$CompletedJobs$completedFormInstances$nodes$template(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CompletedJobs$completedFormInstances$nodes$template<
    TRes> {
  factory CopyWith$Query$CompletedJobs$completedFormInstances$nodes$template(
    Query$CompletedJobs$completedFormInstances$nodes$template instance,
    TRes Function(Query$CompletedJobs$completedFormInstances$nodes$template)
        then,
  ) = _CopyWithImpl$Query$CompletedJobs$completedFormInstances$nodes$template;

  factory CopyWith$Query$CompletedJobs$completedFormInstances$nodes$template.stub(
          TRes res) =
      _CopyWithStubImpl$Query$CompletedJobs$completedFormInstances$nodes$template;

  TRes call({
    String? document,
    String? id,
    String? templateId,
    int? version,
    String? title,
    String? description,
    int? clientId,
    String? referenceId,
    bool? isDigitalSignatureRequired,
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

class _CopyWithImpl$Query$CompletedJobs$completedFormInstances$nodes$template<
        TRes>
    implements
        CopyWith$Query$CompletedJobs$completedFormInstances$nodes$template<
            TRes> {
  _CopyWithImpl$Query$CompletedJobs$completedFormInstances$nodes$template(
    this._instance,
    this._then,
  );

  final Query$CompletedJobs$completedFormInstances$nodes$template _instance;

  final TRes Function(Query$CompletedJobs$completedFormInstances$nodes$template)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? document = _undefined,
    Object? id = _undefined,
    Object? templateId = _undefined,
    Object? version = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? clientId = _undefined,
    Object? referenceId = _undefined,
    Object? isDigitalSignatureRequired = _undefined,
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
      _then(Query$CompletedJobs$completedFormInstances$nodes$template(
        document:
            document == _undefined ? _instance.document : (document as String?),
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
        clientId: clientId == _undefined || clientId == null
            ? _instance.clientId
            : (clientId as int),
        referenceId: referenceId == _undefined
            ? _instance.referenceId
            : (referenceId as String?),
        isDigitalSignatureRequired: isDigitalSignatureRequired == _undefined ||
                isDigitalSignatureRequired == null
            ? _instance.isDigitalSignatureRequired
            : (isDigitalSignatureRequired as bool),
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

class _CopyWithStubImpl$Query$CompletedJobs$completedFormInstances$nodes$template<
        TRes>
    implements
        CopyWith$Query$CompletedJobs$completedFormInstances$nodes$template<
            TRes> {
  _CopyWithStubImpl$Query$CompletedJobs$completedFormInstances$nodes$template(
      this._res);

  TRes _res;

  call({
    String? document,
    String? id,
    String? templateId,
    int? version,
    String? title,
    String? description,
    int? clientId,
    String? referenceId,
    bool? isDigitalSignatureRequired,
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

class Query$CompletedJobs$completedFormInstances$pageInfo {
  Query$CompletedJobs$completedFormInstances$pageInfo({
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$CompletedJobs$completedFormInstances$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$CompletedJobs$completedFormInstances$pageInfo(
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
    if (!(other is Query$CompletedJobs$completedFormInstances$pageInfo) ||
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

extension UtilityExtension$Query$CompletedJobs$completedFormInstances$pageInfo
    on Query$CompletedJobs$completedFormInstances$pageInfo {
  CopyWith$Query$CompletedJobs$completedFormInstances$pageInfo<
          Query$CompletedJobs$completedFormInstances$pageInfo>
      get copyWith =>
          CopyWith$Query$CompletedJobs$completedFormInstances$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CompletedJobs$completedFormInstances$pageInfo<
    TRes> {
  factory CopyWith$Query$CompletedJobs$completedFormInstances$pageInfo(
    Query$CompletedJobs$completedFormInstances$pageInfo instance,
    TRes Function(Query$CompletedJobs$completedFormInstances$pageInfo) then,
  ) = _CopyWithImpl$Query$CompletedJobs$completedFormInstances$pageInfo;

  factory CopyWith$Query$CompletedJobs$completedFormInstances$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$CompletedJobs$completedFormInstances$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CompletedJobs$completedFormInstances$pageInfo<TRes>
    implements
        CopyWith$Query$CompletedJobs$completedFormInstances$pageInfo<TRes> {
  _CopyWithImpl$Query$CompletedJobs$completedFormInstances$pageInfo(
    this._instance,
    this._then,
  );

  final Query$CompletedJobs$completedFormInstances$pageInfo _instance;

  final TRes Function(Query$CompletedJobs$completedFormInstances$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CompletedJobs$completedFormInstances$pageInfo(
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

class _CopyWithStubImpl$Query$CompletedJobs$completedFormInstances$pageInfo<
        TRes>
    implements
        CopyWith$Query$CompletedJobs$completedFormInstances$pageInfo<TRes> {
  _CopyWithStubImpl$Query$CompletedJobs$completedFormInstances$pageInfo(
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
