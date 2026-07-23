import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$getInvoiceLinkedCompanies {
  factory Variables$Query$getInvoiceLinkedCompanies({
    Enum$StatementStatusInput? statementStatus,
    String? after,
  }) =>
      Variables$Query$getInvoiceLinkedCompanies._({
        if (statementStatus != null) r'statementStatus': statementStatus,
        if (after != null) r'after': after,
      });

  Variables$Query$getInvoiceLinkedCompanies._(this._$data);

  factory Variables$Query$getInvoiceLinkedCompanies.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('statementStatus')) {
      final l$statementStatus = data['statementStatus'];
      result$data['statementStatus'] = l$statementStatus == null
          ? null
          : fromJson$Enum$StatementStatusInput((l$statementStatus as String));
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables$Query$getInvoiceLinkedCompanies._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$StatementStatusInput? get statementStatus =>
      (_$data['statementStatus'] as Enum$StatementStatusInput?);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('statementStatus')) {
      final l$statementStatus = statementStatus;
      result$data['statementStatus'] = l$statementStatus == null
          ? null
          : toJson$Enum$StatementStatusInput(l$statementStatus);
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith$Variables$Query$getInvoiceLinkedCompanies<
          Variables$Query$getInvoiceLinkedCompanies>
      get copyWith => CopyWith$Variables$Query$getInvoiceLinkedCompanies(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$getInvoiceLinkedCompanies ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$statementStatus = statementStatus;
    final lOther$statementStatus = other.statementStatus;
    if (_$data.containsKey('statementStatus') !=
        other._$data.containsKey('statementStatus')) {
      return false;
    }
    if (l$statementStatus != lOther$statementStatus) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$statementStatus = statementStatus;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('statementStatus') ? l$statementStatus : const {},
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$getInvoiceLinkedCompanies<TRes> {
  factory CopyWith$Variables$Query$getInvoiceLinkedCompanies(
    Variables$Query$getInvoiceLinkedCompanies instance,
    TRes Function(Variables$Query$getInvoiceLinkedCompanies) then,
  ) = _CopyWithImpl$Variables$Query$getInvoiceLinkedCompanies;

  factory CopyWith$Variables$Query$getInvoiceLinkedCompanies.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getInvoiceLinkedCompanies;

  TRes call({
    Enum$StatementStatusInput? statementStatus,
    String? after,
  });
}

class _CopyWithImpl$Variables$Query$getInvoiceLinkedCompanies<TRes>
    implements CopyWith$Variables$Query$getInvoiceLinkedCompanies<TRes> {
  _CopyWithImpl$Variables$Query$getInvoiceLinkedCompanies(
    this._instance,
    this._then,
  );

  final Variables$Query$getInvoiceLinkedCompanies _instance;

  final TRes Function(Variables$Query$getInvoiceLinkedCompanies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? statementStatus = _undefined,
    Object? after = _undefined,
  }) =>
      _then(Variables$Query$getInvoiceLinkedCompanies._({
        ..._instance._$data,
        if (statementStatus != _undefined)
          'statementStatus': (statementStatus as Enum$StatementStatusInput?),
        if (after != _undefined) 'after': (after as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getInvoiceLinkedCompanies<TRes>
    implements CopyWith$Variables$Query$getInvoiceLinkedCompanies<TRes> {
  _CopyWithStubImpl$Variables$Query$getInvoiceLinkedCompanies(this._res);

  TRes _res;

  call({
    Enum$StatementStatusInput? statementStatus,
    String? after,
  }) =>
      _res;
}

class Query$getInvoiceLinkedCompanies {
  Query$getInvoiceLinkedCompanies({
    this.supplierStatements,
    this.$__typename = 'Query',
  });

  factory Query$getInvoiceLinkedCompanies.fromJson(Map<String, dynamic> json) {
    final l$supplierStatements = json['supplierStatements'];
    final l$$__typename = json['__typename'];
    return Query$getInvoiceLinkedCompanies(
      supplierStatements: l$supplierStatements == null
          ? null
          : Query$getInvoiceLinkedCompanies$supplierStatements.fromJson(
              (l$supplierStatements as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getInvoiceLinkedCompanies$supplierStatements? supplierStatements;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$supplierStatements = supplierStatements;
    _resultData['supplierStatements'] = l$supplierStatements?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$supplierStatements = supplierStatements;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$supplierStatements,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getInvoiceLinkedCompanies ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$supplierStatements = supplierStatements;
    final lOther$supplierStatements = other.supplierStatements;
    if (l$supplierStatements != lOther$supplierStatements) {
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

extension UtilityExtension$Query$getInvoiceLinkedCompanies
    on Query$getInvoiceLinkedCompanies {
  CopyWith$Query$getInvoiceLinkedCompanies<Query$getInvoiceLinkedCompanies>
      get copyWith => CopyWith$Query$getInvoiceLinkedCompanies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getInvoiceLinkedCompanies<TRes> {
  factory CopyWith$Query$getInvoiceLinkedCompanies(
    Query$getInvoiceLinkedCompanies instance,
    TRes Function(Query$getInvoiceLinkedCompanies) then,
  ) = _CopyWithImpl$Query$getInvoiceLinkedCompanies;

  factory CopyWith$Query$getInvoiceLinkedCompanies.stub(TRes res) =
      _CopyWithStubImpl$Query$getInvoiceLinkedCompanies;

  TRes call({
    Query$getInvoiceLinkedCompanies$supplierStatements? supplierStatements,
    String? $__typename,
  });
  CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements<TRes>
      get supplierStatements;
}

class _CopyWithImpl$Query$getInvoiceLinkedCompanies<TRes>
    implements CopyWith$Query$getInvoiceLinkedCompanies<TRes> {
  _CopyWithImpl$Query$getInvoiceLinkedCompanies(
    this._instance,
    this._then,
  );

  final Query$getInvoiceLinkedCompanies _instance;

  final TRes Function(Query$getInvoiceLinkedCompanies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? supplierStatements = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getInvoiceLinkedCompanies(
        supplierStatements: supplierStatements == _undefined
            ? _instance.supplierStatements
            : (supplierStatements
                as Query$getInvoiceLinkedCompanies$supplierStatements?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements<TRes>
      get supplierStatements {
    final local$supplierStatements = _instance.supplierStatements;
    return local$supplierStatements == null
        ? CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements.stub(
            _then(_instance))
        : CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements(
            local$supplierStatements, (e) => call(supplierStatements: e));
  }
}

class _CopyWithStubImpl$Query$getInvoiceLinkedCompanies<TRes>
    implements CopyWith$Query$getInvoiceLinkedCompanies<TRes> {
  _CopyWithStubImpl$Query$getInvoiceLinkedCompanies(this._res);

  TRes _res;

  call({
    Query$getInvoiceLinkedCompanies$supplierStatements? supplierStatements,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements<TRes>
      get supplierStatements =>
          CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements.stub(
              _res);
}

const documentNodeQuerygetInvoiceLinkedCompanies = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getInvoiceLinkedCompanies'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'statementStatus')),
        type: NamedTypeNode(
          name: NameNode(value: 'StatementStatusInput'),
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
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'supplierStatements'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'statementStatus'),
            value: VariableNode(name: NameNode(value: 'statementStatus')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: 'hasPreviousPage'),
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
            name: NameNode(value: 'nodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'companyName'),
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

class Query$getInvoiceLinkedCompanies$supplierStatements {
  Query$getInvoiceLinkedCompanies$supplierStatements({
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SupplierStatementsConnection',
  });

  factory Query$getInvoiceLinkedCompanies$supplierStatements.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$getInvoiceLinkedCompanies$supplierStatements(
      pageInfo:
          Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) =>
              Query$getInvoiceLinkedCompanies$supplierStatements$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo pageInfo;

  final List<Query$getInvoiceLinkedCompanies$supplierStatements$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getInvoiceLinkedCompanies$supplierStatements ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getInvoiceLinkedCompanies$supplierStatements
    on Query$getInvoiceLinkedCompanies$supplierStatements {
  CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements<
          Query$getInvoiceLinkedCompanies$supplierStatements>
      get copyWith =>
          CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements<
    TRes> {
  factory CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements(
    Query$getInvoiceLinkedCompanies$supplierStatements instance,
    TRes Function(Query$getInvoiceLinkedCompanies$supplierStatements) then,
  ) = _CopyWithImpl$Query$getInvoiceLinkedCompanies$supplierStatements;

  factory CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getInvoiceLinkedCompanies$supplierStatements;

  TRes call({
    Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo? pageInfo,
    List<Query$getInvoiceLinkedCompanies$supplierStatements$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo<TRes>
      get pageInfo;
  TRes nodes(
      Iterable<Query$getInvoiceLinkedCompanies$supplierStatements$nodes>? Function(
              Iterable<
                  CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$nodes<
                      Query$getInvoiceLinkedCompanies$supplierStatements$nodes>>?)
          _fn);
}

class _CopyWithImpl$Query$getInvoiceLinkedCompanies$supplierStatements<TRes>
    implements
        CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements<TRes> {
  _CopyWithImpl$Query$getInvoiceLinkedCompanies$supplierStatements(
    this._instance,
    this._then,
  );

  final Query$getInvoiceLinkedCompanies$supplierStatements _instance;

  final TRes Function(Query$getInvoiceLinkedCompanies$supplierStatements) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getInvoiceLinkedCompanies$supplierStatements(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<
                Query$getInvoiceLinkedCompanies$supplierStatements$nodes>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$getInvoiceLinkedCompanies$supplierStatements$nodes>? Function(
                  Iterable<
                      CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$nodes<
                          Query$getInvoiceLinkedCompanies$supplierStatements$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) =>
              CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$nodes(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$getInvoiceLinkedCompanies$supplierStatements<TRes>
    implements
        CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements<TRes> {
  _CopyWithStubImpl$Query$getInvoiceLinkedCompanies$supplierStatements(
      this._res);

  TRes _res;

  call({
    Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo? pageInfo,
    List<Query$getInvoiceLinkedCompanies$supplierStatements$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo
              .stub(_res);

  nodes(_fn) => _res;
}

class Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo {
  Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      hasPreviousPage: (l$hasPreviousPage as bool),
      startCursor: (l$startCursor as String?),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final bool hasPreviousPage;

  final String? startCursor;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
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
    final l$hasPreviousPage = hasPreviousPage;
    final l$startCursor = startCursor;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$hasPreviousPage,
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
    if (other is! Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) {
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

extension UtilityExtension$Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo
    on Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo {
  CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo<
          Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo>
      get copyWith =>
          CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo<
    TRes> {
  factory CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo(
    Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo instance,
    TRes Function(Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo)
        then,
  ) = _CopyWithImpl$Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo;

  factory CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo<
        TRes>
    implements
        CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo<
            TRes> {
  _CopyWithImpl$Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo(
    this._instance,
    this._then,
  );

  final Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo _instance;

  final TRes Function(
      Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo(
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
                ? _instance.hasPreviousPage
                : (hasPreviousPage as bool),
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

class _CopyWithStubImpl$Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo<
        TRes>
    implements
        CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$getInvoiceLinkedCompanies$supplierStatements$pageInfo(
      this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}

class Query$getInvoiceLinkedCompanies$supplierStatements$nodes {
  Query$getInvoiceLinkedCompanies$supplierStatements$nodes({
    this.companyName,
    this.companyCode,
    this.$__typename = 'SupplierStatementSummary',
  });

  factory Query$getInvoiceLinkedCompanies$supplierStatements$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$companyName = json['companyName'];
    final l$companyCode = json['companyCode'];
    final l$$__typename = json['__typename'];
    return Query$getInvoiceLinkedCompanies$supplierStatements$nodes(
      companyName: (l$companyName as String?),
      companyCode: (l$companyCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? companyName;

  final String? companyCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$companyName = companyName;
    _resultData['companyName'] = l$companyName;
    final l$companyCode = companyCode;
    _resultData['companyCode'] = l$companyCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$companyName = companyName;
    final l$companyCode = companyCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$companyName,
      l$companyCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getInvoiceLinkedCompanies$supplierStatements$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$companyName = companyName;
    final lOther$companyName = other.companyName;
    if (l$companyName != lOther$companyName) {
      return false;
    }
    final l$companyCode = companyCode;
    final lOther$companyCode = other.companyCode;
    if (l$companyCode != lOther$companyCode) {
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

extension UtilityExtension$Query$getInvoiceLinkedCompanies$supplierStatements$nodes
    on Query$getInvoiceLinkedCompanies$supplierStatements$nodes {
  CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$nodes<
          Query$getInvoiceLinkedCompanies$supplierStatements$nodes>
      get copyWith =>
          CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$nodes<
    TRes> {
  factory CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$nodes(
    Query$getInvoiceLinkedCompanies$supplierStatements$nodes instance,
    TRes Function(Query$getInvoiceLinkedCompanies$supplierStatements$nodes)
        then,
  ) = _CopyWithImpl$Query$getInvoiceLinkedCompanies$supplierStatements$nodes;

  factory CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getInvoiceLinkedCompanies$supplierStatements$nodes;

  TRes call({
    String? companyName,
    String? companyCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getInvoiceLinkedCompanies$supplierStatements$nodes<
        TRes>
    implements
        CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$nodes<
            TRes> {
  _CopyWithImpl$Query$getInvoiceLinkedCompanies$supplierStatements$nodes(
    this._instance,
    this._then,
  );

  final Query$getInvoiceLinkedCompanies$supplierStatements$nodes _instance;

  final TRes Function(Query$getInvoiceLinkedCompanies$supplierStatements$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? companyName = _undefined,
    Object? companyCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getInvoiceLinkedCompanies$supplierStatements$nodes(
        companyName: companyName == _undefined
            ? _instance.companyName
            : (companyName as String?),
        companyCode: companyCode == _undefined
            ? _instance.companyCode
            : (companyCode as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getInvoiceLinkedCompanies$supplierStatements$nodes<
        TRes>
    implements
        CopyWith$Query$getInvoiceLinkedCompanies$supplierStatements$nodes<
            TRes> {
  _CopyWithStubImpl$Query$getInvoiceLinkedCompanies$supplierStatements$nodes(
      this._res);

  TRes _res;

  call({
    String? companyName,
    String? companyCode,
    String? $__typename,
  }) =>
      _res;
}
