import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetAllJobsbyJobIds {
  factory Variables$Query$GetAllJobsbyJobIds({
    int? first,
    String? after,
    int? last,
    String? before,
    required Input$DiagnosticJobFormFilterInput filter,
  }) =>
      Variables$Query$GetAllJobsbyJobIds._({
        if (first != null) r'first': first,
        if (after != null) r'after': after,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        r'filter': filter,
      });

  Variables$Query$GetAllJobsbyJobIds._(this._$data);

  factory Variables$Query$GetAllJobsbyJobIds.fromJson(
      Map<String, dynamic> data) {
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
    result$data['filter'] = Input$DiagnosticJobFormFilterInput.fromJson(
        (l$filter as Map<String, dynamic>));
    return Variables$Query$GetAllJobsbyJobIds._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  String? get after => (_$data['after'] as String?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  Input$DiagnosticJobFormFilterInput get filter =>
      (_$data['filter'] as Input$DiagnosticJobFormFilterInput);

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

  CopyWith$Variables$Query$GetAllJobsbyJobIds<
          Variables$Query$GetAllJobsbyJobIds>
      get copyWith => CopyWith$Variables$Query$GetAllJobsbyJobIds(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAllJobsbyJobIds) ||
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

abstract class CopyWith$Variables$Query$GetAllJobsbyJobIds<TRes> {
  factory CopyWith$Variables$Query$GetAllJobsbyJobIds(
    Variables$Query$GetAllJobsbyJobIds instance,
    TRes Function(Variables$Query$GetAllJobsbyJobIds) then,
  ) = _CopyWithImpl$Variables$Query$GetAllJobsbyJobIds;

  factory CopyWith$Variables$Query$GetAllJobsbyJobIds.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllJobsbyJobIds;

  TRes call({
    int? first,
    String? after,
    int? last,
    String? before,
    Input$DiagnosticJobFormFilterInput? filter,
  });
}

class _CopyWithImpl$Variables$Query$GetAllJobsbyJobIds<TRes>
    implements CopyWith$Variables$Query$GetAllJobsbyJobIds<TRes> {
  _CopyWithImpl$Variables$Query$GetAllJobsbyJobIds(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllJobsbyJobIds _instance;

  final TRes Function(Variables$Query$GetAllJobsbyJobIds) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? after = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? filter = _undefined,
  }) =>
      _then(Variables$Query$GetAllJobsbyJobIds._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (after != _undefined) 'after': (after as String?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as String?),
        if (filter != _undefined && filter != null)
          'filter': (filter as Input$DiagnosticJobFormFilterInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllJobsbyJobIds<TRes>
    implements CopyWith$Variables$Query$GetAllJobsbyJobIds<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllJobsbyJobIds(this._res);

  TRes _res;

  call({
    int? first,
    String? after,
    int? last,
    String? before,
    Input$DiagnosticJobFormFilterInput? filter,
  }) =>
      _res;
}

class Query$GetAllJobsbyJobIds {
  Query$GetAllJobsbyJobIds({
    this.jobFormsForDiagnostics,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetAllJobsbyJobIds.fromJson(Map<String, dynamic> json) {
    final l$jobFormsForDiagnostics = json['jobFormsForDiagnostics'];
    final l$$__typename = json['__typename'];
    return Query$GetAllJobsbyJobIds(
      jobFormsForDiagnostics: l$jobFormsForDiagnostics == null
          ? null
          : Query$GetAllJobsbyJobIds$jobFormsForDiagnostics.fromJson(
              (l$jobFormsForDiagnostics as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAllJobsbyJobIds$jobFormsForDiagnostics? jobFormsForDiagnostics;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$jobFormsForDiagnostics = jobFormsForDiagnostics;
    _resultData['jobFormsForDiagnostics'] = l$jobFormsForDiagnostics?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$jobFormsForDiagnostics = jobFormsForDiagnostics;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$jobFormsForDiagnostics,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllJobsbyJobIds) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$jobFormsForDiagnostics = jobFormsForDiagnostics;
    final lOther$jobFormsForDiagnostics = other.jobFormsForDiagnostics;
    if (l$jobFormsForDiagnostics != lOther$jobFormsForDiagnostics) {
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

extension UtilityExtension$Query$GetAllJobsbyJobIds
    on Query$GetAllJobsbyJobIds {
  CopyWith$Query$GetAllJobsbyJobIds<Query$GetAllJobsbyJobIds> get copyWith =>
      CopyWith$Query$GetAllJobsbyJobIds(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAllJobsbyJobIds<TRes> {
  factory CopyWith$Query$GetAllJobsbyJobIds(
    Query$GetAllJobsbyJobIds instance,
    TRes Function(Query$GetAllJobsbyJobIds) then,
  ) = _CopyWithImpl$Query$GetAllJobsbyJobIds;

  factory CopyWith$Query$GetAllJobsbyJobIds.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllJobsbyJobIds;

  TRes call({
    Query$GetAllJobsbyJobIds$jobFormsForDiagnostics? jobFormsForDiagnostics,
    String? $__typename,
  });
  CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics<TRes>
      get jobFormsForDiagnostics;
}

class _CopyWithImpl$Query$GetAllJobsbyJobIds<TRes>
    implements CopyWith$Query$GetAllJobsbyJobIds<TRes> {
  _CopyWithImpl$Query$GetAllJobsbyJobIds(
    this._instance,
    this._then,
  );

  final Query$GetAllJobsbyJobIds _instance;

  final TRes Function(Query$GetAllJobsbyJobIds) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? jobFormsForDiagnostics = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllJobsbyJobIds(
        jobFormsForDiagnostics: jobFormsForDiagnostics == _undefined
            ? _instance.jobFormsForDiagnostics
            : (jobFormsForDiagnostics
                as Query$GetAllJobsbyJobIds$jobFormsForDiagnostics?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics<TRes>
      get jobFormsForDiagnostics {
    final local$jobFormsForDiagnostics = _instance.jobFormsForDiagnostics;
    return local$jobFormsForDiagnostics == null
        ? CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics.stub(
            _then(_instance))
        : CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics(
            local$jobFormsForDiagnostics,
            (e) => call(jobFormsForDiagnostics: e));
  }
}

class _CopyWithStubImpl$Query$GetAllJobsbyJobIds<TRes>
    implements CopyWith$Query$GetAllJobsbyJobIds<TRes> {
  _CopyWithStubImpl$Query$GetAllJobsbyJobIds(this._res);

  TRes _res;

  call({
    Query$GetAllJobsbyJobIds$jobFormsForDiagnostics? jobFormsForDiagnostics,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics<TRes>
      get jobFormsForDiagnostics =>
          CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics.stub(_res);
}

const documentNodeQueryGetAllJobsbyJobIds = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllJobsbyJobIds'),
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
          name: NameNode(value: 'DiagnosticJobFormFilterInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'jobFormsForDiagnostics'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
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
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
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
                name: NameNode(value: 'status'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'scheduledItemStatus'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'd365Status'),
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
                name: NameNode(value: 'companyCode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'capturedMediaCount'),
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

class Query$GetAllJobsbyJobIds$jobFormsForDiagnostics {
  Query$GetAllJobsbyJobIds$jobFormsForDiagnostics({
    this.nodes,
    required this.pageInfo,
    this.$__typename = 'JobFormsForDiagnosticsConnection',
  });

  factory Query$GetAllJobsbyJobIds$jobFormsForDiagnostics.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetAllJobsbyJobIds$jobFormsForDiagnostics(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) =>
              Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes>? nodes;

  final Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo pageInfo;

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
    if (!(other is Query$GetAllJobsbyJobIds$jobFormsForDiagnostics) ||
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

extension UtilityExtension$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics
    on Query$GetAllJobsbyJobIds$jobFormsForDiagnostics {
  CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics<
          Query$GetAllJobsbyJobIds$jobFormsForDiagnostics>
      get copyWith => CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics<TRes> {
  factory CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics(
    Query$GetAllJobsbyJobIds$jobFormsForDiagnostics instance,
    TRes Function(Query$GetAllJobsbyJobIds$jobFormsForDiagnostics) then,
  ) = _CopyWithImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics;

  factory CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics;

  TRes call({
    List<Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes>? nodes,
    Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes>? Function(
              Iterable<
                  CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes<
                      Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes>>?)
          _fn);
  CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics<TRes>
    implements CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics<TRes> {
  _CopyWithImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics(
    this._instance,
    this._then,
  );

  final Query$GetAllJobsbyJobIds$jobFormsForDiagnostics _instance;

  final TRes Function(Query$GetAllJobsbyJobIds$jobFormsForDiagnostics) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllJobsbyJobIds$jobFormsForDiagnostics(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<
                Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes>?),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes>? Function(
                  Iterable<
                      CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes<
                          Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) =>
              CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics<TRes>
    implements CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics<TRes> {
  _CopyWithStubImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics(this._res);

  TRes _res;

  call({
    List<Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes>? nodes,
    Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;

  CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo
              .stub(_res);
}

class Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes {
  Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes({
    this.assetCode,
    this.scheduledItemId,
    this.depotNo,
    required this.id,
    this.jobType,
    this.jobTypeVariant,
    this.startedBy,
    this.startedDate,
    this.status,
    this.submittedBy,
    this.submittedDate,
    this.template,
    required this.templateVersionId,
    this.workOrderId,
    this.workOrderDescription,
    this.jobTrade,
    this.assignedTo,
    required this.isDigitalSignatureRequired,
    this.assignedToTeam,
    this.assignedToTeamId,
    required this.yardCode,
    required this.scheduleItemType,
    required this.jobPriority,
    this.notes,
    this.scheduledItemStatus,
    this.d365Status,
    this.d365Error,
    this.companyCode,
    required this.capturedMediaCount,
    this.$__typename = 'DiagnosticJobForm',
  });

  factory Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$assetCode = json['assetCode'];
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
    final l$template = json['template'];
    final l$templateVersionId = json['templateVersionId'];
    final l$workOrderId = json['workOrderId'];
    final l$workOrderDescription = json['workOrderDescription'];
    final l$jobTrade = json['jobTrade'];
    final l$assignedTo = json['assignedTo'];
    final l$isDigitalSignatureRequired = json['isDigitalSignatureRequired'];
    final l$assignedToTeam = json['assignedToTeam'];
    final l$assignedToTeamId = json['assignedToTeamId'];
    final l$yardCode = json['yardCode'];
    final l$scheduleItemType = json['scheduleItemType'];
    final l$jobPriority = json['jobPriority'];
    final l$notes = json['notes'];
    final l$scheduledItemStatus = json['scheduledItemStatus'];
    final l$d365Status = json['d365Status'];
    final l$d365Error = json['d365Error'];
    final l$companyCode = json['companyCode'];
    final l$capturedMediaCount = json['capturedMediaCount'];
    final l$$__typename = json['__typename'];
    return Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes(
      assetCode: (l$assetCode as String?),
      scheduledItemId: (l$scheduledItemId as String?),
      depotNo: (l$depotNo as String?),
      id: (l$id as String),
      jobType: (l$jobType as String?),
      jobTypeVariant: (l$jobTypeVariant as String?),
      startedBy: (l$startedBy as String?),
      startedDate: (l$startedDate as String?),
      status: (l$status as String?),
      submittedBy: (l$submittedBy as String?),
      submittedDate: (l$submittedDate as String?),
      template: l$template == null
          ? null
          : Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template
              .fromJson((l$template as Map<String, dynamic>)),
      templateVersionId: (l$templateVersionId as String),
      workOrderId: (l$workOrderId as String?),
      workOrderDescription: (l$workOrderDescription as String?),
      jobTrade: (l$jobTrade as String?),
      assignedTo: (l$assignedTo as String?),
      isDigitalSignatureRequired: (l$isDigitalSignatureRequired as bool),
      assignedToTeam: (l$assignedToTeam as String?),
      assignedToTeamId: (l$assignedToTeamId as String?),
      yardCode: (l$yardCode as String),
      scheduleItemType: (l$scheduleItemType as String),
      jobPriority: (l$jobPriority as String),
      notes: (l$notes as String?),
      scheduledItemStatus: (l$scheduledItemStatus as String?),
      d365Status: (l$d365Status as String?),
      d365Error: (l$d365Error as String?),
      companyCode: (l$companyCode as String?),
      capturedMediaCount: (l$capturedMediaCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String? assetCode;

  final String? scheduledItemId;

  final String? depotNo;

  final String id;

  final String? jobType;

  final String? jobTypeVariant;

  final String? startedBy;

  final String? startedDate;

  final String? status;

  final String? submittedBy;

  final String? submittedDate;

  final Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template?
      template;

  final String templateVersionId;

  final String? workOrderId;

  final String? workOrderDescription;

  final String? jobTrade;

  final String? assignedTo;

  final bool isDigitalSignatureRequired;

  final String? assignedToTeam;

  final String? assignedToTeamId;

  final String yardCode;

  final String scheduleItemType;

  final String jobPriority;

  final String? notes;

  final String? scheduledItemStatus;

  final String? d365Status;

  final String? d365Error;

  final String? companyCode;

  final int capturedMediaCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assetCode = assetCode;
    _resultData['assetCode'] = l$assetCode;
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
    final l$template = template;
    _resultData['template'] = l$template?.toJson();
    final l$templateVersionId = templateVersionId;
    _resultData['templateVersionId'] = l$templateVersionId;
    final l$workOrderId = workOrderId;
    _resultData['workOrderId'] = l$workOrderId;
    final l$workOrderDescription = workOrderDescription;
    _resultData['workOrderDescription'] = l$workOrderDescription;
    final l$jobTrade = jobTrade;
    _resultData['jobTrade'] = l$jobTrade;
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
    final l$scheduleItemType = scheduleItemType;
    _resultData['scheduleItemType'] = l$scheduleItemType;
    final l$jobPriority = jobPriority;
    _resultData['jobPriority'] = l$jobPriority;
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$scheduledItemStatus = scheduledItemStatus;
    _resultData['scheduledItemStatus'] = l$scheduledItemStatus;
    final l$d365Status = d365Status;
    _resultData['d365Status'] = l$d365Status;
    final l$d365Error = d365Error;
    _resultData['d365Error'] = l$d365Error;
    final l$companyCode = companyCode;
    _resultData['companyCode'] = l$companyCode;
    final l$capturedMediaCount = capturedMediaCount;
    _resultData['capturedMediaCount'] = l$capturedMediaCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$assetCode = assetCode;
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
    final l$template = template;
    final l$templateVersionId = templateVersionId;
    final l$workOrderId = workOrderId;
    final l$workOrderDescription = workOrderDescription;
    final l$jobTrade = jobTrade;
    final l$assignedTo = assignedTo;
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final l$assignedToTeam = assignedToTeam;
    final l$assignedToTeamId = assignedToTeamId;
    final l$yardCode = yardCode;
    final l$scheduleItemType = scheduleItemType;
    final l$jobPriority = jobPriority;
    final l$notes = notes;
    final l$scheduledItemStatus = scheduledItemStatus;
    final l$d365Status = d365Status;
    final l$d365Error = d365Error;
    final l$companyCode = companyCode;
    final l$capturedMediaCount = capturedMediaCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$assetCode,
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
      l$template,
      l$templateVersionId,
      l$workOrderId,
      l$workOrderDescription,
      l$jobTrade,
      l$assignedTo,
      l$isDigitalSignatureRequired,
      l$assignedToTeam,
      l$assignedToTeamId,
      l$yardCode,
      l$scheduleItemType,
      l$jobPriority,
      l$notes,
      l$scheduledItemStatus,
      l$d365Status,
      l$d365Error,
      l$companyCode,
      l$capturedMediaCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetCode = assetCode;
    final lOther$assetCode = other.assetCode;
    if (l$assetCode != lOther$assetCode) {
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
    final l$scheduledItemStatus = scheduledItemStatus;
    final lOther$scheduledItemStatus = other.scheduledItemStatus;
    if (l$scheduledItemStatus != lOther$scheduledItemStatus) {
      return false;
    }
    final l$d365Status = d365Status;
    final lOther$d365Status = other.d365Status;
    if (l$d365Status != lOther$d365Status) {
      return false;
    }
    final l$d365Error = d365Error;
    final lOther$d365Error = other.d365Error;
    if (l$d365Error != lOther$d365Error) {
      return false;
    }
    final l$companyCode = companyCode;
    final lOther$companyCode = other.companyCode;
    if (l$companyCode != lOther$companyCode) {
      return false;
    }
    final l$capturedMediaCount = capturedMediaCount;
    final lOther$capturedMediaCount = other.capturedMediaCount;
    if (l$capturedMediaCount != lOther$capturedMediaCount) {
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

extension UtilityExtension$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes
    on Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes {
  CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes<
          Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes>
      get copyWith =>
          CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes<
    TRes> {
  factory CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes(
    Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes instance,
    TRes Function(Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes) then,
  ) = _CopyWithImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes;

  factory CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes;

  TRes call({
    String? assetCode,
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
    Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template? template,
    String? templateVersionId,
    String? workOrderId,
    String? workOrderDescription,
    String? jobTrade,
    String? assignedTo,
    bool? isDigitalSignatureRequired,
    String? assignedToTeam,
    String? assignedToTeamId,
    String? yardCode,
    String? scheduleItemType,
    String? jobPriority,
    String? notes,
    String? scheduledItemStatus,
    String? d365Status,
    String? d365Error,
    String? companyCode,
    int? capturedMediaCount,
    String? $__typename,
  });
  CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template<TRes>
      get template;
}

class _CopyWithImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes<TRes>
    implements
        CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes<TRes> {
  _CopyWithImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes(
    this._instance,
    this._then,
  );

  final Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes _instance;

  final TRes Function(Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetCode = _undefined,
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
    Object? template = _undefined,
    Object? templateVersionId = _undefined,
    Object? workOrderId = _undefined,
    Object? workOrderDescription = _undefined,
    Object? jobTrade = _undefined,
    Object? assignedTo = _undefined,
    Object? isDigitalSignatureRequired = _undefined,
    Object? assignedToTeam = _undefined,
    Object? assignedToTeamId = _undefined,
    Object? yardCode = _undefined,
    Object? scheduleItemType = _undefined,
    Object? jobPriority = _undefined,
    Object? notes = _undefined,
    Object? scheduledItemStatus = _undefined,
    Object? d365Status = _undefined,
    Object? d365Error = _undefined,
    Object? companyCode = _undefined,
    Object? capturedMediaCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes(
        assetCode: assetCode == _undefined
            ? _instance.assetCode
            : (assetCode as String?),
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
        startedBy: startedBy == _undefined
            ? _instance.startedBy
            : (startedBy as String?),
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
        template: template == _undefined
            ? _instance.template
            : (template
                as Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template?),
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
        jobTrade:
            jobTrade == _undefined ? _instance.jobTrade : (jobTrade as String?),
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
        scheduleItemType:
            scheduleItemType == _undefined || scheduleItemType == null
                ? _instance.scheduleItemType
                : (scheduleItemType as String),
        jobPriority: jobPriority == _undefined || jobPriority == null
            ? _instance.jobPriority
            : (jobPriority as String),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        scheduledItemStatus: scheduledItemStatus == _undefined
            ? _instance.scheduledItemStatus
            : (scheduledItemStatus as String?),
        d365Status: d365Status == _undefined
            ? _instance.d365Status
            : (d365Status as String?),
        d365Error: d365Error == _undefined
            ? _instance.d365Error
            : (d365Error as String?),
        companyCode: companyCode == _undefined
            ? _instance.companyCode
            : (companyCode as String?),
        capturedMediaCount:
            capturedMediaCount == _undefined || capturedMediaCount == null
                ? _instance.capturedMediaCount
                : (capturedMediaCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template<TRes>
      get template {
    final local$template = _instance.template;
    return local$template == null
        ? CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template
            .stub(_then(_instance))
        : CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template(
            local$template, (e) => call(template: e));
  }
}

class _CopyWithStubImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes<
        TRes>
    implements
        CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes<TRes> {
  _CopyWithStubImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes(
      this._res);

  TRes _res;

  call({
    String? assetCode,
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
    Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template? template,
    String? templateVersionId,
    String? workOrderId,
    String? workOrderDescription,
    String? jobTrade,
    String? assignedTo,
    bool? isDigitalSignatureRequired,
    String? assignedToTeam,
    String? assignedToTeamId,
    String? yardCode,
    String? scheduleItemType,
    String? jobPriority,
    String? notes,
    String? scheduledItemStatus,
    String? d365Status,
    String? d365Error,
    String? companyCode,
    int? capturedMediaCount,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template<TRes>
      get template =>
          CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template
              .stub(_res);
}

class Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template {
  Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template({
    this.description,
    required this.id,
    this.templateId,
    this.title,
    required this.version,
    required this.isDigitalSignatureRequired,
    this.referenceId,
    this.$__typename = 'FormTemplate',
  });

  factory Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template.fromJson(
      Map<String, dynamic> json) {
    final l$description = json['description'];
    final l$id = json['id'];
    final l$templateId = json['templateId'];
    final l$title = json['title'];
    final l$version = json['version'];
    final l$isDigitalSignatureRequired = json['isDigitalSignatureRequired'];
    final l$referenceId = json['referenceId'];
    final l$$__typename = json['__typename'];
    return Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template(
      description: (l$description as String?),
      id: (l$id as String),
      templateId: (l$templateId as String?),
      title: (l$title as String?),
      version: (l$version as int),
      isDigitalSignatureRequired: (l$isDigitalSignatureRequired as bool),
      referenceId: (l$referenceId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? description;

  final String id;

  final String? templateId;

  final String? title;

  final int version;

  final bool isDigitalSignatureRequired;

  final String? referenceId;

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
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    _resultData['isDigitalSignatureRequired'] = l$isDigitalSignatureRequired;
    final l$referenceId = referenceId;
    _resultData['referenceId'] = l$referenceId;
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
    final l$isDigitalSignatureRequired = isDigitalSignatureRequired;
    final l$referenceId = referenceId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$description,
      l$id,
      l$templateId,
      l$title,
      l$version,
      l$isDigitalSignatureRequired,
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
            is Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template
    on Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template {
  CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template<
          Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template>
      get copyWith =>
          CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template<
    TRes> {
  factory CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template(
    Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template instance,
    TRes Function(
            Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template)
        then,
  ) = _CopyWithImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template;

  factory CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template;

  TRes call({
    String? description,
    String? id,
    String? templateId,
    String? title,
    int? version,
    bool? isDigitalSignatureRequired,
    String? referenceId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template<
        TRes>
    implements
        CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template<
            TRes> {
  _CopyWithImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template(
    this._instance,
    this._then,
  );

  final Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template
      _instance;

  final TRes Function(
      Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? description = _undefined,
    Object? id = _undefined,
    Object? templateId = _undefined,
    Object? title = _undefined,
    Object? version = _undefined,
    Object? isDigitalSignatureRequired = _undefined,
    Object? referenceId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template(
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
        isDigitalSignatureRequired: isDigitalSignatureRequired == _undefined ||
                isDigitalSignatureRequired == null
            ? _instance.isDigitalSignatureRequired
            : (isDigitalSignatureRequired as bool),
        referenceId: referenceId == _undefined
            ? _instance.referenceId
            : (referenceId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template<
        TRes>
    implements
        CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template<
            TRes> {
  _CopyWithStubImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$nodes$template(
      this._res);

  TRes _res;

  call({
    String? description,
    String? id,
    String? templateId,
    String? title,
    int? version,
    bool? isDigitalSignatureRequired,
    String? referenceId,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo {
  Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo({
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo(
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
    if (!(other is Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo) ||
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

extension UtilityExtension$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo
    on Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo {
  CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo<
          Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo>
      get copyWith =>
          CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo<
    TRes> {
  factory CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo(
    Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo instance,
    TRes Function(Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo)
        then,
  ) = _CopyWithImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo;

  factory CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo<
        TRes>
    implements
        CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo<
            TRes> {
  _CopyWithImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo _instance;

  final TRes Function(Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo(
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

class _CopyWithStubImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo<
        TRes>
    implements
        CopyWith$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$GetAllJobsbyJobIds$jobFormsForDiagnostics$pageInfo(
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
