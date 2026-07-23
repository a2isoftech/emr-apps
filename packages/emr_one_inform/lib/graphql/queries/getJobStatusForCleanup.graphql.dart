import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetJobStatusForCLeanUp {
  factory Variables$Query$GetJobStatusForCLeanUp({
    int? first,
    String? after,
    int? last,
    String? before,
    required Input$DiagnosticJobFormFilterInput filter,
  }) =>
      Variables$Query$GetJobStatusForCLeanUp._({
        if (first != null) r'first': first,
        if (after != null) r'after': after,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        r'filter': filter,
      });

  Variables$Query$GetJobStatusForCLeanUp._(this._$data);

  factory Variables$Query$GetJobStatusForCLeanUp.fromJson(
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
    return Variables$Query$GetJobStatusForCLeanUp._(result$data);
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

  CopyWith$Variables$Query$GetJobStatusForCLeanUp<
          Variables$Query$GetJobStatusForCLeanUp>
      get copyWith => CopyWith$Variables$Query$GetJobStatusForCLeanUp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetJobStatusForCLeanUp) ||
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

abstract class CopyWith$Variables$Query$GetJobStatusForCLeanUp<TRes> {
  factory CopyWith$Variables$Query$GetJobStatusForCLeanUp(
    Variables$Query$GetJobStatusForCLeanUp instance,
    TRes Function(Variables$Query$GetJobStatusForCLeanUp) then,
  ) = _CopyWithImpl$Variables$Query$GetJobStatusForCLeanUp;

  factory CopyWith$Variables$Query$GetJobStatusForCLeanUp.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetJobStatusForCLeanUp;

  TRes call({
    int? first,
    String? after,
    int? last,
    String? before,
    Input$DiagnosticJobFormFilterInput? filter,
  });
}

class _CopyWithImpl$Variables$Query$GetJobStatusForCLeanUp<TRes>
    implements CopyWith$Variables$Query$GetJobStatusForCLeanUp<TRes> {
  _CopyWithImpl$Variables$Query$GetJobStatusForCLeanUp(
    this._instance,
    this._then,
  );

  final Variables$Query$GetJobStatusForCLeanUp _instance;

  final TRes Function(Variables$Query$GetJobStatusForCLeanUp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? after = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? filter = _undefined,
  }) =>
      _then(Variables$Query$GetJobStatusForCLeanUp._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (after != _undefined) 'after': (after as String?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as String?),
        if (filter != _undefined && filter != null)
          'filter': (filter as Input$DiagnosticJobFormFilterInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetJobStatusForCLeanUp<TRes>
    implements CopyWith$Variables$Query$GetJobStatusForCLeanUp<TRes> {
  _CopyWithStubImpl$Variables$Query$GetJobStatusForCLeanUp(this._res);

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

class Query$GetJobStatusForCLeanUp {
  Query$GetJobStatusForCLeanUp({
    this.jobFormsForDiagnostics,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetJobStatusForCLeanUp.fromJson(Map<String, dynamic> json) {
    final l$jobFormsForDiagnostics = json['jobFormsForDiagnostics'];
    final l$$__typename = json['__typename'];
    return Query$GetJobStatusForCLeanUp(
      jobFormsForDiagnostics: l$jobFormsForDiagnostics == null
          ? null
          : Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics.fromJson(
              (l$jobFormsForDiagnostics as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics?
      jobFormsForDiagnostics;

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
    if (!(other is Query$GetJobStatusForCLeanUp) ||
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

extension UtilityExtension$Query$GetJobStatusForCLeanUp
    on Query$GetJobStatusForCLeanUp {
  CopyWith$Query$GetJobStatusForCLeanUp<Query$GetJobStatusForCLeanUp>
      get copyWith => CopyWith$Query$GetJobStatusForCLeanUp(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetJobStatusForCLeanUp<TRes> {
  factory CopyWith$Query$GetJobStatusForCLeanUp(
    Query$GetJobStatusForCLeanUp instance,
    TRes Function(Query$GetJobStatusForCLeanUp) then,
  ) = _CopyWithImpl$Query$GetJobStatusForCLeanUp;

  factory CopyWith$Query$GetJobStatusForCLeanUp.stub(TRes res) =
      _CopyWithStubImpl$Query$GetJobStatusForCLeanUp;

  TRes call({
    Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics? jobFormsForDiagnostics,
    String? $__typename,
  });
  CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics<TRes>
      get jobFormsForDiagnostics;
}

class _CopyWithImpl$Query$GetJobStatusForCLeanUp<TRes>
    implements CopyWith$Query$GetJobStatusForCLeanUp<TRes> {
  _CopyWithImpl$Query$GetJobStatusForCLeanUp(
    this._instance,
    this._then,
  );

  final Query$GetJobStatusForCLeanUp _instance;

  final TRes Function(Query$GetJobStatusForCLeanUp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? jobFormsForDiagnostics = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetJobStatusForCLeanUp(
        jobFormsForDiagnostics: jobFormsForDiagnostics == _undefined
            ? _instance.jobFormsForDiagnostics
            : (jobFormsForDiagnostics
                as Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics<TRes>
      get jobFormsForDiagnostics {
    final local$jobFormsForDiagnostics = _instance.jobFormsForDiagnostics;
    return local$jobFormsForDiagnostics == null
        ? CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics.stub(
            _then(_instance))
        : CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics(
            local$jobFormsForDiagnostics,
            (e) => call(jobFormsForDiagnostics: e));
  }
}

class _CopyWithStubImpl$Query$GetJobStatusForCLeanUp<TRes>
    implements CopyWith$Query$GetJobStatusForCLeanUp<TRes> {
  _CopyWithStubImpl$Query$GetJobStatusForCLeanUp(this._res);

  TRes _res;

  call({
    Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics? jobFormsForDiagnostics,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics<TRes>
      get jobFormsForDiagnostics =>
          CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics.stub(
              _res);
}

const documentNodeQueryGetJobStatusForCLeanUp = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetJobStatusForCLeanUp'),
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
                name: NameNode(value: 'scheduledItemId'),
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

class Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics {
  Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics({
    this.nodes,
    required this.pageInfo,
    this.$__typename = 'JobFormsForDiagnosticsConnection',
  });

  factory Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes>? nodes;

  final Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo pageInfo;

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
    if (!(other is Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics) ||
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

extension UtilityExtension$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics
    on Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics {
  CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics<
          Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics>
      get copyWith =>
          CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics<
    TRes> {
  factory CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics(
    Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics instance,
    TRes Function(Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics) then,
  ) = _CopyWithImpl$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics;

  factory CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics;

  TRes call({
    List<Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes>? nodes,
    Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes>? Function(
              Iterable<
                  CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes<
                      Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes>>?)
          _fn);
  CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics<TRes>
    implements
        CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics<TRes> {
  _CopyWithImpl$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics(
    this._instance,
    this._then,
  );

  final Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics _instance;

  final TRes Function(Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<
                Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes>?),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes>? Function(
                  Iterable<
                      CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes<
                          Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) =>
              CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics<
        TRes>
    implements
        CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics<TRes> {
  _CopyWithStubImpl$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics(
      this._res);

  TRes _res;

  call({
    List<Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes>? nodes,
    Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;

  CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo
              .stub(_res);
}

class Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes {
  Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes({
    this.scheduledItemId,
    required this.id,
    this.startedBy,
    this.startedDate,
    this.submittedBy,
    this.submittedDate,
    this.workOrderId,
    this.workOrderDescription,
    this.status,
    this.scheduledItemStatus,
    this.d365Status,
    this.d365Error,
    this.$__typename = 'DiagnosticJobForm',
  });

  factory Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$scheduledItemId = json['scheduledItemId'];
    final l$id = json['id'];
    final l$startedBy = json['startedBy'];
    final l$startedDate = json['startedDate'];
    final l$submittedBy = json['submittedBy'];
    final l$submittedDate = json['submittedDate'];
    final l$workOrderId = json['workOrderId'];
    final l$workOrderDescription = json['workOrderDescription'];
    final l$status = json['status'];
    final l$scheduledItemStatus = json['scheduledItemStatus'];
    final l$d365Status = json['d365Status'];
    final l$d365Error = json['d365Error'];
    final l$$__typename = json['__typename'];
    return Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes(
      scheduledItemId: (l$scheduledItemId as String?),
      id: (l$id as String),
      startedBy: (l$startedBy as String?),
      startedDate: (l$startedDate as String?),
      submittedBy: (l$submittedBy as String?),
      submittedDate: (l$submittedDate as String?),
      workOrderId: (l$workOrderId as String?),
      workOrderDescription: (l$workOrderDescription as String?),
      status: (l$status as String?),
      scheduledItemStatus: (l$scheduledItemStatus as String?),
      d365Status: (l$d365Status as String?),
      d365Error: (l$d365Error as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? scheduledItemId;

  final String id;

  final String? startedBy;

  final String? startedDate;

  final String? submittedBy;

  final String? submittedDate;

  final String? workOrderId;

  final String? workOrderDescription;

  final String? status;

  final String? scheduledItemStatus;

  final String? d365Status;

  final String? d365Error;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$scheduledItemId = scheduledItemId;
    _resultData['scheduledItemId'] = l$scheduledItemId;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$startedBy = startedBy;
    _resultData['startedBy'] = l$startedBy;
    final l$startedDate = startedDate;
    _resultData['startedDate'] = l$startedDate;
    final l$submittedBy = submittedBy;
    _resultData['submittedBy'] = l$submittedBy;
    final l$submittedDate = submittedDate;
    _resultData['submittedDate'] = l$submittedDate;
    final l$workOrderId = workOrderId;
    _resultData['workOrderId'] = l$workOrderId;
    final l$workOrderDescription = workOrderDescription;
    _resultData['workOrderDescription'] = l$workOrderDescription;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$scheduledItemStatus = scheduledItemStatus;
    _resultData['scheduledItemStatus'] = l$scheduledItemStatus;
    final l$d365Status = d365Status;
    _resultData['d365Status'] = l$d365Status;
    final l$d365Error = d365Error;
    _resultData['d365Error'] = l$d365Error;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$scheduledItemId = scheduledItemId;
    final l$id = id;
    final l$startedBy = startedBy;
    final l$startedDate = startedDate;
    final l$submittedBy = submittedBy;
    final l$submittedDate = submittedDate;
    final l$workOrderId = workOrderId;
    final l$workOrderDescription = workOrderDescription;
    final l$status = status;
    final l$scheduledItemStatus = scheduledItemStatus;
    final l$d365Status = d365Status;
    final l$d365Error = d365Error;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$scheduledItemId,
      l$id,
      l$startedBy,
      l$startedDate,
      l$submittedBy,
      l$submittedDate,
      l$workOrderId,
      l$workOrderDescription,
      l$status,
      l$scheduledItemStatus,
      l$d365Status,
      l$d365Error,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$scheduledItemId = scheduledItemId;
    final lOther$scheduledItemId = other.scheduledItemId;
    if (l$scheduledItemId != lOther$scheduledItemId) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes
    on Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes {
  CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes<
          Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes>
      get copyWith =>
          CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes<
    TRes> {
  factory CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes(
    Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes instance,
    TRes Function(Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes)
        then,
  ) = _CopyWithImpl$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes;

  factory CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes;

  TRes call({
    String? scheduledItemId,
    String? id,
    String? startedBy,
    String? startedDate,
    String? submittedBy,
    String? submittedDate,
    String? workOrderId,
    String? workOrderDescription,
    String? status,
    String? scheduledItemStatus,
    String? d365Status,
    String? d365Error,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes<
        TRes>
    implements
        CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes<
            TRes> {
  _CopyWithImpl$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes(
    this._instance,
    this._then,
  );

  final Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes _instance;

  final TRes Function(Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scheduledItemId = _undefined,
    Object? id = _undefined,
    Object? startedBy = _undefined,
    Object? startedDate = _undefined,
    Object? submittedBy = _undefined,
    Object? submittedDate = _undefined,
    Object? workOrderId = _undefined,
    Object? workOrderDescription = _undefined,
    Object? status = _undefined,
    Object? scheduledItemStatus = _undefined,
    Object? d365Status = _undefined,
    Object? d365Error = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes(
        scheduledItemId: scheduledItemId == _undefined
            ? _instance.scheduledItemId
            : (scheduledItemId as String?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        startedBy: startedBy == _undefined
            ? _instance.startedBy
            : (startedBy as String?),
        startedDate: startedDate == _undefined
            ? _instance.startedDate
            : (startedDate as String?),
        submittedBy: submittedBy == _undefined
            ? _instance.submittedBy
            : (submittedBy as String?),
        submittedDate: submittedDate == _undefined
            ? _instance.submittedDate
            : (submittedDate as String?),
        workOrderId: workOrderId == _undefined
            ? _instance.workOrderId
            : (workOrderId as String?),
        workOrderDescription: workOrderDescription == _undefined
            ? _instance.workOrderDescription
            : (workOrderDescription as String?),
        status: status == _undefined ? _instance.status : (status as String?),
        scheduledItemStatus: scheduledItemStatus == _undefined
            ? _instance.scheduledItemStatus
            : (scheduledItemStatus as String?),
        d365Status: d365Status == _undefined
            ? _instance.d365Status
            : (d365Status as String?),
        d365Error: d365Error == _undefined
            ? _instance.d365Error
            : (d365Error as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes<
        TRes>
    implements
        CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes<
            TRes> {
  _CopyWithStubImpl$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$nodes(
      this._res);

  TRes _res;

  call({
    String? scheduledItemId,
    String? id,
    String? startedBy,
    String? startedDate,
    String? submittedBy,
    String? submittedDate,
    String? workOrderId,
    String? workOrderDescription,
    String? status,
    String? scheduledItemStatus,
    String? d365Status,
    String? d365Error,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo {
  Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo({
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo(
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
            is Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo) ||
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

extension UtilityExtension$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo
    on Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo {
  CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo<
          Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo>
      get copyWith =>
          CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo<
    TRes> {
  factory CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo(
    Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo instance,
    TRes Function(Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo)
        then,
  ) = _CopyWithImpl$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo;

  factory CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo<
        TRes>
    implements
        CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo<
            TRes> {
  _CopyWithImpl$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo _instance;

  final TRes Function(
      Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo(
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

class _CopyWithStubImpl$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo<
        TRes>
    implements
        CopyWith$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$GetJobStatusForCLeanUp$jobFormsForDiagnostics$pageInfo(
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
