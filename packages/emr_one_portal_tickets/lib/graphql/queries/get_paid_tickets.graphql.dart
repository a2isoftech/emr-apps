import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetpaidTickets {
  factory Variables$Query$GetpaidTickets({
    required DateTime cutOffDate,
    required int pageSize,
    String? after,
    List<Input$PaidTicketSummarySortInput>? order,
    String? searchText,
  }) =>
      Variables$Query$GetpaidTickets._({
        r'cutOffDate': cutOffDate,
        r'pageSize': pageSize,
        if (after != null) r'after': after,
        if (order != null) r'order': order,
        if (searchText != null) r'searchText': searchText,
      });

  Variables$Query$GetpaidTickets._(this._$data);

  factory Variables$Query$GetpaidTickets.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$cutOffDate = data['cutOffDate'];
    result$data['cutOffDate'] = DateTime.parse((l$cutOffDate as String));
    final l$pageSize = data['pageSize'];
    result$data['pageSize'] = (l$pageSize as int);
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map((e) => Input$PaidTicketSummarySortInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('searchText')) {
      final l$searchText = data['searchText'];
      result$data['searchText'] = (l$searchText as String?);
    }
    return Variables$Query$GetpaidTickets._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime get cutOffDate => (_$data['cutOffDate'] as DateTime);

  int get pageSize => (_$data['pageSize'] as int);

  String? get after => (_$data['after'] as String?);

  List<Input$PaidTicketSummarySortInput>? get order =>
      (_$data['order'] as List<Input$PaidTicketSummarySortInput>?);

  String? get searchText => (_$data['searchText'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$cutOffDate = cutOffDate;
    result$data['cutOffDate'] = l$cutOffDate.toIso8601String();
    final l$pageSize = pageSize;
    result$data['pageSize'] = l$pageSize;
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('searchText')) {
      final l$searchText = searchText;
      result$data['searchText'] = l$searchText;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetpaidTickets<Variables$Query$GetpaidTickets>
      get copyWith => CopyWith$Variables$Query$GetpaidTickets(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetpaidTickets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cutOffDate = cutOffDate;
    final lOther$cutOffDate = other.cutOffDate;
    if (l$cutOffDate != lOther$cutOffDate) {
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
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (_$data.containsKey('searchText') !=
        other._$data.containsKey('searchText')) {
      return false;
    }
    if (l$searchText != lOther$searchText) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cutOffDate = cutOffDate;
    final l$pageSize = pageSize;
    final l$after = after;
    final l$order = order;
    final l$searchText = searchText;
    return Object.hashAll([
      l$cutOffDate,
      l$pageSize,
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('order')
          ? l$order == null
              ? null
              : Object.hashAll(l$order.map((v) => v))
          : const {},
      _$data.containsKey('searchText') ? l$searchText : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetpaidTickets<TRes> {
  factory CopyWith$Variables$Query$GetpaidTickets(
    Variables$Query$GetpaidTickets instance,
    TRes Function(Variables$Query$GetpaidTickets) then,
  ) = _CopyWithImpl$Variables$Query$GetpaidTickets;

  factory CopyWith$Variables$Query$GetpaidTickets.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetpaidTickets;

  TRes call({
    DateTime? cutOffDate,
    int? pageSize,
    String? after,
    List<Input$PaidTicketSummarySortInput>? order,
    String? searchText,
  });
}

class _CopyWithImpl$Variables$Query$GetpaidTickets<TRes>
    implements CopyWith$Variables$Query$GetpaidTickets<TRes> {
  _CopyWithImpl$Variables$Query$GetpaidTickets(
    this._instance,
    this._then,
  );

  final Variables$Query$GetpaidTickets _instance;

  final TRes Function(Variables$Query$GetpaidTickets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cutOffDate = _undefined,
    Object? pageSize = _undefined,
    Object? after = _undefined,
    Object? order = _undefined,
    Object? searchText = _undefined,
  }) =>
      _then(Variables$Query$GetpaidTickets._({
        ..._instance._$data,
        if (cutOffDate != _undefined && cutOffDate != null)
          'cutOffDate': (cutOffDate as DateTime),
        if (pageSize != _undefined && pageSize != null)
          'pageSize': (pageSize as int),
        if (after != _undefined) 'after': (after as String?),
        if (order != _undefined)
          'order': (order as List<Input$PaidTicketSummarySortInput>?),
        if (searchText != _undefined) 'searchText': (searchText as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetpaidTickets<TRes>
    implements CopyWith$Variables$Query$GetpaidTickets<TRes> {
  _CopyWithStubImpl$Variables$Query$GetpaidTickets(this._res);

  TRes _res;

  call({
    DateTime? cutOffDate,
    int? pageSize,
    String? after,
    List<Input$PaidTicketSummarySortInput>? order,
    String? searchText,
  }) =>
      _res;
}

class Query$GetpaidTickets {
  Query$GetpaidTickets({
    this.tickets,
    this.$__typename = 'Query',
  });

  factory Query$GetpaidTickets.fromJson(Map<String, dynamic> json) {
    final l$tickets = json['tickets'];
    final l$$__typename = json['__typename'];
    return Query$GetpaidTickets(
      tickets: l$tickets == null
          ? null
          : Query$GetpaidTickets$tickets.fromJson(
              (l$tickets as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetpaidTickets$tickets? tickets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tickets = tickets;
    _resultData['tickets'] = l$tickets?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tickets = tickets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$tickets,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetpaidTickets || runtimeType != other.runtimeType) {
      return false;
    }
    final l$tickets = tickets;
    final lOther$tickets = other.tickets;
    if (l$tickets != lOther$tickets) {
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

extension UtilityExtension$Query$GetpaidTickets on Query$GetpaidTickets {
  CopyWith$Query$GetpaidTickets<Query$GetpaidTickets> get copyWith =>
      CopyWith$Query$GetpaidTickets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetpaidTickets<TRes> {
  factory CopyWith$Query$GetpaidTickets(
    Query$GetpaidTickets instance,
    TRes Function(Query$GetpaidTickets) then,
  ) = _CopyWithImpl$Query$GetpaidTickets;

  factory CopyWith$Query$GetpaidTickets.stub(TRes res) =
      _CopyWithStubImpl$Query$GetpaidTickets;

  TRes call({
    Query$GetpaidTickets$tickets? tickets,
    String? $__typename,
  });
  CopyWith$Query$GetpaidTickets$tickets<TRes> get tickets;
}

class _CopyWithImpl$Query$GetpaidTickets<TRes>
    implements CopyWith$Query$GetpaidTickets<TRes> {
  _CopyWithImpl$Query$GetpaidTickets(
    this._instance,
    this._then,
  );

  final Query$GetpaidTickets _instance;

  final TRes Function(Query$GetpaidTickets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? tickets = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetpaidTickets(
        tickets: tickets == _undefined
            ? _instance.tickets
            : (tickets as Query$GetpaidTickets$tickets?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetpaidTickets$tickets<TRes> get tickets {
    final local$tickets = _instance.tickets;
    return local$tickets == null
        ? CopyWith$Query$GetpaidTickets$tickets.stub(_then(_instance))
        : CopyWith$Query$GetpaidTickets$tickets(
            local$tickets, (e) => call(tickets: e));
  }
}

class _CopyWithStubImpl$Query$GetpaidTickets<TRes>
    implements CopyWith$Query$GetpaidTickets<TRes> {
  _CopyWithStubImpl$Query$GetpaidTickets(this._res);

  TRes _res;

  call({
    Query$GetpaidTickets$tickets? tickets,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetpaidTickets$tickets<TRes> get tickets =>
      CopyWith$Query$GetpaidTickets$tickets.stub(_res);
}

const documentNodeQueryGetpaidTickets = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetpaidTickets'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'cutOffDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'DateTime'),
          isNonNull: true,
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'order')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PaidTicketSummarySortInput'),
            isNonNull: true,
          ),
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
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'tickets'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'pageSize')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
          ArgumentNode(
            name: NameNode(value: 'order'),
            value: VariableNode(name: NameNode(value: 'order')),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'and'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'trade2TicketStatus'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'in'),
                          value: ListValueNode(values: [
                            StringValueNode(
                              value: 'IP',
                              isBlock: false,
                            ),
                            StringValueNode(
                              value: 'DP',
                              isBlock: false,
                            ),
                            StringValueNode(
                              value: 'PC',
                              isBlock: false,
                            ),
                          ]),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'ticketDate'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: 'gte'),
                          value:
                              VariableNode(name: NameNode(value: 'cutOffDate')),
                        )
                      ]),
                    )
                  ]),
                ]),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'searchText'),
            value: VariableNode(name: NameNode(value: 'searchText')),
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
                name: NameNode(value: 'hasPreviousPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
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
            name: NameNode(value: 'nodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: 'ticketDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'ticketNumber'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'yardName'),
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
                name: NameNode(value: 'ticketStatus'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'trade2TicketStatus'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'fileName'),
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

class Query$GetpaidTickets$tickets {
  Query$GetpaidTickets$tickets({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'TicketsConnection',
  });

  factory Query$GetpaidTickets$tickets.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetpaidTickets$tickets(
      totalCount: (l$totalCount as int),
      pageInfo: Query$GetpaidTickets$tickets$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => Query$GetpaidTickets$tickets$nodes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$GetpaidTickets$tickets$pageInfo pageInfo;

  final List<Query$GetpaidTickets$tickets$nodes>? nodes;

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
    if (other is! Query$GetpaidTickets$tickets ||
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

extension UtilityExtension$Query$GetpaidTickets$tickets
    on Query$GetpaidTickets$tickets {
  CopyWith$Query$GetpaidTickets$tickets<Query$GetpaidTickets$tickets>
      get copyWith => CopyWith$Query$GetpaidTickets$tickets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetpaidTickets$tickets<TRes> {
  factory CopyWith$Query$GetpaidTickets$tickets(
    Query$GetpaidTickets$tickets instance,
    TRes Function(Query$GetpaidTickets$tickets) then,
  ) = _CopyWithImpl$Query$GetpaidTickets$tickets;

  factory CopyWith$Query$GetpaidTickets$tickets.stub(TRes res) =
      _CopyWithStubImpl$Query$GetpaidTickets$tickets;

  TRes call({
    int? totalCount,
    Query$GetpaidTickets$tickets$pageInfo? pageInfo,
    List<Query$GetpaidTickets$tickets$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$GetpaidTickets$tickets$pageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Query$GetpaidTickets$tickets$nodes>? Function(
              Iterable<
                  CopyWith$Query$GetpaidTickets$tickets$nodes<
                      Query$GetpaidTickets$tickets$nodes>>?)
          _fn);
}

class _CopyWithImpl$Query$GetpaidTickets$tickets<TRes>
    implements CopyWith$Query$GetpaidTickets$tickets<TRes> {
  _CopyWithImpl$Query$GetpaidTickets$tickets(
    this._instance,
    this._then,
  );

  final Query$GetpaidTickets$tickets _instance;

  final TRes Function(Query$GetpaidTickets$tickets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetpaidTickets$tickets(
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$GetpaidTickets$tickets$pageInfo),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$GetpaidTickets$tickets$nodes>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetpaidTickets$tickets$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetpaidTickets$tickets$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$GetpaidTickets$tickets$nodes>? Function(
                  Iterable<
                      CopyWith$Query$GetpaidTickets$tickets$nodes<
                          Query$GetpaidTickets$tickets$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes
              ?.map((e) => CopyWith$Query$GetpaidTickets$tickets$nodes(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$GetpaidTickets$tickets<TRes>
    implements CopyWith$Query$GetpaidTickets$tickets<TRes> {
  _CopyWithStubImpl$Query$GetpaidTickets$tickets(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$GetpaidTickets$tickets$pageInfo? pageInfo,
    List<Query$GetpaidTickets$tickets$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetpaidTickets$tickets$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetpaidTickets$tickets$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$GetpaidTickets$tickets$pageInfo {
  Query$GetpaidTickets$tickets$pageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetpaidTickets$tickets$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetpaidTickets$tickets$pageInfo(
      hasPreviousPage: (l$hasPreviousPage as bool),
      hasNextPage: (l$hasNextPage as bool),
      startCursor: (l$startCursor as String?),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasPreviousPage;

  final bool hasNextPage;

  final String? startCursor;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
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
    final l$hasPreviousPage = hasPreviousPage;
    final l$hasNextPage = hasNextPage;
    final l$startCursor = startCursor;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasPreviousPage,
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
    if (other is! Query$GetpaidTickets$tickets$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) {
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

extension UtilityExtension$Query$GetpaidTickets$tickets$pageInfo
    on Query$GetpaidTickets$tickets$pageInfo {
  CopyWith$Query$GetpaidTickets$tickets$pageInfo<
          Query$GetpaidTickets$tickets$pageInfo>
      get copyWith => CopyWith$Query$GetpaidTickets$tickets$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetpaidTickets$tickets$pageInfo<TRes> {
  factory CopyWith$Query$GetpaidTickets$tickets$pageInfo(
    Query$GetpaidTickets$tickets$pageInfo instance,
    TRes Function(Query$GetpaidTickets$tickets$pageInfo) then,
  ) = _CopyWithImpl$Query$GetpaidTickets$tickets$pageInfo;

  factory CopyWith$Query$GetpaidTickets$tickets$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetpaidTickets$tickets$pageInfo;

  TRes call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetpaidTickets$tickets$pageInfo<TRes>
    implements CopyWith$Query$GetpaidTickets$tickets$pageInfo<TRes> {
  _CopyWithImpl$Query$GetpaidTickets$tickets$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetpaidTickets$tickets$pageInfo _instance;

  final TRes Function(Query$GetpaidTickets$tickets$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPreviousPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetpaidTickets$tickets$pageInfo(
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
                ? _instance.hasPreviousPage
                : (hasPreviousPage as bool),
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

class _CopyWithStubImpl$Query$GetpaidTickets$tickets$pageInfo<TRes>
    implements CopyWith$Query$GetpaidTickets$tickets$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetpaidTickets$tickets$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetpaidTickets$tickets$nodes {
  Query$GetpaidTickets$tickets$nodes({
    this.amount,
    this.currency,
    required this.ticketDate,
    required this.ticketNumber,
    this.yardName,
    this.yardCode,
    this.ticketStatus,
    this.trade2TicketStatus,
    required this.fileName,
    this.$__typename = 'PaidTicketSummary',
  });

  factory Query$GetpaidTickets$tickets$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$amount = json['amount'];
    final l$currency = json['currency'];
    final l$ticketDate = json['ticketDate'];
    final l$ticketNumber = json['ticketNumber'];
    final l$yardName = json['yardName'];
    final l$yardCode = json['yardCode'];
    final l$ticketStatus = json['ticketStatus'];
    final l$trade2TicketStatus = json['trade2TicketStatus'];
    final l$fileName = json['fileName'];
    final l$$__typename = json['__typename'];
    return Query$GetpaidTickets$tickets$nodes(
      amount: (l$amount as num?)?.toDouble(),
      currency: (l$currency as String?),
      ticketDate: DateTime.parse((l$ticketDate as String)),
      ticketNumber: (l$ticketNumber as int),
      yardName: (l$yardName as String?),
      yardCode: (l$yardCode as String?),
      ticketStatus: l$ticketStatus == null
          ? null
          : fromJson$Enum$TicketStatus((l$ticketStatus as String)),
      trade2TicketStatus: (l$trade2TicketStatus as String?),
      fileName: (l$fileName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final double? amount;

  final String? currency;

  final DateTime ticketDate;

  final int ticketNumber;

  final String? yardName;

  final String? yardCode;

  final Enum$TicketStatus? ticketStatus;

  final String? trade2TicketStatus;

  final String fileName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$ticketDate = ticketDate;
    _resultData['ticketDate'] = l$ticketDate.toIso8601String();
    final l$ticketNumber = ticketNumber;
    _resultData['ticketNumber'] = l$ticketNumber;
    final l$yardName = yardName;
    _resultData['yardName'] = l$yardName;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$ticketStatus = ticketStatus;
    _resultData['ticketStatus'] = l$ticketStatus == null
        ? null
        : toJson$Enum$TicketStatus(l$ticketStatus);
    final l$trade2TicketStatus = trade2TicketStatus;
    _resultData['trade2TicketStatus'] = l$trade2TicketStatus;
    final l$fileName = fileName;
    _resultData['fileName'] = l$fileName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$currency = currency;
    final l$ticketDate = ticketDate;
    final l$ticketNumber = ticketNumber;
    final l$yardName = yardName;
    final l$yardCode = yardCode;
    final l$ticketStatus = ticketStatus;
    final l$trade2TicketStatus = trade2TicketStatus;
    final l$fileName = fileName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$currency,
      l$ticketDate,
      l$ticketNumber,
      l$yardName,
      l$yardCode,
      l$ticketStatus,
      l$trade2TicketStatus,
      l$fileName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetpaidTickets$tickets$nodes ||
        runtimeType != other.runtimeType) {
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
    final l$ticketDate = ticketDate;
    final lOther$ticketDate = other.ticketDate;
    if (l$ticketDate != lOther$ticketDate) {
      return false;
    }
    final l$ticketNumber = ticketNumber;
    final lOther$ticketNumber = other.ticketNumber;
    if (l$ticketNumber != lOther$ticketNumber) {
      return false;
    }
    final l$yardName = yardName;
    final lOther$yardName = other.yardName;
    if (l$yardName != lOther$yardName) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$ticketStatus = ticketStatus;
    final lOther$ticketStatus = other.ticketStatus;
    if (l$ticketStatus != lOther$ticketStatus) {
      return false;
    }
    final l$trade2TicketStatus = trade2TicketStatus;
    final lOther$trade2TicketStatus = other.trade2TicketStatus;
    if (l$trade2TicketStatus != lOther$trade2TicketStatus) {
      return false;
    }
    final l$fileName = fileName;
    final lOther$fileName = other.fileName;
    if (l$fileName != lOther$fileName) {
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

extension UtilityExtension$Query$GetpaidTickets$tickets$nodes
    on Query$GetpaidTickets$tickets$nodes {
  CopyWith$Query$GetpaidTickets$tickets$nodes<
          Query$GetpaidTickets$tickets$nodes>
      get copyWith => CopyWith$Query$GetpaidTickets$tickets$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetpaidTickets$tickets$nodes<TRes> {
  factory CopyWith$Query$GetpaidTickets$tickets$nodes(
    Query$GetpaidTickets$tickets$nodes instance,
    TRes Function(Query$GetpaidTickets$tickets$nodes) then,
  ) = _CopyWithImpl$Query$GetpaidTickets$tickets$nodes;

  factory CopyWith$Query$GetpaidTickets$tickets$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetpaidTickets$tickets$nodes;

  TRes call({
    double? amount,
    String? currency,
    DateTime? ticketDate,
    int? ticketNumber,
    String? yardName,
    String? yardCode,
    Enum$TicketStatus? ticketStatus,
    String? trade2TicketStatus,
    String? fileName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetpaidTickets$tickets$nodes<TRes>
    implements CopyWith$Query$GetpaidTickets$tickets$nodes<TRes> {
  _CopyWithImpl$Query$GetpaidTickets$tickets$nodes(
    this._instance,
    this._then,
  );

  final Query$GetpaidTickets$tickets$nodes _instance;

  final TRes Function(Query$GetpaidTickets$tickets$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? currency = _undefined,
    Object? ticketDate = _undefined,
    Object? ticketNumber = _undefined,
    Object? yardName = _undefined,
    Object? yardCode = _undefined,
    Object? ticketStatus = _undefined,
    Object? trade2TicketStatus = _undefined,
    Object? fileName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetpaidTickets$tickets$nodes(
        amount: amount == _undefined ? _instance.amount : (amount as double?),
        currency:
            currency == _undefined ? _instance.currency : (currency as String?),
        ticketDate: ticketDate == _undefined || ticketDate == null
            ? _instance.ticketDate
            : (ticketDate as DateTime),
        ticketNumber: ticketNumber == _undefined || ticketNumber == null
            ? _instance.ticketNumber
            : (ticketNumber as int),
        yardName:
            yardName == _undefined ? _instance.yardName : (yardName as String?),
        yardCode:
            yardCode == _undefined ? _instance.yardCode : (yardCode as String?),
        ticketStatus: ticketStatus == _undefined
            ? _instance.ticketStatus
            : (ticketStatus as Enum$TicketStatus?),
        trade2TicketStatus: trade2TicketStatus == _undefined
            ? _instance.trade2TicketStatus
            : (trade2TicketStatus as String?),
        fileName: fileName == _undefined || fileName == null
            ? _instance.fileName
            : (fileName as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetpaidTickets$tickets$nodes<TRes>
    implements CopyWith$Query$GetpaidTickets$tickets$nodes<TRes> {
  _CopyWithStubImpl$Query$GetpaidTickets$tickets$nodes(this._res);

  TRes _res;

  call({
    double? amount,
    String? currency,
    DateTime? ticketDate,
    int? ticketNumber,
    String? yardName,
    String? yardCode,
    Enum$TicketStatus? ticketStatus,
    String? trade2TicketStatus,
    String? fileName,
    String? $__typename,
  }) =>
      _res;
}
