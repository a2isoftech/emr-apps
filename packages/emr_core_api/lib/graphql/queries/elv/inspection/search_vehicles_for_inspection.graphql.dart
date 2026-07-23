import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$searchVehiclesForInspection {
  factory Variables$Query$searchVehiclesForInspection({
    required int first,
    required String yardCode,
    required String searchText,
  }) => Variables$Query$searchVehiclesForInspection._({
    r'first': first,
    r'yardCode': yardCode,
    r'searchText': searchText,
  });

  Variables$Query$searchVehiclesForInspection._(this._$data);

  factory Variables$Query$searchVehiclesForInspection.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$first = data['first'];
    result$data['first'] = (l$first as int);
    final l$yardCode = data['yardCode'];
    result$data['yardCode'] = (l$yardCode as String);
    final l$searchText = data['searchText'];
    result$data['searchText'] = (l$searchText as String);
    return Variables$Query$searchVehiclesForInspection._(result$data);
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

  CopyWith$Variables$Query$searchVehiclesForInspection<
    Variables$Query$searchVehiclesForInspection
  >
  get copyWith =>
      CopyWith$Variables$Query$searchVehiclesForInspection(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$searchVehiclesForInspection ||
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
    return Object.hashAll([l$first, l$yardCode, l$searchText]);
  }
}

abstract class CopyWith$Variables$Query$searchVehiclesForInspection<TRes> {
  factory CopyWith$Variables$Query$searchVehiclesForInspection(
    Variables$Query$searchVehiclesForInspection instance,
    TRes Function(Variables$Query$searchVehiclesForInspection) then,
  ) = _CopyWithImpl$Variables$Query$searchVehiclesForInspection;

  factory CopyWith$Variables$Query$searchVehiclesForInspection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$searchVehiclesForInspection;

  TRes call({int? first, String? yardCode, String? searchText});
}

class _CopyWithImpl$Variables$Query$searchVehiclesForInspection<TRes>
    implements CopyWith$Variables$Query$searchVehiclesForInspection<TRes> {
  _CopyWithImpl$Variables$Query$searchVehiclesForInspection(
    this._instance,
    this._then,
  );

  final Variables$Query$searchVehiclesForInspection _instance;

  final TRes Function(Variables$Query$searchVehiclesForInspection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? yardCode = _undefined,
    Object? searchText = _undefined,
  }) => _then(
    Variables$Query$searchVehiclesForInspection._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (yardCode != _undefined && yardCode != null)
        'yardCode': (yardCode as String),
      if (searchText != _undefined && searchText != null)
        'searchText': (searchText as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$searchVehiclesForInspection<TRes>
    implements CopyWith$Variables$Query$searchVehiclesForInspection<TRes> {
  _CopyWithStubImpl$Variables$Query$searchVehiclesForInspection(this._res);

  TRes _res;

  call({int? first, String? yardCode, String? searchText}) => _res;
}

class Query$searchVehiclesForInspection {
  Query$searchVehiclesForInspection({
    this.searchVehiclesForInspection,
    this.$__typename = 'Query',
  });

  factory Query$searchVehiclesForInspection.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$searchVehiclesForInspection = json['searchVehiclesForInspection'];
    final l$$__typename = json['__typename'];
    return Query$searchVehiclesForInspection(
      searchVehiclesForInspection: l$searchVehiclesForInspection == null
          ? null
          : Query$searchVehiclesForInspection$searchVehiclesForInspection.fromJson(
              (l$searchVehiclesForInspection as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$searchVehiclesForInspection$searchVehiclesForInspection?
  searchVehiclesForInspection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchVehiclesForInspection = searchVehiclesForInspection;
    _resultData['searchVehiclesForInspection'] = l$searchVehiclesForInspection
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchVehiclesForInspection = searchVehiclesForInspection;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchVehiclesForInspection, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$searchVehiclesForInspection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchVehiclesForInspection = searchVehiclesForInspection;
    final lOther$searchVehiclesForInspection =
        other.searchVehiclesForInspection;
    if (l$searchVehiclesForInspection != lOther$searchVehiclesForInspection) {
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

extension UtilityExtension$Query$searchVehiclesForInspection
    on Query$searchVehiclesForInspection {
  CopyWith$Query$searchVehiclesForInspection<Query$searchVehiclesForInspection>
  get copyWith => CopyWith$Query$searchVehiclesForInspection(this, (i) => i);
}

abstract class CopyWith$Query$searchVehiclesForInspection<TRes> {
  factory CopyWith$Query$searchVehiclesForInspection(
    Query$searchVehiclesForInspection instance,
    TRes Function(Query$searchVehiclesForInspection) then,
  ) = _CopyWithImpl$Query$searchVehiclesForInspection;

  factory CopyWith$Query$searchVehiclesForInspection.stub(TRes res) =
      _CopyWithStubImpl$Query$searchVehiclesForInspection;

  TRes call({
    Query$searchVehiclesForInspection$searchVehiclesForInspection?
    searchVehiclesForInspection,
    String? $__typename,
  });
  CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection<TRes>
  get searchVehiclesForInspection;
}

class _CopyWithImpl$Query$searchVehiclesForInspection<TRes>
    implements CopyWith$Query$searchVehiclesForInspection<TRes> {
  _CopyWithImpl$Query$searchVehiclesForInspection(this._instance, this._then);

  final Query$searchVehiclesForInspection _instance;

  final TRes Function(Query$searchVehiclesForInspection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchVehiclesForInspection = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchVehiclesForInspection(
      searchVehiclesForInspection: searchVehiclesForInspection == _undefined
          ? _instance.searchVehiclesForInspection
          : (searchVehiclesForInspection
                as Query$searchVehiclesForInspection$searchVehiclesForInspection?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection<TRes>
  get searchVehiclesForInspection {
    final local$searchVehiclesForInspection =
        _instance.searchVehiclesForInspection;
    return local$searchVehiclesForInspection == null
        ? CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection.stub(
            _then(_instance),
          )
        : CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection(
            local$searchVehiclesForInspection,
            (e) => call(searchVehiclesForInspection: e),
          );
  }
}

class _CopyWithStubImpl$Query$searchVehiclesForInspection<TRes>
    implements CopyWith$Query$searchVehiclesForInspection<TRes> {
  _CopyWithStubImpl$Query$searchVehiclesForInspection(this._res);

  TRes _res;

  call({
    Query$searchVehiclesForInspection$searchVehiclesForInspection?
    searchVehiclesForInspection,
    String? $__typename,
  }) => _res;

  CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection<TRes>
  get searchVehiclesForInspection =>
      CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection.stub(
        _res,
      );
}

const documentNodeQuerysearchVehiclesForInspection = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'searchVehiclesForInspection'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'first')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'yardCode')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'searchText')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'searchVehiclesForInspection'),
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
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'query'),
                      value: VariableNode(name: NameNode(value: 'searchText')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'yardCode'),
                      value: VariableNode(name: NameNode(value: 'yardCode')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'nodes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
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
                        name: NameNode(value: 'vehicleKey'),
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
                        name: NameNode(value: 'vrn'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
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
                        name: NameNode(value: 'year'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'quoteNumber'),
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
                    ],
                  ),
                ),
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
                  selectionSet: SelectionSetNode(
                    selections: [
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
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);

class Query$searchVehiclesForInspection$searchVehiclesForInspection {
  Query$searchVehiclesForInspection$searchVehiclesForInspection({
    this.nodes,
    required this.totalCount,
    required this.pageInfo,
    this.$__typename = 'SearchVehiclesForInspectionConnection',
  });

  factory Query$searchVehiclesForInspection$searchVehiclesForInspection.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$searchVehiclesForInspection$searchVehiclesForInspection(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) =>
                Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes
  >?
  nodes;

  final int totalCount;

  final Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo
  pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$totalCount = totalCount;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$totalCount,
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchVehiclesForInspection$searchVehiclesForInspection ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$searchVehiclesForInspection$searchVehiclesForInspection
    on Query$searchVehiclesForInspection$searchVehiclesForInspection {
  CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection<
    Query$searchVehiclesForInspection$searchVehiclesForInspection
  >
  get copyWith =>
      CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection<
  TRes
> {
  factory CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection(
    Query$searchVehiclesForInspection$searchVehiclesForInspection instance,
    TRes Function(Query$searchVehiclesForInspection$searchVehiclesForInspection)
    then,
  ) = _CopyWithImpl$Query$searchVehiclesForInspection$searchVehiclesForInspection;

  factory CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchVehiclesForInspection$searchVehiclesForInspection;

  TRes call({
    List<Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes>?
    nodes,
    int? totalCount,
    Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo?
    pageInfo,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes
    >?
    Function(
      Iterable<
        CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes<
          Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes
        >
      >?,
    )
    _fn,
  );
  CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo<
    TRes
  >
  get pageInfo;
}

class _CopyWithImpl$Query$searchVehiclesForInspection$searchVehiclesForInspection<
  TRes
>
    implements
        CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection<
          TRes
        > {
  _CopyWithImpl$Query$searchVehiclesForInspection$searchVehiclesForInspection(
    this._instance,
    this._then,
  );

  final Query$searchVehiclesForInspection$searchVehiclesForInspection _instance;

  final TRes Function(
    Query$searchVehiclesForInspection$searchVehiclesForInspection,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchVehiclesForInspection$searchVehiclesForInspection(
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes
                as List<
                  Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes
                >?),
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes
    >?
    Function(
      Iterable<
        CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes<
          Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) =>
            CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );

  CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo<
    TRes
  >
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }
}

class _CopyWithStubImpl$Query$searchVehiclesForInspection$searchVehiclesForInspection<
  TRes
>
    implements
        CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection<
          TRes
        > {
  _CopyWithStubImpl$Query$searchVehiclesForInspection$searchVehiclesForInspection(
    this._res,
  );

  TRes _res;

  call({
    List<Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes>?
    nodes,
    int? totalCount,
    Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo?
    pageInfo,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;

  CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo<
    TRes
  >
  get pageInfo =>
      CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo.stub(
        _res,
      );
}

class Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes {
  Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes({
    required this.id,
    required this.status,
    required this.vehicleKey,
    required this.vin,
    required this.vrn,
    required this.make,
    required this.model,
    required this.year,
    required this.quoteNumber,
    this.$__typename = 'ElvInspectionSearchResult',
  });

  factory Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$vehicleKey = json['vehicleKey'];
    final l$vin = json['vin'];
    final l$vrn = json['vrn'];
    final l$make = json['make'];
    final l$model = json['model'];
    final l$year = json['year'];
    final l$quoteNumber = json['quoteNumber'];
    final l$$__typename = json['__typename'];
    return Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes(
      id: (l$id as String),
      status: fromJson$Enum$QuoteStatus((l$status as String)),
      vehicleKey: (l$vehicleKey as String),
      vin: (l$vin as String),
      vrn: (l$vrn as String),
      make: (l$make as String),
      model: (l$model as String),
      year: (l$year as int),
      quoteNumber: (l$quoteNumber as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$QuoteStatus status;

  final String vehicleKey;

  final String vin;

  final String vrn;

  final String make;

  final String model;

  final int year;

  final String quoteNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = toJson$Enum$QuoteStatus(l$status);
    final l$vehicleKey = vehicleKey;
    _resultData['vehicleKey'] = l$vehicleKey;
    final l$vin = vin;
    _resultData['vin'] = l$vin;
    final l$vrn = vrn;
    _resultData['vrn'] = l$vrn;
    final l$make = make;
    _resultData['make'] = l$make;
    final l$model = model;
    _resultData['model'] = l$model;
    final l$year = year;
    _resultData['year'] = l$year;
    final l$quoteNumber = quoteNumber;
    _resultData['quoteNumber'] = l$quoteNumber;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$vehicleKey = vehicleKey;
    final l$vin = vin;
    final l$vrn = vrn;
    final l$make = make;
    final l$model = model;
    final l$year = year;
    final l$quoteNumber = quoteNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$status,
      l$vehicleKey,
      l$vin,
      l$vrn,
      l$make,
      l$model,
      l$year,
      l$quoteNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$vehicleKey = vehicleKey;
    final lOther$vehicleKey = other.vehicleKey;
    if (l$vehicleKey != lOther$vehicleKey) {
      return false;
    }
    final l$vin = vin;
    final lOther$vin = other.vin;
    if (l$vin != lOther$vin) {
      return false;
    }
    final l$vrn = vrn;
    final lOther$vrn = other.vrn;
    if (l$vrn != lOther$vrn) {
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
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
      return false;
    }
    final l$quoteNumber = quoteNumber;
    final lOther$quoteNumber = other.quoteNumber;
    if (l$quoteNumber != lOther$quoteNumber) {
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

extension UtilityExtension$Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes
    on Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes {
  CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes<
    Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes
  >
  get copyWith =>
      CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes<
  TRes
> {
  factory CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes(
    Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes
    instance,
    TRes Function(
      Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes;

  factory CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes;

  TRes call({
    String? id,
    Enum$QuoteStatus? status,
    String? vehicleKey,
    String? vin,
    String? vrn,
    String? make,
    String? model,
    int? year,
    String? quoteNumber,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes<
  TRes
>
    implements
        CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes<
          TRes
        > {
  _CopyWithImpl$Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes(
    this._instance,
    this._then,
  );

  final Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes
  _instance;

  final TRes Function(
    Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? vehicleKey = _undefined,
    Object? vin = _undefined,
    Object? vrn = _undefined,
    Object? make = _undefined,
    Object? model = _undefined,
    Object? year = _undefined,
    Object? quoteNumber = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      status: status == _undefined || status == null
          ? _instance.status
          : (status as Enum$QuoteStatus),
      vehicleKey: vehicleKey == _undefined || vehicleKey == null
          ? _instance.vehicleKey
          : (vehicleKey as String),
      vin: vin == _undefined || vin == null ? _instance.vin : (vin as String),
      vrn: vrn == _undefined || vrn == null ? _instance.vrn : (vrn as String),
      make: make == _undefined || make == null
          ? _instance.make
          : (make as String),
      model: model == _undefined || model == null
          ? _instance.model
          : (model as String),
      year: year == _undefined || year == null ? _instance.year : (year as int),
      quoteNumber: quoteNumber == _undefined || quoteNumber == null
          ? _instance.quoteNumber
          : (quoteNumber as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes<
  TRes
>
    implements
        CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$searchVehiclesForInspection$searchVehiclesForInspection$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    Enum$QuoteStatus? status,
    String? vehicleKey,
    String? vin,
    String? vrn,
    String? make,
    String? model,
    int? year,
    String? quoteNumber,
    String? $__typename,
  }) => _res;
}

class Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo {
  Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo(
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
    if (other
            is! Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo ||
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

extension UtilityExtension$Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo
    on Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo {
  CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo<
    Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo
  >
  get copyWith =>
      CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo<
  TRes
> {
  factory CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo(
    Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo
    instance,
    TRes Function(
      Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo,
    )
    then,
  ) = _CopyWithImpl$Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo;

  factory CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo<
  TRes
>
    implements
        CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo
  _instance;

  final TRes Function(
    Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo(
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
      hasPreviousPage: hasPreviousPage == _undefined || hasPreviousPage == null
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
    ),
  );
}

class _CopyWithStubImpl$Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo<
  TRes
>
    implements
        CopyWith$Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$searchVehiclesForInspection$searchVehiclesForInspection$pageInfo(
    this._res,
  );

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) => _res;
}
