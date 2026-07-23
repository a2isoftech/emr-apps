import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetScheduledPayments {
  factory Variables$Query$GetScheduledPayments({
    Input$InvoiceFilterInput? input,
    required int pageSize,
    String? after,
  }) =>
      Variables$Query$GetScheduledPayments._({
        if (input != null) r'input': input,
        r'pageSize': pageSize,
        if (after != null) r'after': after,
      });

  Variables$Query$GetScheduledPayments._(this._$data);

  factory Variables$Query$GetScheduledPayments.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input$InvoiceFilterInput.fromJson(
              (l$input as Map<String, dynamic>));
    }
    final l$pageSize = data['pageSize'];
    result$data['pageSize'] = (l$pageSize as int);
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables$Query$GetScheduledPayments._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$InvoiceFilterInput? get input =>
      (_$data['input'] as Input$InvoiceFilterInput?);

  int get pageSize => (_$data['pageSize'] as int);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    final l$pageSize = pageSize;
    result$data['pageSize'] = l$pageSize;
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetScheduledPayments<
          Variables$Query$GetScheduledPayments>
      get copyWith => CopyWith$Variables$Query$GetScheduledPayments(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetScheduledPayments ||
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
    final l$pageSize = pageSize;
    final lOther$pageSize = other.pageSize;
    if (l$pageSize != lOther$pageSize) {
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
    final l$input = input;
    final l$pageSize = pageSize;
    final l$after = after;
    return Object.hashAll([
      _$data.containsKey('input') ? l$input : const {},
      l$pageSize,
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetScheduledPayments<TRes> {
  factory CopyWith$Variables$Query$GetScheduledPayments(
    Variables$Query$GetScheduledPayments instance,
    TRes Function(Variables$Query$GetScheduledPayments) then,
  ) = _CopyWithImpl$Variables$Query$GetScheduledPayments;

  factory CopyWith$Variables$Query$GetScheduledPayments.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetScheduledPayments;

  TRes call({
    Input$InvoiceFilterInput? input,
    int? pageSize,
    String? after,
  });
}

class _CopyWithImpl$Variables$Query$GetScheduledPayments<TRes>
    implements CopyWith$Variables$Query$GetScheduledPayments<TRes> {
  _CopyWithImpl$Variables$Query$GetScheduledPayments(
    this._instance,
    this._then,
  );

  final Variables$Query$GetScheduledPayments _instance;

  final TRes Function(Variables$Query$GetScheduledPayments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? input = _undefined,
    Object? pageSize = _undefined,
    Object? after = _undefined,
  }) =>
      _then(Variables$Query$GetScheduledPayments._({
        ..._instance._$data,
        if (input != _undefined) 'input': (input as Input$InvoiceFilterInput?),
        if (pageSize != _undefined && pageSize != null)
          'pageSize': (pageSize as int),
        if (after != _undefined) 'after': (after as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetScheduledPayments<TRes>
    implements CopyWith$Variables$Query$GetScheduledPayments<TRes> {
  _CopyWithStubImpl$Variables$Query$GetScheduledPayments(this._res);

  TRes _res;

  call({
    Input$InvoiceFilterInput? input,
    int? pageSize,
    String? after,
  }) =>
      _res;
}

class Query$GetScheduledPayments {
  Query$GetScheduledPayments({
    this.supplierStatements,
    this.$__typename = 'Query',
  });

  factory Query$GetScheduledPayments.fromJson(Map<String, dynamic> json) {
    final l$supplierStatements = json['supplierStatements'];
    final l$$__typename = json['__typename'];
    return Query$GetScheduledPayments(
      supplierStatements: l$supplierStatements == null
          ? null
          : Query$GetScheduledPayments$supplierStatements.fromJson(
              (l$supplierStatements as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetScheduledPayments$supplierStatements? supplierStatements;

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
    if (other is! Query$GetScheduledPayments ||
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

extension UtilityExtension$Query$GetScheduledPayments
    on Query$GetScheduledPayments {
  CopyWith$Query$GetScheduledPayments<Query$GetScheduledPayments>
      get copyWith => CopyWith$Query$GetScheduledPayments(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetScheduledPayments<TRes> {
  factory CopyWith$Query$GetScheduledPayments(
    Query$GetScheduledPayments instance,
    TRes Function(Query$GetScheduledPayments) then,
  ) = _CopyWithImpl$Query$GetScheduledPayments;

  factory CopyWith$Query$GetScheduledPayments.stub(TRes res) =
      _CopyWithStubImpl$Query$GetScheduledPayments;

  TRes call({
    Query$GetScheduledPayments$supplierStatements? supplierStatements,
    String? $__typename,
  });
  CopyWith$Query$GetScheduledPayments$supplierStatements<TRes>
      get supplierStatements;
}

class _CopyWithImpl$Query$GetScheduledPayments<TRes>
    implements CopyWith$Query$GetScheduledPayments<TRes> {
  _CopyWithImpl$Query$GetScheduledPayments(
    this._instance,
    this._then,
  );

  final Query$GetScheduledPayments _instance;

  final TRes Function(Query$GetScheduledPayments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? supplierStatements = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetScheduledPayments(
        supplierStatements: supplierStatements == _undefined
            ? _instance.supplierStatements
            : (supplierStatements
                as Query$GetScheduledPayments$supplierStatements?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetScheduledPayments$supplierStatements<TRes>
      get supplierStatements {
    final local$supplierStatements = _instance.supplierStatements;
    return local$supplierStatements == null
        ? CopyWith$Query$GetScheduledPayments$supplierStatements.stub(
            _then(_instance))
        : CopyWith$Query$GetScheduledPayments$supplierStatements(
            local$supplierStatements, (e) => call(supplierStatements: e));
  }
}

class _CopyWithStubImpl$Query$GetScheduledPayments<TRes>
    implements CopyWith$Query$GetScheduledPayments<TRes> {
  _CopyWithStubImpl$Query$GetScheduledPayments(this._res);

  TRes _res;

  call({
    Query$GetScheduledPayments$supplierStatements? supplierStatements,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetScheduledPayments$supplierStatements<TRes>
      get supplierStatements =>
          CopyWith$Query$GetScheduledPayments$supplierStatements.stub(_res);
}

const documentNodeQueryGetScheduledPayments = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetScheduledPayments'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'InvoiceFilterInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'pageSize')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
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
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'pageSize')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
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

class Query$GetScheduledPayments$supplierStatements {
  Query$GetScheduledPayments$supplierStatements({
    required this.totalCount,
    this.nodes,
    this.$__typename = 'SupplierStatementsConnection',
  });

  factory Query$GetScheduledPayments$supplierStatements.fromJson(
      Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetScheduledPayments$supplierStatements(
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) =>
              Query$GetScheduledPayments$supplierStatements$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final List<Query$GetScheduledPayments$supplierStatements$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetScheduledPayments$supplierStatements ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
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

extension UtilityExtension$Query$GetScheduledPayments$supplierStatements
    on Query$GetScheduledPayments$supplierStatements {
  CopyWith$Query$GetScheduledPayments$supplierStatements<
          Query$GetScheduledPayments$supplierStatements>
      get copyWith => CopyWith$Query$GetScheduledPayments$supplierStatements(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetScheduledPayments$supplierStatements<TRes> {
  factory CopyWith$Query$GetScheduledPayments$supplierStatements(
    Query$GetScheduledPayments$supplierStatements instance,
    TRes Function(Query$GetScheduledPayments$supplierStatements) then,
  ) = _CopyWithImpl$Query$GetScheduledPayments$supplierStatements;

  factory CopyWith$Query$GetScheduledPayments$supplierStatements.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetScheduledPayments$supplierStatements;

  TRes call({
    int? totalCount,
    List<Query$GetScheduledPayments$supplierStatements$nodes>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$GetScheduledPayments$supplierStatements$nodes>? Function(
              Iterable<
                  CopyWith$Query$GetScheduledPayments$supplierStatements$nodes<
                      Query$GetScheduledPayments$supplierStatements$nodes>>?)
          _fn);
}

class _CopyWithImpl$Query$GetScheduledPayments$supplierStatements<TRes>
    implements CopyWith$Query$GetScheduledPayments$supplierStatements<TRes> {
  _CopyWithImpl$Query$GetScheduledPayments$supplierStatements(
    this._instance,
    this._then,
  );

  final Query$GetScheduledPayments$supplierStatements _instance;

  final TRes Function(Query$GetScheduledPayments$supplierStatements) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetScheduledPayments$supplierStatements(
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes
                as List<Query$GetScheduledPayments$supplierStatements$nodes>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$GetScheduledPayments$supplierStatements$nodes>? Function(
                  Iterable<
                      CopyWith$Query$GetScheduledPayments$supplierStatements$nodes<
                          Query$GetScheduledPayments$supplierStatements$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) =>
              CopyWith$Query$GetScheduledPayments$supplierStatements$nodes(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$GetScheduledPayments$supplierStatements<TRes>
    implements CopyWith$Query$GetScheduledPayments$supplierStatements<TRes> {
  _CopyWithStubImpl$Query$GetScheduledPayments$supplierStatements(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$GetScheduledPayments$supplierStatements$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$GetScheduledPayments$supplierStatements$nodes {
  Query$GetScheduledPayments$supplierStatements$nodes({
    this.supplierInvoiceDueDate,
    this.amount,
    this.currency,
    this.$__typename = 'SupplierStatementSummary',
  });

  factory Query$GetScheduledPayments$supplierStatements$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$supplierInvoiceDueDate = json['supplierInvoiceDueDate'];
    final l$amount = json['amount'];
    final l$currency = json['currency'];
    final l$$__typename = json['__typename'];
    return Query$GetScheduledPayments$supplierStatements$nodes(
      supplierInvoiceDueDate: l$supplierInvoiceDueDate == null
          ? null
          : DateTime.parse((l$supplierInvoiceDueDate as String)),
      amount: (l$amount as num?)?.toDouble(),
      currency: (l$currency as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? supplierInvoiceDueDate;

  final double? amount;

  final String? currency;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$supplierInvoiceDueDate = supplierInvoiceDueDate;
    _resultData['supplierInvoiceDueDate'] =
        l$supplierInvoiceDueDate?.toIso8601String();
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$supplierInvoiceDueDate = supplierInvoiceDueDate;
    final l$amount = amount;
    final l$currency = currency;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$supplierInvoiceDueDate,
      l$amount,
      l$currency,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetScheduledPayments$supplierStatements$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$supplierInvoiceDueDate = supplierInvoiceDueDate;
    final lOther$supplierInvoiceDueDate = other.supplierInvoiceDueDate;
    if (l$supplierInvoiceDueDate != lOther$supplierInvoiceDueDate) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetScheduledPayments$supplierStatements$nodes
    on Query$GetScheduledPayments$supplierStatements$nodes {
  CopyWith$Query$GetScheduledPayments$supplierStatements$nodes<
          Query$GetScheduledPayments$supplierStatements$nodes>
      get copyWith =>
          CopyWith$Query$GetScheduledPayments$supplierStatements$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetScheduledPayments$supplierStatements$nodes<
    TRes> {
  factory CopyWith$Query$GetScheduledPayments$supplierStatements$nodes(
    Query$GetScheduledPayments$supplierStatements$nodes instance,
    TRes Function(Query$GetScheduledPayments$supplierStatements$nodes) then,
  ) = _CopyWithImpl$Query$GetScheduledPayments$supplierStatements$nodes;

  factory CopyWith$Query$GetScheduledPayments$supplierStatements$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetScheduledPayments$supplierStatements$nodes;

  TRes call({
    DateTime? supplierInvoiceDueDate,
    double? amount,
    String? currency,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetScheduledPayments$supplierStatements$nodes<TRes>
    implements
        CopyWith$Query$GetScheduledPayments$supplierStatements$nodes<TRes> {
  _CopyWithImpl$Query$GetScheduledPayments$supplierStatements$nodes(
    this._instance,
    this._then,
  );

  final Query$GetScheduledPayments$supplierStatements$nodes _instance;

  final TRes Function(Query$GetScheduledPayments$supplierStatements$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? supplierInvoiceDueDate = _undefined,
    Object? amount = _undefined,
    Object? currency = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetScheduledPayments$supplierStatements$nodes(
        supplierInvoiceDueDate: supplierInvoiceDueDate == _undefined
            ? _instance.supplierInvoiceDueDate
            : (supplierInvoiceDueDate as DateTime?),
        amount: amount == _undefined ? _instance.amount : (amount as double?),
        currency:
            currency == _undefined ? _instance.currency : (currency as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetScheduledPayments$supplierStatements$nodes<
        TRes>
    implements
        CopyWith$Query$GetScheduledPayments$supplierStatements$nodes<TRes> {
  _CopyWithStubImpl$Query$GetScheduledPayments$supplierStatements$nodes(
      this._res);

  TRes _res;

  call({
    DateTime? supplierInvoiceDueDate,
    double? amount,
    String? currency,
    String? $__typename,
  }) =>
      _res;
}
