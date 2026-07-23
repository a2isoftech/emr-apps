import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$QuotesForInspectionQuery {
  factory Variables$Query$QuotesForInspectionQuery({
    required int first,
    required String yardCode,
    required String searchText,
  }) =>
      Variables$Query$QuotesForInspectionQuery._({
        r'first': first,
        r'yardCode': yardCode,
        r'searchText': searchText,
      });

  Variables$Query$QuotesForInspectionQuery._(this._$data);

  factory Variables$Query$QuotesForInspectionQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$first = data['first'];
    result$data['first'] = (l$first as int);
    final l$yardCode = data['yardCode'];
    result$data['yardCode'] = (l$yardCode as String);
    final l$searchText = data['searchText'];
    result$data['searchText'] = (l$searchText as String);
    return Variables$Query$QuotesForInspectionQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  String get yardCode => (_$data['yardCode'] as String);

  String get searchText => (_$data['searchText'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$first = first;
    result$data['first'] = l$first;
    final l$yardCode = yardCode;
    result$data['yardCode'] = l$yardCode;
    final l$searchText = searchText;
    result$data['searchText'] = l$searchText;
    return result$data;
  }

  CopyWith$Variables$Query$QuotesForInspectionQuery<
          Variables$Query$QuotesForInspectionQuery>
      get copyWith => CopyWith$Variables$Query$QuotesForInspectionQuery(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$QuotesForInspectionQuery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (l$searchText != lOther$searchText) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$first = first;
    final l$yardCode = yardCode;
    final l$searchText = searchText;
    return Object.hashAll([
      l$first,
      l$yardCode,
      l$searchText,
    ]);
  }
}

abstract class CopyWith$Variables$Query$QuotesForInspectionQuery<TRes> {
  factory CopyWith$Variables$Query$QuotesForInspectionQuery(
    Variables$Query$QuotesForInspectionQuery instance,
    TRes Function(Variables$Query$QuotesForInspectionQuery) then,
  ) = _CopyWithImpl$Variables$Query$QuotesForInspectionQuery;

  factory CopyWith$Variables$Query$QuotesForInspectionQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$QuotesForInspectionQuery;

  TRes call({
    int? first,
    String? yardCode,
    String? searchText,
  });
}

class _CopyWithImpl$Variables$Query$QuotesForInspectionQuery<TRes>
    implements CopyWith$Variables$Query$QuotesForInspectionQuery<TRes> {
  _CopyWithImpl$Variables$Query$QuotesForInspectionQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$QuotesForInspectionQuery _instance;

  final TRes Function(Variables$Query$QuotesForInspectionQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? yardCode = _undefined,
    Object? searchText = _undefined,
  }) =>
      _then(Variables$Query$QuotesForInspectionQuery._({
        ..._instance._$data,
        if (first != _undefined && first != null) 'first': (first as int),
        if (yardCode != _undefined && yardCode != null)
          'yardCode': (yardCode as String),
        if (searchText != _undefined && searchText != null)
          'searchText': (searchText as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$QuotesForInspectionQuery<TRes>
    implements CopyWith$Variables$Query$QuotesForInspectionQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$QuotesForInspectionQuery(this._res);

  TRes _res;

  call({
    int? first,
    String? yardCode,
    String? searchText,
  }) =>
      _res;
}

class Query$QuotesForInspectionQuery {
  Query$QuotesForInspectionQuery({
    this.quotesForInspection,
    this.$__typename = 'Query',
  });

  factory Query$QuotesForInspectionQuery.fromJson(Map<String, dynamic> json) {
    final l$quotesForInspection = json['quotesForInspection'];
    final l$$__typename = json['__typename'];
    return Query$QuotesForInspectionQuery(
      quotesForInspection: l$quotesForInspection == null
          ? null
          : Query$QuotesForInspectionQuery$quotesForInspection.fromJson(
              (l$quotesForInspection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$QuotesForInspectionQuery$quotesForInspection? quotesForInspection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$quotesForInspection = quotesForInspection;
    _resultData['quotesForInspection'] = l$quotesForInspection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$quotesForInspection = quotesForInspection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$quotesForInspection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$QuotesForInspectionQuery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$quotesForInspection = quotesForInspection;
    final lOther$quotesForInspection = other.quotesForInspection;
    if (l$quotesForInspection != lOther$quotesForInspection) {
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

extension UtilityExtension$Query$QuotesForInspectionQuery
    on Query$QuotesForInspectionQuery {
  CopyWith$Query$QuotesForInspectionQuery<Query$QuotesForInspectionQuery>
      get copyWith => CopyWith$Query$QuotesForInspectionQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$QuotesForInspectionQuery<TRes> {
  factory CopyWith$Query$QuotesForInspectionQuery(
    Query$QuotesForInspectionQuery instance,
    TRes Function(Query$QuotesForInspectionQuery) then,
  ) = _CopyWithImpl$Query$QuotesForInspectionQuery;

  factory CopyWith$Query$QuotesForInspectionQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$QuotesForInspectionQuery;

  TRes call({
    Query$QuotesForInspectionQuery$quotesForInspection? quotesForInspection,
    String? $__typename,
  });
  CopyWith$Query$QuotesForInspectionQuery$quotesForInspection<TRes>
      get quotesForInspection;
}

class _CopyWithImpl$Query$QuotesForInspectionQuery<TRes>
    implements CopyWith$Query$QuotesForInspectionQuery<TRes> {
  _CopyWithImpl$Query$QuotesForInspectionQuery(
    this._instance,
    this._then,
  );

  final Query$QuotesForInspectionQuery _instance;

  final TRes Function(Query$QuotesForInspectionQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? quotesForInspection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$QuotesForInspectionQuery(
        quotesForInspection: quotesForInspection == _undefined
            ? _instance.quotesForInspection
            : (quotesForInspection
                as Query$QuotesForInspectionQuery$quotesForInspection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$QuotesForInspectionQuery$quotesForInspection<TRes>
      get quotesForInspection {
    final local$quotesForInspection = _instance.quotesForInspection;
    return local$quotesForInspection == null
        ? CopyWith$Query$QuotesForInspectionQuery$quotesForInspection.stub(
            _then(_instance))
        : CopyWith$Query$QuotesForInspectionQuery$quotesForInspection(
            local$quotesForInspection, (e) => call(quotesForInspection: e));
  }
}

class _CopyWithStubImpl$Query$QuotesForInspectionQuery<TRes>
    implements CopyWith$Query$QuotesForInspectionQuery<TRes> {
  _CopyWithStubImpl$Query$QuotesForInspectionQuery(this._res);

  TRes _res;

  call({
    Query$QuotesForInspectionQuery$quotesForInspection? quotesForInspection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$QuotesForInspectionQuery$quotesForInspection<TRes>
      get quotesForInspection =>
          CopyWith$Query$QuotesForInspectionQuery$quotesForInspection.stub(
              _res);
}

const documentNodeQueryQuotesForInspectionQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'QuotesForInspectionQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
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
        variable: VariableNode(name: NameNode(value: 'searchText')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'quotesForInspection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: NullValueNode(),
          ),
          ArgumentNode(
            name: NameNode(value: 'before'),
            value: NullValueNode(),
          ),
          ArgumentNode(
            name: NameNode(value: 'last'),
            value: NullValueNode(),
          ),
          ArgumentNode(
            name: NameNode(value: 'yardCode'),
            value: VariableNode(name: NameNode(value: 'yardCode')),
          ),
          ArgumentNode(
            name: NameNode(value: 'searchText'),
            value: VariableNode(name: NameNode(value: 'searchText')),
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
                name: NameNode(value: 'batchQuoteId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'quoteStatus'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'quote'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'quoteId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'createdDate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'quoteType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'hasBattery'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'hasOriginalCat'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'alloyWheels'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'chromeWheels'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'steelWheels'),
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
                name: NameNode(value: 'vehicleDetail'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'make'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'model'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'vin'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'vehicleReg'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'year'),
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
            name: NameNode(value: 'totalCount'),
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
]);

class Query$QuotesForInspectionQuery$quotesForInspection {
  Query$QuotesForInspectionQuery$quotesForInspection({
    this.nodes,
    required this.pageInfo,
    required this.totalCount,
    this.$__typename = 'QuotesForInspectionConnection',
  });

  factory Query$QuotesForInspectionQuery$quotesForInspection.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$QuotesForInspectionQuery$quotesForInspection(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) =>
              Query$QuotesForInspectionQuery$quotesForInspection$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Query$QuotesForInspectionQuery$quotesForInspection$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      totalCount: (l$totalCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$QuotesForInspectionQuery$quotesForInspection$nodes>? nodes;

  final Query$QuotesForInspectionQuery$quotesForInspection$pageInfo pageInfo;

  final int totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$pageInfo = pageInfo;
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$pageInfo,
      l$totalCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$QuotesForInspectionQuery$quotesForInspection ||
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
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
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

extension UtilityExtension$Query$QuotesForInspectionQuery$quotesForInspection
    on Query$QuotesForInspectionQuery$quotesForInspection {
  CopyWith$Query$QuotesForInspectionQuery$quotesForInspection<
          Query$QuotesForInspectionQuery$quotesForInspection>
      get copyWith =>
          CopyWith$Query$QuotesForInspectionQuery$quotesForInspection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$QuotesForInspectionQuery$quotesForInspection<
    TRes> {
  factory CopyWith$Query$QuotesForInspectionQuery$quotesForInspection(
    Query$QuotesForInspectionQuery$quotesForInspection instance,
    TRes Function(Query$QuotesForInspectionQuery$quotesForInspection) then,
  ) = _CopyWithImpl$Query$QuotesForInspectionQuery$quotesForInspection;

  factory CopyWith$Query$QuotesForInspectionQuery$quotesForInspection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$QuotesForInspectionQuery$quotesForInspection;

  TRes call({
    List<Query$QuotesForInspectionQuery$quotesForInspection$nodes>? nodes,
    Query$QuotesForInspectionQuery$quotesForInspection$pageInfo? pageInfo,
    int? totalCount,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$QuotesForInspectionQuery$quotesForInspection$nodes>? Function(
              Iterable<
                  CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes<
                      Query$QuotesForInspectionQuery$quotesForInspection$nodes>>?)
          _fn);
  CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$QuotesForInspectionQuery$quotesForInspection<TRes>
    implements
        CopyWith$Query$QuotesForInspectionQuery$quotesForInspection<TRes> {
  _CopyWithImpl$Query$QuotesForInspectionQuery$quotesForInspection(
    this._instance,
    this._then,
  );

  final Query$QuotesForInspectionQuery$quotesForInspection _instance;

  final TRes Function(Query$QuotesForInspectionQuery$quotesForInspection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$QuotesForInspectionQuery$quotesForInspection(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<
                Query$QuotesForInspectionQuery$quotesForInspection$nodes>?),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$QuotesForInspectionQuery$quotesForInspection$pageInfo),
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$QuotesForInspectionQuery$quotesForInspection$nodes>? Function(
                  Iterable<
                      CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes<
                          Query$QuotesForInspectionQuery$quotesForInspection$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) =>
              CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$QuotesForInspectionQuery$quotesForInspection<TRes>
    implements
        CopyWith$Query$QuotesForInspectionQuery$quotesForInspection<TRes> {
  _CopyWithStubImpl$Query$QuotesForInspectionQuery$quotesForInspection(
      this._res);

  TRes _res;

  call({
    List<Query$QuotesForInspectionQuery$quotesForInspection$nodes>? nodes,
    Query$QuotesForInspectionQuery$quotesForInspection$pageInfo? pageInfo,
    int? totalCount,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;

  CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$pageInfo
              .stub(_res);
}

class Query$QuotesForInspectionQuery$quotesForInspection$nodes {
  Query$QuotesForInspectionQuery$quotesForInspection$nodes({
    this.batchQuoteId,
    required this.quoteStatus,
    this.quote,
    this.vehicleDetail,
    this.$__typename = 'QuoteForInspectionResponse',
  });

  factory Query$QuotesForInspectionQuery$quotesForInspection$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$batchQuoteId = json['batchQuoteId'];
    final l$quoteStatus = json['quoteStatus'];
    final l$quote = json['quote'];
    final l$vehicleDetail = json['vehicleDetail'];
    final l$$__typename = json['__typename'];
    return Query$QuotesForInspectionQuery$quotesForInspection$nodes(
      batchQuoteId: (l$batchQuoteId as int?),
      quoteStatus: fromJson$Enum$QuoteStatusEnum((l$quoteStatus as String)),
      quote: l$quote == null
          ? null
          : Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote
              .fromJson((l$quote as Map<String, dynamic>)),
      vehicleDetail: l$vehicleDetail == null
          ? null
          : Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail
              .fromJson((l$vehicleDetail as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? batchQuoteId;

  final Enum$QuoteStatusEnum quoteStatus;

  final Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote? quote;

  final Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail?
      vehicleDetail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$batchQuoteId = batchQuoteId;
    _resultData['batchQuoteId'] = l$batchQuoteId;
    final l$quoteStatus = quoteStatus;
    _resultData['quoteStatus'] = toJson$Enum$QuoteStatusEnum(l$quoteStatus);
    final l$quote = quote;
    _resultData['quote'] = l$quote?.toJson();
    final l$vehicleDetail = vehicleDetail;
    _resultData['vehicleDetail'] = l$vehicleDetail?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$batchQuoteId = batchQuoteId;
    final l$quoteStatus = quoteStatus;
    final l$quote = quote;
    final l$vehicleDetail = vehicleDetail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$batchQuoteId,
      l$quoteStatus,
      l$quote,
      l$vehicleDetail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$QuotesForInspectionQuery$quotesForInspection$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$batchQuoteId = batchQuoteId;
    final lOther$batchQuoteId = other.batchQuoteId;
    if (l$batchQuoteId != lOther$batchQuoteId) {
      return false;
    }
    final l$quoteStatus = quoteStatus;
    final lOther$quoteStatus = other.quoteStatus;
    if (l$quoteStatus != lOther$quoteStatus) {
      return false;
    }
    final l$quote = quote;
    final lOther$quote = other.quote;
    if (l$quote != lOther$quote) {
      return false;
    }
    final l$vehicleDetail = vehicleDetail;
    final lOther$vehicleDetail = other.vehicleDetail;
    if (l$vehicleDetail != lOther$vehicleDetail) {
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

extension UtilityExtension$Query$QuotesForInspectionQuery$quotesForInspection$nodes
    on Query$QuotesForInspectionQuery$quotesForInspection$nodes {
  CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes<
          Query$QuotesForInspectionQuery$quotesForInspection$nodes>
      get copyWith =>
          CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes<
    TRes> {
  factory CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes(
    Query$QuotesForInspectionQuery$quotesForInspection$nodes instance,
    TRes Function(Query$QuotesForInspectionQuery$quotesForInspection$nodes)
        then,
  ) = _CopyWithImpl$Query$QuotesForInspectionQuery$quotesForInspection$nodes;

  factory CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$QuotesForInspectionQuery$quotesForInspection$nodes;

  TRes call({
    int? batchQuoteId,
    Enum$QuoteStatusEnum? quoteStatus,
    Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote? quote,
    Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail?
        vehicleDetail,
    String? $__typename,
  });
  CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote<TRes>
      get quote;
  CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail<
      TRes> get vehicleDetail;
}

class _CopyWithImpl$Query$QuotesForInspectionQuery$quotesForInspection$nodes<
        TRes>
    implements
        CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes<
            TRes> {
  _CopyWithImpl$Query$QuotesForInspectionQuery$quotesForInspection$nodes(
    this._instance,
    this._then,
  );

  final Query$QuotesForInspectionQuery$quotesForInspection$nodes _instance;

  final TRes Function(Query$QuotesForInspectionQuery$quotesForInspection$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? batchQuoteId = _undefined,
    Object? quoteStatus = _undefined,
    Object? quote = _undefined,
    Object? vehicleDetail = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$QuotesForInspectionQuery$quotesForInspection$nodes(
        batchQuoteId: batchQuoteId == _undefined
            ? _instance.batchQuoteId
            : (batchQuoteId as int?),
        quoteStatus: quoteStatus == _undefined || quoteStatus == null
            ? _instance.quoteStatus
            : (quoteStatus as Enum$QuoteStatusEnum),
        quote: quote == _undefined
            ? _instance.quote
            : (quote
                as Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote?),
        vehicleDetail: vehicleDetail == _undefined
            ? _instance.vehicleDetail
            : (vehicleDetail
                as Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote<TRes>
      get quote {
    final local$quote = _instance.quote;
    return local$quote == null
        ? CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote
            .stub(_then(_instance))
        : CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote(
            local$quote, (e) => call(quote: e));
  }

  CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail<
      TRes> get vehicleDetail {
    final local$vehicleDetail = _instance.vehicleDetail;
    return local$vehicleDetail == null
        ? CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail
            .stub(_then(_instance))
        : CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail(
            local$vehicleDetail, (e) => call(vehicleDetail: e));
  }
}

class _CopyWithStubImpl$Query$QuotesForInspectionQuery$quotesForInspection$nodes<
        TRes>
    implements
        CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes<
            TRes> {
  _CopyWithStubImpl$Query$QuotesForInspectionQuery$quotesForInspection$nodes(
      this._res);

  TRes _res;

  call({
    int? batchQuoteId,
    Enum$QuoteStatusEnum? quoteStatus,
    Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote? quote,
    Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail?
        vehicleDetail,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote<TRes>
      get quote =>
          CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote
              .stub(_res);

  CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail<
          TRes>
      get vehicleDetail =>
          CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail
              .stub(_res);
}

class Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote {
  Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote({
    required this.quoteId,
    required this.createdDate,
    required this.quoteType,
    required this.hasBattery,
    required this.hasOriginalCat,
    required this.alloyWheels,
    required this.chromeWheels,
    required this.steelWheels,
    this.$__typename = 'InspectionQuoteResponse',
  });

  factory Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote.fromJson(
      Map<String, dynamic> json) {
    final l$quoteId = json['quoteId'];
    final l$createdDate = json['createdDate'];
    final l$quoteType = json['quoteType'];
    final l$hasBattery = json['hasBattery'];
    final l$hasOriginalCat = json['hasOriginalCat'];
    final l$alloyWheels = json['alloyWheels'];
    final l$chromeWheels = json['chromeWheels'];
    final l$steelWheels = json['steelWheels'];
    final l$$__typename = json['__typename'];
    return Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote(
      quoteId: (l$quoteId as int),
      createdDate: DateTime.parse((l$createdDate as String)),
      quoteType: fromJson$Enum$QuoteTypeEnum((l$quoteType as String)),
      hasBattery: (l$hasBattery as bool),
      hasOriginalCat: (l$hasOriginalCat as bool),
      alloyWheels: (l$alloyWheels as int),
      chromeWheels: (l$chromeWheels as int),
      steelWheels: (l$steelWheels as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int quoteId;

  final DateTime createdDate;

  final Enum$QuoteTypeEnum quoteType;

  final bool hasBattery;

  final bool hasOriginalCat;

  final int alloyWheels;

  final int chromeWheels;

  final int steelWheels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$quoteId = quoteId;
    _resultData['quoteId'] = l$quoteId;
    final l$createdDate = createdDate;
    _resultData['createdDate'] = l$createdDate.toIso8601String();
    final l$quoteType = quoteType;
    _resultData['quoteType'] = toJson$Enum$QuoteTypeEnum(l$quoteType);
    final l$hasBattery = hasBattery;
    _resultData['hasBattery'] = l$hasBattery;
    final l$hasOriginalCat = hasOriginalCat;
    _resultData['hasOriginalCat'] = l$hasOriginalCat;
    final l$alloyWheels = alloyWheels;
    _resultData['alloyWheels'] = l$alloyWheels;
    final l$chromeWheels = chromeWheels;
    _resultData['chromeWheels'] = l$chromeWheels;
    final l$steelWheels = steelWheels;
    _resultData['steelWheels'] = l$steelWheels;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$quoteId = quoteId;
    final l$createdDate = createdDate;
    final l$quoteType = quoteType;
    final l$hasBattery = hasBattery;
    final l$hasOriginalCat = hasOriginalCat;
    final l$alloyWheels = alloyWheels;
    final l$chromeWheels = chromeWheels;
    final l$steelWheels = steelWheels;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$quoteId,
      l$createdDate,
      l$quoteType,
      l$hasBattery,
      l$hasOriginalCat,
      l$alloyWheels,
      l$chromeWheels,
      l$steelWheels,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$quoteId = quoteId;
    final lOther$quoteId = other.quoteId;
    if (l$quoteId != lOther$quoteId) {
      return false;
    }
    final l$createdDate = createdDate;
    final lOther$createdDate = other.createdDate;
    if (l$createdDate != lOther$createdDate) {
      return false;
    }
    final l$quoteType = quoteType;
    final lOther$quoteType = other.quoteType;
    if (l$quoteType != lOther$quoteType) {
      return false;
    }
    final l$hasBattery = hasBattery;
    final lOther$hasBattery = other.hasBattery;
    if (l$hasBattery != lOther$hasBattery) {
      return false;
    }
    final l$hasOriginalCat = hasOriginalCat;
    final lOther$hasOriginalCat = other.hasOriginalCat;
    if (l$hasOriginalCat != lOther$hasOriginalCat) {
      return false;
    }
    final l$alloyWheels = alloyWheels;
    final lOther$alloyWheels = other.alloyWheels;
    if (l$alloyWheels != lOther$alloyWheels) {
      return false;
    }
    final l$chromeWheels = chromeWheels;
    final lOther$chromeWheels = other.chromeWheels;
    if (l$chromeWheels != lOther$chromeWheels) {
      return false;
    }
    final l$steelWheels = steelWheels;
    final lOther$steelWheels = other.steelWheels;
    if (l$steelWheels != lOther$steelWheels) {
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

extension UtilityExtension$Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote
    on Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote {
  CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote<
          Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote>
      get copyWith =>
          CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote<
    TRes> {
  factory CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote(
    Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote instance,
    TRes Function(
            Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote)
        then,
  ) = _CopyWithImpl$Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote;

  factory CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote.stub(
          TRes res) =
      _CopyWithStubImpl$Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote;

  TRes call({
    int? quoteId,
    DateTime? createdDate,
    Enum$QuoteTypeEnum? quoteType,
    bool? hasBattery,
    bool? hasOriginalCat,
    int? alloyWheels,
    int? chromeWheels,
    int? steelWheels,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote<
        TRes>
    implements
        CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote<
            TRes> {
  _CopyWithImpl$Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote(
    this._instance,
    this._then,
  );

  final Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote
      _instance;

  final TRes Function(
      Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? quoteId = _undefined,
    Object? createdDate = _undefined,
    Object? quoteType = _undefined,
    Object? hasBattery = _undefined,
    Object? hasOriginalCat = _undefined,
    Object? alloyWheels = _undefined,
    Object? chromeWheels = _undefined,
    Object? steelWheels = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote(
        quoteId: quoteId == _undefined || quoteId == null
            ? _instance.quoteId
            : (quoteId as int),
        createdDate: createdDate == _undefined || createdDate == null
            ? _instance.createdDate
            : (createdDate as DateTime),
        quoteType: quoteType == _undefined || quoteType == null
            ? _instance.quoteType
            : (quoteType as Enum$QuoteTypeEnum),
        hasBattery: hasBattery == _undefined || hasBattery == null
            ? _instance.hasBattery
            : (hasBattery as bool),
        hasOriginalCat: hasOriginalCat == _undefined || hasOriginalCat == null
            ? _instance.hasOriginalCat
            : (hasOriginalCat as bool),
        alloyWheels: alloyWheels == _undefined || alloyWheels == null
            ? _instance.alloyWheels
            : (alloyWheels as int),
        chromeWheels: chromeWheels == _undefined || chromeWheels == null
            ? _instance.chromeWheels
            : (chromeWheels as int),
        steelWheels: steelWheels == _undefined || steelWheels == null
            ? _instance.steelWheels
            : (steelWheels as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote<
        TRes>
    implements
        CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote<
            TRes> {
  _CopyWithStubImpl$Query$QuotesForInspectionQuery$quotesForInspection$nodes$quote(
      this._res);

  TRes _res;

  call({
    int? quoteId,
    DateTime? createdDate,
    Enum$QuoteTypeEnum? quoteType,
    bool? hasBattery,
    bool? hasOriginalCat,
    int? alloyWheels,
    int? chromeWheels,
    int? steelWheels,
    String? $__typename,
  }) =>
      _res;
}

class Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail {
  Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail({
    required this.make,
    required this.model,
    this.vin,
    this.vehicleReg,
    this.year,
    this.$__typename = 'InspectionVehicleDetailResponse',
  });

  factory Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail.fromJson(
      Map<String, dynamic> json) {
    final l$make = json['make'];
    final l$model = json['model'];
    final l$vin = json['vin'];
    final l$vehicleReg = json['vehicleReg'];
    final l$year = json['year'];
    final l$$__typename = json['__typename'];
    return Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail(
      make: (l$make as String),
      model: (l$model as String),
      vin: (l$vin as String?),
      vehicleReg: (l$vehicleReg as String?),
      year: (l$year as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String make;

  final String model;

  final String? vin;

  final String? vehicleReg;

  final int? year;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$make = make;
    _resultData['make'] = l$make;
    final l$model = model;
    _resultData['model'] = l$model;
    final l$vin = vin;
    _resultData['vin'] = l$vin;
    final l$vehicleReg = vehicleReg;
    _resultData['vehicleReg'] = l$vehicleReg;
    final l$year = year;
    _resultData['year'] = l$year;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$make = make;
    final l$model = model;
    final l$vin = vin;
    final l$vehicleReg = vehicleReg;
    final l$year = year;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$make,
      l$model,
      l$vin,
      l$vehicleReg,
      l$year,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$make = make;
    final lOther$make = other.make;
    if (l$make != lOther$make) {
      return false;
    }
    final l$model = model;
    final lOther$model = other.model;
    if (l$model != lOther$model) {
      return false;
    }
    final l$vin = vin;
    final lOther$vin = other.vin;
    if (l$vin != lOther$vin) {
      return false;
    }
    final l$vehicleReg = vehicleReg;
    final lOther$vehicleReg = other.vehicleReg;
    if (l$vehicleReg != lOther$vehicleReg) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
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

extension UtilityExtension$Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail
    on Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail {
  CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail<
          Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail>
      get copyWith =>
          CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail<
    TRes> {
  factory CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail(
    Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail
        instance,
    TRes Function(
            Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail)
        then,
  ) = _CopyWithImpl$Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail;

  factory CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail.stub(
          TRes res) =
      _CopyWithStubImpl$Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail;

  TRes call({
    String? make,
    String? model,
    String? vin,
    String? vehicleReg,
    int? year,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail<
        TRes>
    implements
        CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail<
            TRes> {
  _CopyWithImpl$Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail(
    this._instance,
    this._then,
  );

  final Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail
      _instance;

  final TRes Function(
          Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? make = _undefined,
    Object? model = _undefined,
    Object? vin = _undefined,
    Object? vehicleReg = _undefined,
    Object? year = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail(
        make: make == _undefined || make == null
            ? _instance.make
            : (make as String),
        model: model == _undefined || model == null
            ? _instance.model
            : (model as String),
        vin: vin == _undefined ? _instance.vin : (vin as String?),
        vehicleReg: vehicleReg == _undefined
            ? _instance.vehicleReg
            : (vehicleReg as String?),
        year: year == _undefined ? _instance.year : (year as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail<
        TRes>
    implements
        CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail<
            TRes> {
  _CopyWithStubImpl$Query$QuotesForInspectionQuery$quotesForInspection$nodes$vehicleDetail(
      this._res);

  TRes _res;

  call({
    String? make,
    String? model,
    String? vin,
    String? vehicleReg,
    int? year,
    String? $__typename,
  }) =>
      _res;
}

class Query$QuotesForInspectionQuery$quotesForInspection$pageInfo {
  Query$QuotesForInspectionQuery$quotesForInspection$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$QuotesForInspectionQuery$quotesForInspection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$QuotesForInspectionQuery$quotesForInspection$pageInfo(
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
    if (other is! Query$QuotesForInspectionQuery$quotesForInspection$pageInfo ||
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

extension UtilityExtension$Query$QuotesForInspectionQuery$quotesForInspection$pageInfo
    on Query$QuotesForInspectionQuery$quotesForInspection$pageInfo {
  CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$pageInfo<
          Query$QuotesForInspectionQuery$quotesForInspection$pageInfo>
      get copyWith =>
          CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$pageInfo<
    TRes> {
  factory CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$pageInfo(
    Query$QuotesForInspectionQuery$quotesForInspection$pageInfo instance,
    TRes Function(Query$QuotesForInspectionQuery$quotesForInspection$pageInfo)
        then,
  ) = _CopyWithImpl$Query$QuotesForInspectionQuery$quotesForInspection$pageInfo;

  factory CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$QuotesForInspectionQuery$quotesForInspection$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$QuotesForInspectionQuery$quotesForInspection$pageInfo<
        TRes>
    implements
        CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$pageInfo<
            TRes> {
  _CopyWithImpl$Query$QuotesForInspectionQuery$quotesForInspection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$QuotesForInspectionQuery$quotesForInspection$pageInfo _instance;

  final TRes Function(
      Query$QuotesForInspectionQuery$quotesForInspection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$QuotesForInspectionQuery$quotesForInspection$pageInfo(
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

class _CopyWithStubImpl$Query$QuotesForInspectionQuery$quotesForInspection$pageInfo<
        TRes>
    implements
        CopyWith$Query$QuotesForInspectionQuery$quotesForInspection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$QuotesForInspectionQuery$quotesForInspection$pageInfo(
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
