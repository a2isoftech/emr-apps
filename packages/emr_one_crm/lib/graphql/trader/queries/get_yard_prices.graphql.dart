import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetYardPrices {
  factory Variables$Query$GetYardPrices({
    required DateTime searchDate,
    List<String>? partyAccountNos,
    required int pageSize,
    String? after,
  }) =>
      Variables$Query$GetYardPrices._({
        r'searchDate': searchDate,
        if (partyAccountNos != null) r'partyAccountNos': partyAccountNos,
        r'pageSize': pageSize,
        if (after != null) r'after': after,
      });

  Variables$Query$GetYardPrices._(this._$data);

  factory Variables$Query$GetYardPrices.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$searchDate = data['searchDate'];
    result$data['searchDate'] = DateTime.parse((l$searchDate as String));
    if (data.containsKey('partyAccountNos')) {
      final l$partyAccountNos = data['partyAccountNos'];
      result$data['partyAccountNos'] = (l$partyAccountNos as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    final l$pageSize = data['pageSize'];
    result$data['pageSize'] = (l$pageSize as int);
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables$Query$GetYardPrices._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime get searchDate => (_$data['searchDate'] as DateTime);

  List<String>? get partyAccountNos =>
      (_$data['partyAccountNos'] as List<String>?);

  int get pageSize => (_$data['pageSize'] as int);

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$searchDate = searchDate;
    result$data['searchDate'] = l$searchDate.toIso8601String();
    if (_$data.containsKey('partyAccountNos')) {
      final l$partyAccountNos = partyAccountNos;
      result$data['partyAccountNos'] =
          l$partyAccountNos?.map((e) => e).toList();
    }
    final l$pageSize = pageSize;
    result$data['pageSize'] = l$pageSize;
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetYardPrices<Variables$Query$GetYardPrices>
      get copyWith => CopyWith$Variables$Query$GetYardPrices(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetYardPrices ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchDate = searchDate;
    final lOther$searchDate = other.searchDate;
    if (l$searchDate != lOther$searchDate) {
      return false;
    }
    final l$partyAccountNos = partyAccountNos;
    final lOther$partyAccountNos = other.partyAccountNos;
    if (_$data.containsKey('partyAccountNos') !=
        other._$data.containsKey('partyAccountNos')) {
      return false;
    }
    if (l$partyAccountNos != null && lOther$partyAccountNos != null) {
      if (l$partyAccountNos.length != lOther$partyAccountNos.length) {
        return false;
      }
      for (int i = 0; i < l$partyAccountNos.length; i++) {
        final l$partyAccountNos$entry = l$partyAccountNos[i];
        final lOther$partyAccountNos$entry = lOther$partyAccountNos[i];
        if (l$partyAccountNos$entry != lOther$partyAccountNos$entry) {
          return false;
        }
      }
    } else if (l$partyAccountNos != lOther$partyAccountNos) {
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
    final l$searchDate = searchDate;
    final l$partyAccountNos = partyAccountNos;
    final l$pageSize = pageSize;
    final l$after = after;
    return Object.hashAll([
      l$searchDate,
      _$data.containsKey('partyAccountNos')
          ? l$partyAccountNos == null
              ? null
              : Object.hashAll(l$partyAccountNos.map((v) => v))
          : const {},
      l$pageSize,
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetYardPrices<TRes> {
  factory CopyWith$Variables$Query$GetYardPrices(
    Variables$Query$GetYardPrices instance,
    TRes Function(Variables$Query$GetYardPrices) then,
  ) = _CopyWithImpl$Variables$Query$GetYardPrices;

  factory CopyWith$Variables$Query$GetYardPrices.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetYardPrices;

  TRes call({
    DateTime? searchDate,
    List<String>? partyAccountNos,
    int? pageSize,
    String? after,
  });
}

class _CopyWithImpl$Variables$Query$GetYardPrices<TRes>
    implements CopyWith$Variables$Query$GetYardPrices<TRes> {
  _CopyWithImpl$Variables$Query$GetYardPrices(
    this._instance,
    this._then,
  );

  final Variables$Query$GetYardPrices _instance;

  final TRes Function(Variables$Query$GetYardPrices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchDate = _undefined,
    Object? partyAccountNos = _undefined,
    Object? pageSize = _undefined,
    Object? after = _undefined,
  }) =>
      _then(Variables$Query$GetYardPrices._({
        ..._instance._$data,
        if (searchDate != _undefined && searchDate != null)
          'searchDate': (searchDate as DateTime),
        if (partyAccountNos != _undefined)
          'partyAccountNos': (partyAccountNos as List<String>?),
        if (pageSize != _undefined && pageSize != null)
          'pageSize': (pageSize as int),
        if (after != _undefined) 'after': (after as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetYardPrices<TRes>
    implements CopyWith$Variables$Query$GetYardPrices<TRes> {
  _CopyWithStubImpl$Variables$Query$GetYardPrices(this._res);

  TRes _res;

  call({
    DateTime? searchDate,
    List<String>? partyAccountNos,
    int? pageSize,
    String? after,
  }) =>
      _res;
}

class Query$GetYardPrices {
  Query$GetYardPrices({
    this.guidePrices,
    this.$__typename = 'Query',
  });

  factory Query$GetYardPrices.fromJson(Map<String, dynamic> json) {
    final l$guidePrices = json['guidePrices'];
    final l$$__typename = json['__typename'];
    return Query$GetYardPrices(
      guidePrices: l$guidePrices == null
          ? null
          : Query$GetYardPrices$guidePrices.fromJson(
              (l$guidePrices as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetYardPrices$guidePrices? guidePrices;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$guidePrices = guidePrices;
    _resultData['guidePrices'] = l$guidePrices?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$guidePrices = guidePrices;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$guidePrices,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYardPrices || runtimeType != other.runtimeType) {
      return false;
    }
    final l$guidePrices = guidePrices;
    final lOther$guidePrices = other.guidePrices;
    if (l$guidePrices != lOther$guidePrices) {
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

extension UtilityExtension$Query$GetYardPrices on Query$GetYardPrices {
  CopyWith$Query$GetYardPrices<Query$GetYardPrices> get copyWith =>
      CopyWith$Query$GetYardPrices(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetYardPrices<TRes> {
  factory CopyWith$Query$GetYardPrices(
    Query$GetYardPrices instance,
    TRes Function(Query$GetYardPrices) then,
  ) = _CopyWithImpl$Query$GetYardPrices;

  factory CopyWith$Query$GetYardPrices.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYardPrices;

  TRes call({
    Query$GetYardPrices$guidePrices? guidePrices,
    String? $__typename,
  });
  CopyWith$Query$GetYardPrices$guidePrices<TRes> get guidePrices;
}

class _CopyWithImpl$Query$GetYardPrices<TRes>
    implements CopyWith$Query$GetYardPrices<TRes> {
  _CopyWithImpl$Query$GetYardPrices(
    this._instance,
    this._then,
  );

  final Query$GetYardPrices _instance;

  final TRes Function(Query$GetYardPrices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? guidePrices = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetYardPrices(
        guidePrices: guidePrices == _undefined
            ? _instance.guidePrices
            : (guidePrices as Query$GetYardPrices$guidePrices?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetYardPrices$guidePrices<TRes> get guidePrices {
    final local$guidePrices = _instance.guidePrices;
    return local$guidePrices == null
        ? CopyWith$Query$GetYardPrices$guidePrices.stub(_then(_instance))
        : CopyWith$Query$GetYardPrices$guidePrices(
            local$guidePrices, (e) => call(guidePrices: e));
  }
}

class _CopyWithStubImpl$Query$GetYardPrices<TRes>
    implements CopyWith$Query$GetYardPrices<TRes> {
  _CopyWithStubImpl$Query$GetYardPrices(this._res);

  TRes _res;

  call({
    Query$GetYardPrices$guidePrices? guidePrices,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetYardPrices$guidePrices<TRes> get guidePrices =>
      CopyWith$Query$GetYardPrices$guidePrices.stub(_res);
}

const documentNodeQueryGetYardPrices = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetYardPrices'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'searchDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'DateTime'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'partyAccountNos')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: true,
          ),
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
        name: NameNode(value: 'guidePrices'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'publicationIds'),
                value: ListValueNode(values: []),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'searchDate'),
                value: VariableNode(name: NameNode(value: 'searchDate')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'partyAccountNos'),
                value: VariableNode(name: NameNode(value: 'partyAccountNos')),
              ),
            ]),
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
                name: NameNode(value: 'partyAccountNo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'grade'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'gradeCode'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'gradeType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'comment'),
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
                name: NameNode(value: 'yardCode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'finalPriceMt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'customerUom'),
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

class Query$GetYardPrices$guidePrices {
  Query$GetYardPrices$guidePrices({
    required this.totalCount,
    required this.pageInfo,
    this.nodes,
    this.$__typename = 'GuidePricesConnection',
  });

  factory Query$GetYardPrices$guidePrices.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetYardPrices$guidePrices(
      totalCount: (l$totalCount as int),
      pageInfo: Query$GetYardPrices$guidePrices$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => Query$GetYardPrices$guidePrices$nodes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$GetYardPrices$guidePrices$pageInfo pageInfo;

  final List<Query$GetYardPrices$guidePrices$nodes>? nodes;

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
    if (other is! Query$GetYardPrices$guidePrices ||
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

extension UtilityExtension$Query$GetYardPrices$guidePrices
    on Query$GetYardPrices$guidePrices {
  CopyWith$Query$GetYardPrices$guidePrices<Query$GetYardPrices$guidePrices>
      get copyWith => CopyWith$Query$GetYardPrices$guidePrices(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetYardPrices$guidePrices<TRes> {
  factory CopyWith$Query$GetYardPrices$guidePrices(
    Query$GetYardPrices$guidePrices instance,
    TRes Function(Query$GetYardPrices$guidePrices) then,
  ) = _CopyWithImpl$Query$GetYardPrices$guidePrices;

  factory CopyWith$Query$GetYardPrices$guidePrices.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYardPrices$guidePrices;

  TRes call({
    int? totalCount,
    Query$GetYardPrices$guidePrices$pageInfo? pageInfo,
    List<Query$GetYardPrices$guidePrices$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$GetYardPrices$guidePrices$pageInfo<TRes> get pageInfo;
  TRes nodes(
      Iterable<Query$GetYardPrices$guidePrices$nodes>? Function(
              Iterable<
                  CopyWith$Query$GetYardPrices$guidePrices$nodes<
                      Query$GetYardPrices$guidePrices$nodes>>?)
          _fn);
}

class _CopyWithImpl$Query$GetYardPrices$guidePrices<TRes>
    implements CopyWith$Query$GetYardPrices$guidePrices<TRes> {
  _CopyWithImpl$Query$GetYardPrices$guidePrices(
    this._instance,
    this._then,
  );

  final Query$GetYardPrices$guidePrices _instance;

  final TRes Function(Query$GetYardPrices$guidePrices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetYardPrices$guidePrices(
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$GetYardPrices$guidePrices$pageInfo),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$GetYardPrices$guidePrices$nodes>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetYardPrices$guidePrices$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetYardPrices$guidePrices$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$GetYardPrices$guidePrices$nodes>? Function(
                  Iterable<
                      CopyWith$Query$GetYardPrices$guidePrices$nodes<
                          Query$GetYardPrices$guidePrices$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes
              ?.map((e) => CopyWith$Query$GetYardPrices$guidePrices$nodes(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$GetYardPrices$guidePrices<TRes>
    implements CopyWith$Query$GetYardPrices$guidePrices<TRes> {
  _CopyWithStubImpl$Query$GetYardPrices$guidePrices(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$GetYardPrices$guidePrices$pageInfo? pageInfo,
    List<Query$GetYardPrices$guidePrices$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetYardPrices$guidePrices$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetYardPrices$guidePrices$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$GetYardPrices$guidePrices$pageInfo {
  Query$GetYardPrices$guidePrices$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetYardPrices$guidePrices$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$GetYardPrices$guidePrices$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$endCursor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYardPrices$guidePrices$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
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

extension UtilityExtension$Query$GetYardPrices$guidePrices$pageInfo
    on Query$GetYardPrices$guidePrices$pageInfo {
  CopyWith$Query$GetYardPrices$guidePrices$pageInfo<
          Query$GetYardPrices$guidePrices$pageInfo>
      get copyWith => CopyWith$Query$GetYardPrices$guidePrices$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetYardPrices$guidePrices$pageInfo<TRes> {
  factory CopyWith$Query$GetYardPrices$guidePrices$pageInfo(
    Query$GetYardPrices$guidePrices$pageInfo instance,
    TRes Function(Query$GetYardPrices$guidePrices$pageInfo) then,
  ) = _CopyWithImpl$Query$GetYardPrices$guidePrices$pageInfo;

  factory CopyWith$Query$GetYardPrices$guidePrices$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYardPrices$guidePrices$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetYardPrices$guidePrices$pageInfo<TRes>
    implements CopyWith$Query$GetYardPrices$guidePrices$pageInfo<TRes> {
  _CopyWithImpl$Query$GetYardPrices$guidePrices$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetYardPrices$guidePrices$pageInfo _instance;

  final TRes Function(Query$GetYardPrices$guidePrices$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetYardPrices$guidePrices$pageInfo(
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetYardPrices$guidePrices$pageInfo<TRes>
    implements CopyWith$Query$GetYardPrices$guidePrices$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetYardPrices$guidePrices$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetYardPrices$guidePrices$nodes {
  Query$GetYardPrices$guidePrices$nodes({
    required this.partyAccountNo,
    this.grade,
    required this.yardCode,
    required this.finalPriceMt,
    this.customerUom,
    this.$__typename = 'GuidePriceListSearchResult',
  });

  factory Query$GetYardPrices$guidePrices$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$partyAccountNo = json['partyAccountNo'];
    final l$grade = json['grade'];
    final l$yardCode = json['yardCode'];
    final l$finalPriceMt = json['finalPriceMt'];
    final l$customerUom = json['customerUom'];
    final l$$__typename = json['__typename'];
    return Query$GetYardPrices$guidePrices$nodes(
      partyAccountNo: (l$partyAccountNo as String),
      grade: l$grade == null
          ? null
          : Query$GetYardPrices$guidePrices$nodes$grade.fromJson(
              (l$grade as Map<String, dynamic>)),
      yardCode: (l$yardCode as String),
      finalPriceMt: (l$finalPriceMt as num).toDouble(),
      customerUom: l$customerUom == null
          ? null
          : fromJson$Enum$Uom((l$customerUom as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String partyAccountNo;

  final Query$GetYardPrices$guidePrices$nodes$grade? grade;

  final String yardCode;

  final double finalPriceMt;

  final Enum$Uom? customerUom;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$partyAccountNo = partyAccountNo;
    _resultData['partyAccountNo'] = l$partyAccountNo;
    final l$grade = grade;
    _resultData['grade'] = l$grade?.toJson();
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$finalPriceMt = finalPriceMt;
    _resultData['finalPriceMt'] = l$finalPriceMt;
    final l$customerUom = customerUom;
    _resultData['customerUom'] =
        l$customerUom == null ? null : toJson$Enum$Uom(l$customerUom);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$partyAccountNo = partyAccountNo;
    final l$grade = grade;
    final l$yardCode = yardCode;
    final l$finalPriceMt = finalPriceMt;
    final l$customerUom = customerUom;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$partyAccountNo,
      l$grade,
      l$yardCode,
      l$finalPriceMt,
      l$customerUom,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYardPrices$guidePrices$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    final l$grade = grade;
    final lOther$grade = other.grade;
    if (l$grade != lOther$grade) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$finalPriceMt = finalPriceMt;
    final lOther$finalPriceMt = other.finalPriceMt;
    if (l$finalPriceMt != lOther$finalPriceMt) {
      return false;
    }
    final l$customerUom = customerUom;
    final lOther$customerUom = other.customerUom;
    if (l$customerUom != lOther$customerUom) {
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

extension UtilityExtension$Query$GetYardPrices$guidePrices$nodes
    on Query$GetYardPrices$guidePrices$nodes {
  CopyWith$Query$GetYardPrices$guidePrices$nodes<
          Query$GetYardPrices$guidePrices$nodes>
      get copyWith => CopyWith$Query$GetYardPrices$guidePrices$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetYardPrices$guidePrices$nodes<TRes> {
  factory CopyWith$Query$GetYardPrices$guidePrices$nodes(
    Query$GetYardPrices$guidePrices$nodes instance,
    TRes Function(Query$GetYardPrices$guidePrices$nodes) then,
  ) = _CopyWithImpl$Query$GetYardPrices$guidePrices$nodes;

  factory CopyWith$Query$GetYardPrices$guidePrices$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYardPrices$guidePrices$nodes;

  TRes call({
    String? partyAccountNo,
    Query$GetYardPrices$guidePrices$nodes$grade? grade,
    String? yardCode,
    double? finalPriceMt,
    Enum$Uom? customerUom,
    String? $__typename,
  });
  CopyWith$Query$GetYardPrices$guidePrices$nodes$grade<TRes> get grade;
}

class _CopyWithImpl$Query$GetYardPrices$guidePrices$nodes<TRes>
    implements CopyWith$Query$GetYardPrices$guidePrices$nodes<TRes> {
  _CopyWithImpl$Query$GetYardPrices$guidePrices$nodes(
    this._instance,
    this._then,
  );

  final Query$GetYardPrices$guidePrices$nodes _instance;

  final TRes Function(Query$GetYardPrices$guidePrices$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partyAccountNo = _undefined,
    Object? grade = _undefined,
    Object? yardCode = _undefined,
    Object? finalPriceMt = _undefined,
    Object? customerUom = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetYardPrices$guidePrices$nodes(
        partyAccountNo: partyAccountNo == _undefined || partyAccountNo == null
            ? _instance.partyAccountNo
            : (partyAccountNo as String),
        grade: grade == _undefined
            ? _instance.grade
            : (grade as Query$GetYardPrices$guidePrices$nodes$grade?),
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        finalPriceMt: finalPriceMt == _undefined || finalPriceMt == null
            ? _instance.finalPriceMt
            : (finalPriceMt as double),
        customerUom: customerUom == _undefined
            ? _instance.customerUom
            : (customerUom as Enum$Uom?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetYardPrices$guidePrices$nodes$grade<TRes> get grade {
    final local$grade = _instance.grade;
    return local$grade == null
        ? CopyWith$Query$GetYardPrices$guidePrices$nodes$grade.stub(
            _then(_instance))
        : CopyWith$Query$GetYardPrices$guidePrices$nodes$grade(
            local$grade, (e) => call(grade: e));
  }
}

class _CopyWithStubImpl$Query$GetYardPrices$guidePrices$nodes<TRes>
    implements CopyWith$Query$GetYardPrices$guidePrices$nodes<TRes> {
  _CopyWithStubImpl$Query$GetYardPrices$guidePrices$nodes(this._res);

  TRes _res;

  call({
    String? partyAccountNo,
    Query$GetYardPrices$guidePrices$nodes$grade? grade,
    String? yardCode,
    double? finalPriceMt,
    Enum$Uom? customerUom,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetYardPrices$guidePrices$nodes$grade<TRes> get grade =>
      CopyWith$Query$GetYardPrices$guidePrices$nodes$grade.stub(_res);
}

class Query$GetYardPrices$guidePrices$nodes$grade {
  Query$GetYardPrices$guidePrices$nodes$grade({
    required this.gradeCode,
    required this.gradeType,
    required this.comment,
    this.$__typename = 'Grade',
  });

  factory Query$GetYardPrices$guidePrices$nodes$grade.fromJson(
      Map<String, dynamic> json) {
    final l$gradeCode = json['gradeCode'];
    final l$gradeType = json['gradeType'];
    final l$comment = json['comment'];
    final l$$__typename = json['__typename'];
    return Query$GetYardPrices$guidePrices$nodes$grade(
      gradeCode: (l$gradeCode as String),
      gradeType: (l$gradeType as String),
      comment: (l$comment as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String gradeCode;

  final String gradeType;

  final String comment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$gradeCode = gradeCode;
    _resultData['gradeCode'] = l$gradeCode;
    final l$gradeType = gradeType;
    _resultData['gradeType'] = l$gradeType;
    final l$comment = comment;
    _resultData['comment'] = l$comment;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$gradeCode = gradeCode;
    final l$gradeType = gradeType;
    final l$comment = comment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$gradeCode,
      l$gradeType,
      l$comment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetYardPrices$guidePrices$nodes$grade ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gradeCode = gradeCode;
    final lOther$gradeCode = other.gradeCode;
    if (l$gradeCode != lOther$gradeCode) {
      return false;
    }
    final l$gradeType = gradeType;
    final lOther$gradeType = other.gradeType;
    if (l$gradeType != lOther$gradeType) {
      return false;
    }
    final l$comment = comment;
    final lOther$comment = other.comment;
    if (l$comment != lOther$comment) {
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

extension UtilityExtension$Query$GetYardPrices$guidePrices$nodes$grade
    on Query$GetYardPrices$guidePrices$nodes$grade {
  CopyWith$Query$GetYardPrices$guidePrices$nodes$grade<
          Query$GetYardPrices$guidePrices$nodes$grade>
      get copyWith => CopyWith$Query$GetYardPrices$guidePrices$nodes$grade(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetYardPrices$guidePrices$nodes$grade<TRes> {
  factory CopyWith$Query$GetYardPrices$guidePrices$nodes$grade(
    Query$GetYardPrices$guidePrices$nodes$grade instance,
    TRes Function(Query$GetYardPrices$guidePrices$nodes$grade) then,
  ) = _CopyWithImpl$Query$GetYardPrices$guidePrices$nodes$grade;

  factory CopyWith$Query$GetYardPrices$guidePrices$nodes$grade.stub(TRes res) =
      _CopyWithStubImpl$Query$GetYardPrices$guidePrices$nodes$grade;

  TRes call({
    String? gradeCode,
    String? gradeType,
    String? comment,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetYardPrices$guidePrices$nodes$grade<TRes>
    implements CopyWith$Query$GetYardPrices$guidePrices$nodes$grade<TRes> {
  _CopyWithImpl$Query$GetYardPrices$guidePrices$nodes$grade(
    this._instance,
    this._then,
  );

  final Query$GetYardPrices$guidePrices$nodes$grade _instance;

  final TRes Function(Query$GetYardPrices$guidePrices$nodes$grade) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? gradeCode = _undefined,
    Object? gradeType = _undefined,
    Object? comment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetYardPrices$guidePrices$nodes$grade(
        gradeCode: gradeCode == _undefined || gradeCode == null
            ? _instance.gradeCode
            : (gradeCode as String),
        gradeType: gradeType == _undefined || gradeType == null
            ? _instance.gradeType
            : (gradeType as String),
        comment: comment == _undefined || comment == null
            ? _instance.comment
            : (comment as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetYardPrices$guidePrices$nodes$grade<TRes>
    implements CopyWith$Query$GetYardPrices$guidePrices$nodes$grade<TRes> {
  _CopyWithStubImpl$Query$GetYardPrices$guidePrices$nodes$grade(this._res);

  TRes _res;

  call({
    String? gradeCode,
    String? gradeType,
    String? comment,
    String? $__typename,
  }) =>
      _res;
}
