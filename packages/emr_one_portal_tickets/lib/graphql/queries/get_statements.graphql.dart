import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetStatements {
  factory Variables$Query$GetStatements({
    Input$SupplierStatementSummaryFilterInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
    Enum$StatementStatusInput? statementStatus,
    String? searchText,
    List<Input$SupplierStatementSummarySortInput>? order,
  }) =>
      Variables$Query$GetStatements._({
        if (input != null) r'input': input,
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (statementStatus != null) r'statementStatus': statementStatus,
        if (searchText != null) r'searchText': searchText,
        if (order != null) r'order': order,
      });

  Variables$Query$GetStatements._(this._$data);

  factory Variables$Query$GetStatements.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input$SupplierStatementSummaryFilterInput.fromJson(
              (l$input as Map<String, dynamic>));
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('statementStatus')) {
      final l$statementStatus = data['statementStatus'];
      result$data['statementStatus'] = l$statementStatus == null
          ? null
          : fromJson$Enum$StatementStatusInput((l$statementStatus as String));
    }
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = (l$searchText as String?);
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map((e) => Input$SupplierStatementSummarySortInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetStatements._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SupplierStatementSummaryFilterInput? get input =>
      (_$data['input'] as Input$SupplierStatementSummaryFilterInput?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  Enum$StatementStatusInput? get statementStatus =>
      (_$data['statementStatus'] as Enum$StatementStatusInput?);

  String? get searchText => (_$data['searchText'] as String?);

  List<Input$SupplierStatementSummarySortInput>? get order =>
      (_$data['order'] as List<Input$SupplierStatementSummarySortInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('statementStatus')) {
      final l$statementStatus = statementStatus;
      result$data['statementStatus'] = l$statementStatus == null
          ? null
          : toJson$Enum$StatementStatusInput(l$statementStatus);
    }
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText;
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetStatements<Variables$Query$GetStatements>
      get copyWith => CopyWith$Variables$Query$GetStatements(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetStatements ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
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
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
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
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != null && lOther$order != null) {
      if (l$order.length != lOther$order.length) {
        return false;
      }
      for (int i = 0; i < l$order.length; i++) {
        final l$order$entry = l$order[i];
        final lOther$order$entry = lOther$order[i];
        if (l$order$entry != lOther$order$entry) {
          return false;
        }
      }
    } else if (l$order != lOther$order) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    final l$first = first;
    final l$last = last;
    final l$before = before;
    final l$after = after;
    final l$statementStatus = statementStatus;
    final l$searchText = searchText;
    final l$order = order;
    return Object.hashAll([
      _$data.containsKey('input') ? l$input : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('statementStatus') ? l$statementStatus : const {},
      _$data.containsKey('searchText') ? l$searchText : const {},
      _$data.containsKey('order')
          ? l$order == null
              ? null
              : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetStatements<TRes> {
  factory CopyWith$Variables$Query$GetStatements(
    Variables$Query$GetStatements instance,
    TRes Function(Variables$Query$GetStatements) then,
  ) = _CopyWithImpl$Variables$Query$GetStatements;

  factory CopyWith$Variables$Query$GetStatements.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetStatements;

  TRes call({
    Input$SupplierStatementSummaryFilterInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
    Enum$StatementStatusInput? statementStatus,
    String? searchText,
    List<Input$SupplierStatementSummarySortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$GetStatements<TRes>
    implements CopyWith$Variables$Query$GetStatements<TRes> {
  _CopyWithImpl$Variables$Query$GetStatements(
    this._instance,
    this._then,
  );

  final Variables$Query$GetStatements _instance;

  final TRes Function(Variables$Query$GetStatements) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? statementStatus = _undefined,
    Object? searchText = _undefined,
    Object? order = _undefined,
  }) =>
      _then(Variables$Query$GetStatements._({
        ..._instance._$data,
        if (input != _undefined)
          'input': (input as Input$SupplierStatementSummaryFilterInput?),
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as String?),
        if (after != _undefined) 'after': (after as String?),
        if (statementStatus != _undefined)
          'statementStatus': (statementStatus as Enum$StatementStatusInput?),
        if (searchText != _undefined) 'searchText': (searchText as String?),
        if (order != _undefined)
          'order': (order as List<Input$SupplierStatementSummarySortInput>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetStatements<TRes>
    implements CopyWith$Variables$Query$GetStatements<TRes> {
  _CopyWithStubImpl$Variables$Query$GetStatements(this._res);

  TRes _res;

  call({
    Input$SupplierStatementSummaryFilterInput? input,
    int? first,
    int? last,
    String? before,
    String? after,
    Enum$StatementStatusInput? statementStatus,
    String? searchText,
    List<Input$SupplierStatementSummarySortInput>? order,
  }) =>
      _res;
}

class Query$GetStatements {
  Query$GetStatements({
    this.supplierStatements,
    this.$__typename = 'Query',
  });

  factory Query$GetStatements.fromJson(Map<String, dynamic> json) {
    final l$supplierStatements = json['supplierStatements'];
    final l$$__typename = json['__typename'];
    return Query$GetStatements(
      supplierStatements: l$supplierStatements == null
          ? null
          : Query$GetStatements$supplierStatements.fromJson(
              (l$supplierStatements as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetStatements$supplierStatements? supplierStatements;

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
    if (other is! Query$GetStatements || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetStatements on Query$GetStatements {
  CopyWith$Query$GetStatements<Query$GetStatements> get copyWith =>
      CopyWith$Query$GetStatements(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetStatements<TRes> {
  factory CopyWith$Query$GetStatements(
    Query$GetStatements instance,
    TRes Function(Query$GetStatements) then,
  ) = _CopyWithImpl$Query$GetStatements;

  factory CopyWith$Query$GetStatements.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStatements;

  TRes call({
    Query$GetStatements$supplierStatements? supplierStatements,
    String? $__typename,
  });
  CopyWith$Query$GetStatements$supplierStatements<TRes> get supplierStatements;
}

class _CopyWithImpl$Query$GetStatements<TRes>
    implements CopyWith$Query$GetStatements<TRes> {
  _CopyWithImpl$Query$GetStatements(
    this._instance,
    this._then,
  );

  final Query$GetStatements _instance;

  final TRes Function(Query$GetStatements) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? supplierStatements = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetStatements(
        supplierStatements: supplierStatements == _undefined
            ? _instance.supplierStatements
            : (supplierStatements as Query$GetStatements$supplierStatements?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetStatements$supplierStatements<TRes> get supplierStatements {
    final local$supplierStatements = _instance.supplierStatements;
    return local$supplierStatements == null
        ? CopyWith$Query$GetStatements$supplierStatements.stub(_then(_instance))
        : CopyWith$Query$GetStatements$supplierStatements(
            local$supplierStatements, (e) => call(supplierStatements: e));
  }
}

class _CopyWithStubImpl$Query$GetStatements<TRes>
    implements CopyWith$Query$GetStatements<TRes> {
  _CopyWithStubImpl$Query$GetStatements(this._res);

  TRes _res;

  call({
    Query$GetStatements$supplierStatements? supplierStatements,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetStatements$supplierStatements<TRes>
      get supplierStatements =>
          CopyWith$Query$GetStatements$supplierStatements.stub(_res);
}

const documentNodeQueryGetStatements = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetStatements'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'SupplierStatementSummaryFilterInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
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
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
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
        variable: VariableNode(name: NameNode(value: 'searchText')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'order')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'SupplierStatementSummarySortInput'),
            isNonNull: true,
          ),
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
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
          ArgumentNode(
            name: NameNode(value: 'statementStatus'),
            value: VariableNode(name: NameNode(value: 'statementStatus')),
          ),
          ArgumentNode(
            name: NameNode(value: 'searchText'),
            value: VariableNode(name: NameNode(value: 'searchText')),
          ),
          ArgumentNode(
            name: NameNode(value: 'order'),
            value: VariableNode(name: NameNode(value: 'order')),
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
            name: NameNode(value: 'totalCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
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
                name: NameNode(value: 'supplierInvoiceDueDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'supplierInvoiceDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'invoiceNo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'amount'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'currency'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'purchaseOrderNumber'),
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
                name: NameNode(value: 'invoiceFile'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'supplierAccountNo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'paidDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'companyName'),
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

class Query$GetStatements$supplierStatements {
  Query$GetStatements$supplierStatements({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'SupplierStatementsConnection',
  });

  factory Query$GetStatements$supplierStatements.fromJson(
      Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetStatements$supplierStatements(
      totalCount: (l$totalCount as int),
      pageInfo: Query$GetStatements$supplierStatements$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => Query$GetStatements$supplierStatements$nodes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$GetStatements$supplierStatements$pageInfo pageInfo;

  final List<Query$GetStatements$supplierStatements$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
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
    final l$totalCount = totalCount;
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
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
    if (other is! Query$GetStatements$supplierStatements ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
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

extension UtilityExtension$Query$GetStatements$supplierStatements
    on Query$GetStatements$supplierStatements {
  CopyWith$Query$GetStatements$supplierStatements<
          Query$GetStatements$supplierStatements>
      get copyWith => CopyWith$Query$GetStatements$supplierStatements(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStatements$supplierStatements<TRes> {
  factory CopyWith$Query$GetStatements$supplierStatements(
    Query$GetStatements$supplierStatements instance,
    TRes Function(Query$GetStatements$supplierStatements) then,
  ) = _CopyWithImpl$Query$GetStatements$supplierStatements;

  factory CopyWith$Query$GetStatements$supplierStatements.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStatements$supplierStatements;

  TRes call({
    int? totalCount,
    Query$GetStatements$supplierStatements$pageInfo? pageInfo,
    List<Query$GetStatements$supplierStatements$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$GetStatements$supplierStatements$pageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Query$GetStatements$supplierStatements$nodes>? Function(
              Iterable<
                  CopyWith$Query$GetStatements$supplierStatements$nodes<
                      Query$GetStatements$supplierStatements$nodes>>?)
          _fn);
}

class _CopyWithImpl$Query$GetStatements$supplierStatements<TRes>
    implements CopyWith$Query$GetStatements$supplierStatements<TRes> {
  _CopyWithImpl$Query$GetStatements$supplierStatements(
    this._instance,
    this._then,
  );

  final Query$GetStatements$supplierStatements _instance;

  final TRes Function(Query$GetStatements$supplierStatements) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetStatements$supplierStatements(
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$GetStatements$supplierStatements$pageInfo),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$GetStatements$supplierStatements$nodes>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetStatements$supplierStatements$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetStatements$supplierStatements$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$GetStatements$supplierStatements$nodes>? Function(
                  Iterable<
                      CopyWith$Query$GetStatements$supplierStatements$nodes<
                          Query$GetStatements$supplierStatements$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map(
              (e) => CopyWith$Query$GetStatements$supplierStatements$nodes(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$GetStatements$supplierStatements<TRes>
    implements CopyWith$Query$GetStatements$supplierStatements<TRes> {
  _CopyWithStubImpl$Query$GetStatements$supplierStatements(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$GetStatements$supplierStatements$pageInfo? pageInfo,
    List<Query$GetStatements$supplierStatements$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetStatements$supplierStatements$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetStatements$supplierStatements$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$GetStatements$supplierStatements$pageInfo {
  Query$GetStatements$supplierStatements$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetStatements$supplierStatements$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetStatements$supplierStatements$pageInfo(
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
    if (other is! Query$GetStatements$supplierStatements$pageInfo ||
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

extension UtilityExtension$Query$GetStatements$supplierStatements$pageInfo
    on Query$GetStatements$supplierStatements$pageInfo {
  CopyWith$Query$GetStatements$supplierStatements$pageInfo<
          Query$GetStatements$supplierStatements$pageInfo>
      get copyWith => CopyWith$Query$GetStatements$supplierStatements$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStatements$supplierStatements$pageInfo<TRes> {
  factory CopyWith$Query$GetStatements$supplierStatements$pageInfo(
    Query$GetStatements$supplierStatements$pageInfo instance,
    TRes Function(Query$GetStatements$supplierStatements$pageInfo) then,
  ) = _CopyWithImpl$Query$GetStatements$supplierStatements$pageInfo;

  factory CopyWith$Query$GetStatements$supplierStatements$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetStatements$supplierStatements$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetStatements$supplierStatements$pageInfo<TRes>
    implements CopyWith$Query$GetStatements$supplierStatements$pageInfo<TRes> {
  _CopyWithImpl$Query$GetStatements$supplierStatements$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetStatements$supplierStatements$pageInfo _instance;

  final TRes Function(Query$GetStatements$supplierStatements$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetStatements$supplierStatements$pageInfo(
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

class _CopyWithStubImpl$Query$GetStatements$supplierStatements$pageInfo<TRes>
    implements CopyWith$Query$GetStatements$supplierStatements$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetStatements$supplierStatements$pageInfo(this._res);

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

class Query$GetStatements$supplierStatements$nodes {
  Query$GetStatements$supplierStatements$nodes({
    this.supplierInvoiceDueDate,
    this.supplierInvoiceDate,
    this.invoiceNo,
    this.amount,
    this.currency,
    this.purchaseOrderNumber,
    required this.status,
    this.invoiceFile,
    this.supplierAccountNo,
    this.paidDate,
    this.companyName,
    this.$__typename = 'SupplierStatementSummary',
  });

  factory Query$GetStatements$supplierStatements$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$supplierInvoiceDueDate = json['supplierInvoiceDueDate'];
    final l$supplierInvoiceDate = json['supplierInvoiceDate'];
    final l$invoiceNo = json['invoiceNo'];
    final l$amount = json['amount'];
    final l$currency = json['currency'];
    final l$purchaseOrderNumber = json['purchaseOrderNumber'];
    final l$status = json['status'];
    final l$invoiceFile = json['invoiceFile'];
    final l$supplierAccountNo = json['supplierAccountNo'];
    final l$paidDate = json['paidDate'];
    final l$companyName = json['companyName'];
    final l$$__typename = json['__typename'];
    return Query$GetStatements$supplierStatements$nodes(
      supplierInvoiceDueDate: l$supplierInvoiceDueDate == null
          ? null
          : DateTime.parse((l$supplierInvoiceDueDate as String)),
      supplierInvoiceDate: l$supplierInvoiceDate == null
          ? null
          : DateTime.parse((l$supplierInvoiceDate as String)),
      invoiceNo: (l$invoiceNo as String?),
      amount: (l$amount as num?)?.toDouble(),
      currency: (l$currency as String?),
      purchaseOrderNumber: (l$purchaseOrderNumber as String?),
      status: fromJson$Enum$InvoiceStatus((l$status as String)),
      invoiceFile: (l$invoiceFile as String?),
      supplierAccountNo: (l$supplierAccountNo as String?),
      paidDate:
          l$paidDate == null ? null : DateTime.parse((l$paidDate as String)),
      companyName: (l$companyName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? supplierInvoiceDueDate;

  final DateTime? supplierInvoiceDate;

  final String? invoiceNo;

  final double? amount;

  final String? currency;

  final String? purchaseOrderNumber;

  final Enum$InvoiceStatus status;

  final String? invoiceFile;

  final String? supplierAccountNo;

  final DateTime? paidDate;

  final String? companyName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$supplierInvoiceDueDate = supplierInvoiceDueDate;
    _resultData['supplierInvoiceDueDate'] =
        l$supplierInvoiceDueDate?.toIso8601String();
    final l$supplierInvoiceDate = supplierInvoiceDate;
    _resultData['supplierInvoiceDate'] =
        l$supplierInvoiceDate?.toIso8601String();
    final l$invoiceNo = invoiceNo;
    _resultData['invoiceNo'] = l$invoiceNo;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$purchaseOrderNumber = purchaseOrderNumber;
    _resultData['purchaseOrderNumber'] = l$purchaseOrderNumber;
    final l$status = status;
    _resultData['status'] = toJson$Enum$InvoiceStatus(l$status);
    final l$invoiceFile = invoiceFile;
    _resultData['invoiceFile'] = l$invoiceFile;
    final l$supplierAccountNo = supplierAccountNo;
    _resultData['supplierAccountNo'] = l$supplierAccountNo;
    final l$paidDate = paidDate;
    _resultData['paidDate'] = l$paidDate?.toIso8601String();
    final l$companyName = companyName;
    _resultData['companyName'] = l$companyName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$supplierInvoiceDueDate = supplierInvoiceDueDate;
    final l$supplierInvoiceDate = supplierInvoiceDate;
    final l$invoiceNo = invoiceNo;
    final l$amount = amount;
    final l$currency = currency;
    final l$purchaseOrderNumber = purchaseOrderNumber;
    final l$status = status;
    final l$invoiceFile = invoiceFile;
    final l$supplierAccountNo = supplierAccountNo;
    final l$paidDate = paidDate;
    final l$companyName = companyName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$supplierInvoiceDueDate,
      l$supplierInvoiceDate,
      l$invoiceNo,
      l$amount,
      l$currency,
      l$purchaseOrderNumber,
      l$status,
      l$invoiceFile,
      l$supplierAccountNo,
      l$paidDate,
      l$companyName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStatements$supplierStatements$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$supplierInvoiceDueDate = supplierInvoiceDueDate;
    final lOther$supplierInvoiceDueDate = other.supplierInvoiceDueDate;
    if (l$supplierInvoiceDueDate != lOther$supplierInvoiceDueDate) {
      return false;
    }
    final l$supplierInvoiceDate = supplierInvoiceDate;
    final lOther$supplierInvoiceDate = other.supplierInvoiceDate;
    if (l$supplierInvoiceDate != lOther$supplierInvoiceDate) {
      return false;
    }
    final l$invoiceNo = invoiceNo;
    final lOther$invoiceNo = other.invoiceNo;
    if (l$invoiceNo != lOther$invoiceNo) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$purchaseOrderNumber = purchaseOrderNumber;
    final lOther$purchaseOrderNumber = other.purchaseOrderNumber;
    if (l$purchaseOrderNumber != lOther$purchaseOrderNumber) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$invoiceFile = invoiceFile;
    final lOther$invoiceFile = other.invoiceFile;
    if (l$invoiceFile != lOther$invoiceFile) {
      return false;
    }
    final l$supplierAccountNo = supplierAccountNo;
    final lOther$supplierAccountNo = other.supplierAccountNo;
    if (l$supplierAccountNo != lOther$supplierAccountNo) {
      return false;
    }
    final l$paidDate = paidDate;
    final lOther$paidDate = other.paidDate;
    if (l$paidDate != lOther$paidDate) {
      return false;
    }
    final l$companyName = companyName;
    final lOther$companyName = other.companyName;
    if (l$companyName != lOther$companyName) {
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

extension UtilityExtension$Query$GetStatements$supplierStatements$nodes
    on Query$GetStatements$supplierStatements$nodes {
  CopyWith$Query$GetStatements$supplierStatements$nodes<
          Query$GetStatements$supplierStatements$nodes>
      get copyWith => CopyWith$Query$GetStatements$supplierStatements$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStatements$supplierStatements$nodes<TRes> {
  factory CopyWith$Query$GetStatements$supplierStatements$nodes(
    Query$GetStatements$supplierStatements$nodes instance,
    TRes Function(Query$GetStatements$supplierStatements$nodes) then,
  ) = _CopyWithImpl$Query$GetStatements$supplierStatements$nodes;

  factory CopyWith$Query$GetStatements$supplierStatements$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStatements$supplierStatements$nodes;

  TRes call({
    DateTime? supplierInvoiceDueDate,
    DateTime? supplierInvoiceDate,
    String? invoiceNo,
    double? amount,
    String? currency,
    String? purchaseOrderNumber,
    Enum$InvoiceStatus? status,
    String? invoiceFile,
    String? supplierAccountNo,
    DateTime? paidDate,
    String? companyName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetStatements$supplierStatements$nodes<TRes>
    implements CopyWith$Query$GetStatements$supplierStatements$nodes<TRes> {
  _CopyWithImpl$Query$GetStatements$supplierStatements$nodes(
    this._instance,
    this._then,
  );

  final Query$GetStatements$supplierStatements$nodes _instance;

  final TRes Function(Query$GetStatements$supplierStatements$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? supplierInvoiceDueDate = _undefined,
    Object? supplierInvoiceDate = _undefined,
    Object? invoiceNo = _undefined,
    Object? amount = _undefined,
    Object? currency = _undefined,
    Object? purchaseOrderNumber = _undefined,
    Object? status = _undefined,
    Object? invoiceFile = _undefined,
    Object? supplierAccountNo = _undefined,
    Object? paidDate = _undefined,
    Object? companyName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetStatements$supplierStatements$nodes(
        supplierInvoiceDueDate: supplierInvoiceDueDate == _undefined
            ? _instance.supplierInvoiceDueDate
            : (supplierInvoiceDueDate as DateTime?),
        supplierInvoiceDate: supplierInvoiceDate == _undefined
            ? _instance.supplierInvoiceDate
            : (supplierInvoiceDate as DateTime?),
        invoiceNo: invoiceNo == _undefined
            ? _instance.invoiceNo
            : (invoiceNo as String?),
        amount: amount == _undefined ? _instance.amount : (amount as double?),
        currency:
            currency == _undefined ? _instance.currency : (currency as String?),
        purchaseOrderNumber: purchaseOrderNumber == _undefined
            ? _instance.purchaseOrderNumber
            : (purchaseOrderNumber as String?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$InvoiceStatus),
        invoiceFile: invoiceFile == _undefined
            ? _instance.invoiceFile
            : (invoiceFile as String?),
        supplierAccountNo: supplierAccountNo == _undefined
            ? _instance.supplierAccountNo
            : (supplierAccountNo as String?),
        paidDate: paidDate == _undefined
            ? _instance.paidDate
            : (paidDate as DateTime?),
        companyName: companyName == _undefined
            ? _instance.companyName
            : (companyName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetStatements$supplierStatements$nodes<TRes>
    implements CopyWith$Query$GetStatements$supplierStatements$nodes<TRes> {
  _CopyWithStubImpl$Query$GetStatements$supplierStatements$nodes(this._res);

  TRes _res;

  call({
    DateTime? supplierInvoiceDueDate,
    DateTime? supplierInvoiceDate,
    String? invoiceNo,
    double? amount,
    String? currency,
    String? purchaseOrderNumber,
    Enum$InvoiceStatus? status,
    String? invoiceFile,
    String? supplierAccountNo,
    DateTime? paidDate,
    String? companyName,
    String? $__typename,
  }) =>
      _res;
}
