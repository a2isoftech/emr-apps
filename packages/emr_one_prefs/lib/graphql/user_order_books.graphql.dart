import 'package:gql/ast.dart';

class Variables$Query$UserOrderBooks {
  factory Variables$Query$UserOrderBooks({String? after}) =>
      Variables$Query$UserOrderBooks._({
        if (after != null) r'after': after,
      });

  Variables$Query$UserOrderBooks._(this._$data);

  factory Variables$Query$UserOrderBooks.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables$Query$UserOrderBooks._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith$Variables$Query$UserOrderBooks<Variables$Query$UserOrderBooks>
      get copyWith => CopyWith$Variables$Query$UserOrderBooks(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$UserOrderBooks) ||
        runtimeType != other.runtimeType) {
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
    final l$after = after;
    return Object.hashAll([_$data.containsKey('after') ? l$after : const {}]);
  }
}

abstract class CopyWith$Variables$Query$UserOrderBooks<TRes> {
  factory CopyWith$Variables$Query$UserOrderBooks(
    Variables$Query$UserOrderBooks instance,
    TRes Function(Variables$Query$UserOrderBooks) then,
  ) = _CopyWithImpl$Variables$Query$UserOrderBooks;

  factory CopyWith$Variables$Query$UserOrderBooks.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$UserOrderBooks;

  TRes call({String? after});
}

class _CopyWithImpl$Variables$Query$UserOrderBooks<TRes>
    implements CopyWith$Variables$Query$UserOrderBooks<TRes> {
  _CopyWithImpl$Variables$Query$UserOrderBooks(
    this._instance,
    this._then,
  );

  final Variables$Query$UserOrderBooks _instance;

  final TRes Function(Variables$Query$UserOrderBooks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? after = _undefined}) =>
      _then(Variables$Query$UserOrderBooks._({
        ..._instance._$data,
        if (after != _undefined) 'after': (after as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$UserOrderBooks<TRes>
    implements CopyWith$Variables$Query$UserOrderBooks<TRes> {
  _CopyWithStubImpl$Variables$Query$UserOrderBooks(this._res);

  TRes _res;

  call({String? after}) => _res;
}

class Query$UserOrderBooks {
  Query$UserOrderBooks({
    this.userOrderBooks,
    this.$__typename = 'Query',
  });

  factory Query$UserOrderBooks.fromJson(Map<String, dynamic> json) {
    final l$userOrderBooks = json['userOrderBooks'];
    final l$$__typename = json['__typename'];
    return Query$UserOrderBooks(
      userOrderBooks: l$userOrderBooks == null
          ? null
          : Query$UserOrderBooks$userOrderBooks.fromJson(
              (l$userOrderBooks as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UserOrderBooks$userOrderBooks? userOrderBooks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userOrderBooks = userOrderBooks;
    _resultData['userOrderBooks'] = l$userOrderBooks?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userOrderBooks = userOrderBooks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userOrderBooks,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserOrderBooks) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userOrderBooks = userOrderBooks;
    final lOther$userOrderBooks = other.userOrderBooks;
    if (l$userOrderBooks != lOther$userOrderBooks) {
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

extension UtilityExtension$Query$UserOrderBooks on Query$UserOrderBooks {
  CopyWith$Query$UserOrderBooks<Query$UserOrderBooks> get copyWith =>
      CopyWith$Query$UserOrderBooks(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserOrderBooks<TRes> {
  factory CopyWith$Query$UserOrderBooks(
    Query$UserOrderBooks instance,
    TRes Function(Query$UserOrderBooks) then,
  ) = _CopyWithImpl$Query$UserOrderBooks;

  factory CopyWith$Query$UserOrderBooks.stub(TRes res) =
      _CopyWithStubImpl$Query$UserOrderBooks;

  TRes call({
    Query$UserOrderBooks$userOrderBooks? userOrderBooks,
    String? $__typename,
  });
  CopyWith$Query$UserOrderBooks$userOrderBooks<TRes> get userOrderBooks;
}

class _CopyWithImpl$Query$UserOrderBooks<TRes>
    implements CopyWith$Query$UserOrderBooks<TRes> {
  _CopyWithImpl$Query$UserOrderBooks(
    this._instance,
    this._then,
  );

  final Query$UserOrderBooks _instance;

  final TRes Function(Query$UserOrderBooks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userOrderBooks = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserOrderBooks(
        userOrderBooks: userOrderBooks == _undefined
            ? _instance.userOrderBooks
            : (userOrderBooks as Query$UserOrderBooks$userOrderBooks?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserOrderBooks$userOrderBooks<TRes> get userOrderBooks {
    final local$userOrderBooks = _instance.userOrderBooks;
    return local$userOrderBooks == null
        ? CopyWith$Query$UserOrderBooks$userOrderBooks.stub(_then(_instance))
        : CopyWith$Query$UserOrderBooks$userOrderBooks(
            local$userOrderBooks, (e) => call(userOrderBooks: e));
  }
}

class _CopyWithStubImpl$Query$UserOrderBooks<TRes>
    implements CopyWith$Query$UserOrderBooks<TRes> {
  _CopyWithStubImpl$Query$UserOrderBooks(this._res);

  TRes _res;

  call({
    Query$UserOrderBooks$userOrderBooks? userOrderBooks,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserOrderBooks$userOrderBooks<TRes> get userOrderBooks =>
      CopyWith$Query$UserOrderBooks$userOrderBooks.stub(_res);
}

const documentNodeQueryUserOrderBooks = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserOrderBooks'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'userOrderBooks'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: IntValueNode(value: '50'),
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
                name: NameNode(value: 'orderBookTypeId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'orderBookName'),
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

class Query$UserOrderBooks$userOrderBooks {
  Query$UserOrderBooks$userOrderBooks({
    this.nodes,
    required this.pageInfo,
    this.$__typename = 'UserOrderBooksConnection',
  });

  factory Query$UserOrderBooks$userOrderBooks.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$UserOrderBooks$userOrderBooks(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => Query$UserOrderBooks$userOrderBooks$nodes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$UserOrderBooks$userOrderBooks$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$UserOrderBooks$userOrderBooks$nodes>? nodes;

  final Query$UserOrderBooks$userOrderBooks$pageInfo pageInfo;

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
    if (!(other is Query$UserOrderBooks$userOrderBooks) ||
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

extension UtilityExtension$Query$UserOrderBooks$userOrderBooks
    on Query$UserOrderBooks$userOrderBooks {
  CopyWith$Query$UserOrderBooks$userOrderBooks<
          Query$UserOrderBooks$userOrderBooks>
      get copyWith => CopyWith$Query$UserOrderBooks$userOrderBooks(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserOrderBooks$userOrderBooks<TRes> {
  factory CopyWith$Query$UserOrderBooks$userOrderBooks(
    Query$UserOrderBooks$userOrderBooks instance,
    TRes Function(Query$UserOrderBooks$userOrderBooks) then,
  ) = _CopyWithImpl$Query$UserOrderBooks$userOrderBooks;

  factory CopyWith$Query$UserOrderBooks$userOrderBooks.stub(TRes res) =
      _CopyWithStubImpl$Query$UserOrderBooks$userOrderBooks;

  TRes call({
    List<Query$UserOrderBooks$userOrderBooks$nodes>? nodes,
    Query$UserOrderBooks$userOrderBooks$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$UserOrderBooks$userOrderBooks$nodes>? Function(
              Iterable<
                  CopyWith$Query$UserOrderBooks$userOrderBooks$nodes<
                      Query$UserOrderBooks$userOrderBooks$nodes>>?)
          _fn);
  CopyWith$Query$UserOrderBooks$userOrderBooks$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$UserOrderBooks$userOrderBooks<TRes>
    implements CopyWith$Query$UserOrderBooks$userOrderBooks<TRes> {
  _CopyWithImpl$Query$UserOrderBooks$userOrderBooks(
    this._instance,
    this._then,
  );

  final Query$UserOrderBooks$userOrderBooks _instance;

  final TRes Function(Query$UserOrderBooks$userOrderBooks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserOrderBooks$userOrderBooks(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$UserOrderBooks$userOrderBooks$nodes>?),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$UserOrderBooks$userOrderBooks$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$UserOrderBooks$userOrderBooks$nodes>? Function(
                  Iterable<
                      CopyWith$Query$UserOrderBooks$userOrderBooks$nodes<
                          Query$UserOrderBooks$userOrderBooks$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes
              ?.map((e) => CopyWith$Query$UserOrderBooks$userOrderBooks$nodes(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Query$UserOrderBooks$userOrderBooks$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$UserOrderBooks$userOrderBooks$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$UserOrderBooks$userOrderBooks<TRes>
    implements CopyWith$Query$UserOrderBooks$userOrderBooks<TRes> {
  _CopyWithStubImpl$Query$UserOrderBooks$userOrderBooks(this._res);

  TRes _res;

  call({
    List<Query$UserOrderBooks$userOrderBooks$nodes>? nodes,
    Query$UserOrderBooks$userOrderBooks$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;

  CopyWith$Query$UserOrderBooks$userOrderBooks$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$UserOrderBooks$userOrderBooks$pageInfo.stub(_res);
}

class Query$UserOrderBooks$userOrderBooks$nodes {
  Query$UserOrderBooks$userOrderBooks$nodes({
    required this.orderBookTypeId,
    required this.orderBookName,
    required this.gradeType,
    this.$__typename = 'UserOrderBook',
  });

  factory Query$UserOrderBooks$userOrderBooks$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$orderBookTypeId = json['orderBookTypeId'];
    final l$orderBookName = json['orderBookName'];
    final l$gradeType = json['gradeType'];
    final l$$__typename = json['__typename'];
    return Query$UserOrderBooks$userOrderBooks$nodes(
      orderBookTypeId: (l$orderBookTypeId as int),
      orderBookName: (l$orderBookName as String),
      gradeType: (l$gradeType as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int orderBookTypeId;

  final String orderBookName;

  final String gradeType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderBookTypeId = orderBookTypeId;
    _resultData['orderBookTypeId'] = l$orderBookTypeId;
    final l$orderBookName = orderBookName;
    _resultData['orderBookName'] = l$orderBookName;
    final l$gradeType = gradeType;
    _resultData['gradeType'] = l$gradeType;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderBookTypeId = orderBookTypeId;
    final l$orderBookName = orderBookName;
    final l$gradeType = gradeType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$orderBookTypeId,
      l$orderBookName,
      l$gradeType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserOrderBooks$userOrderBooks$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderBookTypeId = orderBookTypeId;
    final lOther$orderBookTypeId = other.orderBookTypeId;
    if (l$orderBookTypeId != lOther$orderBookTypeId) {
      return false;
    }
    final l$orderBookName = orderBookName;
    final lOther$orderBookName = other.orderBookName;
    if (l$orderBookName != lOther$orderBookName) {
      return false;
    }
    final l$gradeType = gradeType;
    final lOther$gradeType = other.gradeType;
    if (l$gradeType != lOther$gradeType) {
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

extension UtilityExtension$Query$UserOrderBooks$userOrderBooks$nodes
    on Query$UserOrderBooks$userOrderBooks$nodes {
  CopyWith$Query$UserOrderBooks$userOrderBooks$nodes<
          Query$UserOrderBooks$userOrderBooks$nodes>
      get copyWith => CopyWith$Query$UserOrderBooks$userOrderBooks$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserOrderBooks$userOrderBooks$nodes<TRes> {
  factory CopyWith$Query$UserOrderBooks$userOrderBooks$nodes(
    Query$UserOrderBooks$userOrderBooks$nodes instance,
    TRes Function(Query$UserOrderBooks$userOrderBooks$nodes) then,
  ) = _CopyWithImpl$Query$UserOrderBooks$userOrderBooks$nodes;

  factory CopyWith$Query$UserOrderBooks$userOrderBooks$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$UserOrderBooks$userOrderBooks$nodes;

  TRes call({
    int? orderBookTypeId,
    String? orderBookName,
    String? gradeType,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserOrderBooks$userOrderBooks$nodes<TRes>
    implements CopyWith$Query$UserOrderBooks$userOrderBooks$nodes<TRes> {
  _CopyWithImpl$Query$UserOrderBooks$userOrderBooks$nodes(
    this._instance,
    this._then,
  );

  final Query$UserOrderBooks$userOrderBooks$nodes _instance;

  final TRes Function(Query$UserOrderBooks$userOrderBooks$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderBookTypeId = _undefined,
    Object? orderBookName = _undefined,
    Object? gradeType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserOrderBooks$userOrderBooks$nodes(
        orderBookTypeId:
            orderBookTypeId == _undefined || orderBookTypeId == null
                ? _instance.orderBookTypeId
                : (orderBookTypeId as int),
        orderBookName: orderBookName == _undefined || orderBookName == null
            ? _instance.orderBookName
            : (orderBookName as String),
        gradeType: gradeType == _undefined || gradeType == null
            ? _instance.gradeType
            : (gradeType as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserOrderBooks$userOrderBooks$nodes<TRes>
    implements CopyWith$Query$UserOrderBooks$userOrderBooks$nodes<TRes> {
  _CopyWithStubImpl$Query$UserOrderBooks$userOrderBooks$nodes(this._res);

  TRes _res;

  call({
    int? orderBookTypeId,
    String? orderBookName,
    String? gradeType,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserOrderBooks$userOrderBooks$pageInfo {
  Query$UserOrderBooks$userOrderBooks$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$UserOrderBooks$userOrderBooks$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$UserOrderBooks$userOrderBooks$pageInfo(
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
    if (!(other is Query$UserOrderBooks$userOrderBooks$pageInfo) ||
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

extension UtilityExtension$Query$UserOrderBooks$userOrderBooks$pageInfo
    on Query$UserOrderBooks$userOrderBooks$pageInfo {
  CopyWith$Query$UserOrderBooks$userOrderBooks$pageInfo<
          Query$UserOrderBooks$userOrderBooks$pageInfo>
      get copyWith => CopyWith$Query$UserOrderBooks$userOrderBooks$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserOrderBooks$userOrderBooks$pageInfo<TRes> {
  factory CopyWith$Query$UserOrderBooks$userOrderBooks$pageInfo(
    Query$UserOrderBooks$userOrderBooks$pageInfo instance,
    TRes Function(Query$UserOrderBooks$userOrderBooks$pageInfo) then,
  ) = _CopyWithImpl$Query$UserOrderBooks$userOrderBooks$pageInfo;

  factory CopyWith$Query$UserOrderBooks$userOrderBooks$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$UserOrderBooks$userOrderBooks$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserOrderBooks$userOrderBooks$pageInfo<TRes>
    implements CopyWith$Query$UserOrderBooks$userOrderBooks$pageInfo<TRes> {
  _CopyWithImpl$Query$UserOrderBooks$userOrderBooks$pageInfo(
    this._instance,
    this._then,
  );

  final Query$UserOrderBooks$userOrderBooks$pageInfo _instance;

  final TRes Function(Query$UserOrderBooks$userOrderBooks$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserOrderBooks$userOrderBooks$pageInfo(
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

class _CopyWithStubImpl$Query$UserOrderBooks$userOrderBooks$pageInfo<TRes>
    implements CopyWith$Query$UserOrderBooks$userOrderBooks$pageInfo<TRes> {
  _CopyWithStubImpl$Query$UserOrderBooks$userOrderBooks$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}
