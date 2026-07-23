import 'package:gql/ast.dart';

class Variables$Query$searchFreeText {
  factory Variables$Query$searchFreeText({
    String? after,
    String? before,
    int? first,
    int? last,
    required String input,
  }) =>
      Variables$Query$searchFreeText._({
        if (after != null) r'after': after,
        if (before != null) r'before': before,
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        r'input': input,
      });

  Variables$Query$searchFreeText._(this._$data);

  factory Variables$Query$searchFreeText.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    final l$input = data['input'];
    result$data['input'] = (l$input as String);
    return Variables$Query$searchFreeText._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get after => (_$data['after'] as String?);

  String? get before => (_$data['before'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String get input => (_$data['input'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    final l$input = input;
    result$data['input'] = l$input;
    return result$data;
  }

  CopyWith$Variables$Query$searchFreeText<Variables$Query$searchFreeText>
      get copyWith => CopyWith$Variables$Query$searchFreeText(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$searchFreeText) ||
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
    final l$before = before;
    final lOther$before = other.before;
    if (_$data.containsKey('before') != other._$data.containsKey('before')) {
      return false;
    }
    if (l$before != lOther$before) {
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
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$after = after;
    final l$before = before;
    final l$first = first;
    final l$last = last;
    final l$input = input;
    return Object.hashAll([
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      l$input,
    ]);
  }
}

abstract class CopyWith$Variables$Query$searchFreeText<TRes> {
  factory CopyWith$Variables$Query$searchFreeText(
    Variables$Query$searchFreeText instance,
    TRes Function(Variables$Query$searchFreeText) then,
  ) = _CopyWithImpl$Variables$Query$searchFreeText;

  factory CopyWith$Variables$Query$searchFreeText.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$searchFreeText;

  TRes call({
    String? after,
    String? before,
    int? first,
    int? last,
    String? input,
  });
}

class _CopyWithImpl$Variables$Query$searchFreeText<TRes>
    implements CopyWith$Variables$Query$searchFreeText<TRes> {
  _CopyWithImpl$Variables$Query$searchFreeText(
    this._instance,
    this._then,
  );

  final Variables$Query$searchFreeText _instance;

  final TRes Function(Variables$Query$searchFreeText) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? after = _undefined,
    Object? before = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Query$searchFreeText._({
        ..._instance._$data,
        if (after != _undefined) 'after': (after as String?),
        if (before != _undefined) 'before': (before as String?),
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (input != _undefined && input != null) 'input': (input as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$searchFreeText<TRes>
    implements CopyWith$Variables$Query$searchFreeText<TRes> {
  _CopyWithStubImpl$Variables$Query$searchFreeText(this._res);

  TRes _res;

  call({
    String? after,
    String? before,
    int? first,
    int? last,
    String? input,
  }) =>
      _res;
}

class Query$searchFreeText {
  Query$searchFreeText({
    this.searchAssetsFreeText,
    this.$__typename = 'Query',
  });

  factory Query$searchFreeText.fromJson(Map<String, dynamic> json) {
    final l$searchAssetsFreeText = json['searchAssetsFreeText'];
    final l$$__typename = json['__typename'];
    return Query$searchFreeText(
      searchAssetsFreeText: l$searchAssetsFreeText == null
          ? null
          : Query$searchFreeText$searchAssetsFreeText.fromJson(
              (l$searchAssetsFreeText as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$searchFreeText$searchAssetsFreeText? searchAssetsFreeText;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchAssetsFreeText = searchAssetsFreeText;
    _resultData['searchAssetsFreeText'] = l$searchAssetsFreeText?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchAssetsFreeText = searchAssetsFreeText;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$searchAssetsFreeText,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$searchFreeText) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchAssetsFreeText = searchAssetsFreeText;
    final lOther$searchAssetsFreeText = other.searchAssetsFreeText;
    if (l$searchAssetsFreeText != lOther$searchAssetsFreeText) {
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

extension UtilityExtension$Query$searchFreeText on Query$searchFreeText {
  CopyWith$Query$searchFreeText<Query$searchFreeText> get copyWith =>
      CopyWith$Query$searchFreeText(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$searchFreeText<TRes> {
  factory CopyWith$Query$searchFreeText(
    Query$searchFreeText instance,
    TRes Function(Query$searchFreeText) then,
  ) = _CopyWithImpl$Query$searchFreeText;

  factory CopyWith$Query$searchFreeText.stub(TRes res) =
      _CopyWithStubImpl$Query$searchFreeText;

  TRes call({
    Query$searchFreeText$searchAssetsFreeText? searchAssetsFreeText,
    String? $__typename,
  });
  CopyWith$Query$searchFreeText$searchAssetsFreeText<TRes>
      get searchAssetsFreeText;
}

class _CopyWithImpl$Query$searchFreeText<TRes>
    implements CopyWith$Query$searchFreeText<TRes> {
  _CopyWithImpl$Query$searchFreeText(
    this._instance,
    this._then,
  );

  final Query$searchFreeText _instance;

  final TRes Function(Query$searchFreeText) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchAssetsFreeText = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$searchFreeText(
        searchAssetsFreeText: searchAssetsFreeText == _undefined
            ? _instance.searchAssetsFreeText
            : (searchAssetsFreeText
                as Query$searchFreeText$searchAssetsFreeText?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$searchFreeText$searchAssetsFreeText<TRes>
      get searchAssetsFreeText {
    final local$searchAssetsFreeText = _instance.searchAssetsFreeText;
    return local$searchAssetsFreeText == null
        ? CopyWith$Query$searchFreeText$searchAssetsFreeText.stub(
            _then(_instance))
        : CopyWith$Query$searchFreeText$searchAssetsFreeText(
            local$searchAssetsFreeText, (e) => call(searchAssetsFreeText: e));
  }
}

class _CopyWithStubImpl$Query$searchFreeText<TRes>
    implements CopyWith$Query$searchFreeText<TRes> {
  _CopyWithStubImpl$Query$searchFreeText(this._res);

  TRes _res;

  call({
    Query$searchFreeText$searchAssetsFreeText? searchAssetsFreeText,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$searchFreeText$searchAssetsFreeText<TRes>
      get searchAssetsFreeText =>
          CopyWith$Query$searchFreeText$searchAssetsFreeText.stub(_res);
}

const documentNodeQuerysearchFreeText = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'searchFreeText'),
    variableDefinitions: [
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
        variable: VariableNode(name: NameNode(value: 'before')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
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
        variable: VariableNode(name: NameNode(value: 'input')),
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
        name: NameNode(value: 'searchAssetsFreeText'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
          ArgumentNode(
            name: NameNode(value: 'before'),
            value: VariableNode(name: NameNode(value: 'before')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'last'),
            value: VariableNode(name: NameNode(value: 'last')),
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
                name: NameNode(value: 'assetType'),
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
                name: NameNode(value: 'code'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
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
                name: NameNode(value: 'serialNumber'),
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
                name: NameNode(value: 'approved'),
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

class Query$searchFreeText$searchAssetsFreeText {
  Query$searchFreeText$searchAssetsFreeText({
    required this.pageInfo,
    required this.totalCount,
    this.nodes,
    this.$__typename = 'SearchAssetsFreeTextConnection',
  });

  factory Query$searchFreeText$searchAssetsFreeText.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$totalCount = json['totalCount'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$searchFreeText$searchAssetsFreeText(
      pageInfo: Query$searchFreeText$searchAssetsFreeText$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      totalCount: (l$totalCount as int),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => Query$searchFreeText$searchAssetsFreeText$nodes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$searchFreeText$searchAssetsFreeText$pageInfo pageInfo;

  final int totalCount;

  final List<Query$searchFreeText$searchAssetsFreeText$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
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
    final l$pageInfo = pageInfo;
    final l$totalCount = totalCount;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
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
    if (!(other is Query$searchFreeText$searchAssetsFreeText) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$searchFreeText$searchAssetsFreeText
    on Query$searchFreeText$searchAssetsFreeText {
  CopyWith$Query$searchFreeText$searchAssetsFreeText<
          Query$searchFreeText$searchAssetsFreeText>
      get copyWith => CopyWith$Query$searchFreeText$searchAssetsFreeText(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$searchFreeText$searchAssetsFreeText<TRes> {
  factory CopyWith$Query$searchFreeText$searchAssetsFreeText(
    Query$searchFreeText$searchAssetsFreeText instance,
    TRes Function(Query$searchFreeText$searchAssetsFreeText) then,
  ) = _CopyWithImpl$Query$searchFreeText$searchAssetsFreeText;

  factory CopyWith$Query$searchFreeText$searchAssetsFreeText.stub(TRes res) =
      _CopyWithStubImpl$Query$searchFreeText$searchAssetsFreeText;

  TRes call({
    Query$searchFreeText$searchAssetsFreeText$pageInfo? pageInfo,
    int? totalCount,
    List<Query$searchFreeText$searchAssetsFreeText$nodes>? nodes,
    String? $__typename,
  });
  CopyWith$Query$searchFreeText$searchAssetsFreeText$pageInfo<TRes>
      get pageInfo;
  TRes nodes(
      Iterable<Query$searchFreeText$searchAssetsFreeText$nodes>? Function(
              Iterable<
                  CopyWith$Query$searchFreeText$searchAssetsFreeText$nodes<
                      Query$searchFreeText$searchAssetsFreeText$nodes>>?)
          _fn);
}

class _CopyWithImpl$Query$searchFreeText$searchAssetsFreeText<TRes>
    implements CopyWith$Query$searchFreeText$searchAssetsFreeText<TRes> {
  _CopyWithImpl$Query$searchFreeText$searchAssetsFreeText(
    this._instance,
    this._then,
  );

  final Query$searchFreeText$searchAssetsFreeText _instance;

  final TRes Function(Query$searchFreeText$searchAssetsFreeText) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? totalCount = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$searchFreeText$searchAssetsFreeText(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$searchFreeText$searchAssetsFreeText$pageInfo),
        totalCount: totalCount == _undefined || totalCount == null
            ? _instance.totalCount
            : (totalCount as int),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$searchFreeText$searchAssetsFreeText$nodes>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$searchFreeText$searchAssetsFreeText$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$searchFreeText$searchAssetsFreeText$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Query$searchFreeText$searchAssetsFreeText$nodes>? Function(
                  Iterable<
                      CopyWith$Query$searchFreeText$searchAssetsFreeText$nodes<
                          Query$searchFreeText$searchAssetsFreeText$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map(
              (e) => CopyWith$Query$searchFreeText$searchAssetsFreeText$nodes(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$searchFreeText$searchAssetsFreeText<TRes>
    implements CopyWith$Query$searchFreeText$searchAssetsFreeText<TRes> {
  _CopyWithStubImpl$Query$searchFreeText$searchAssetsFreeText(this._res);

  TRes _res;

  call({
    Query$searchFreeText$searchAssetsFreeText$pageInfo? pageInfo,
    int? totalCount,
    List<Query$searchFreeText$searchAssetsFreeText$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$searchFreeText$searchAssetsFreeText$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$searchFreeText$searchAssetsFreeText$pageInfo.stub(
              _res);

  nodes(_fn) => _res;
}

class Query$searchFreeText$searchAssetsFreeText$pageInfo {
  Query$searchFreeText$searchAssetsFreeText$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$searchFreeText$searchAssetsFreeText$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$searchFreeText$searchAssetsFreeText$pageInfo(
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
    if (!(other is Query$searchFreeText$searchAssetsFreeText$pageInfo) ||
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

extension UtilityExtension$Query$searchFreeText$searchAssetsFreeText$pageInfo
    on Query$searchFreeText$searchAssetsFreeText$pageInfo {
  CopyWith$Query$searchFreeText$searchAssetsFreeText$pageInfo<
          Query$searchFreeText$searchAssetsFreeText$pageInfo>
      get copyWith =>
          CopyWith$Query$searchFreeText$searchAssetsFreeText$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$searchFreeText$searchAssetsFreeText$pageInfo<
    TRes> {
  factory CopyWith$Query$searchFreeText$searchAssetsFreeText$pageInfo(
    Query$searchFreeText$searchAssetsFreeText$pageInfo instance,
    TRes Function(Query$searchFreeText$searchAssetsFreeText$pageInfo) then,
  ) = _CopyWithImpl$Query$searchFreeText$searchAssetsFreeText$pageInfo;

  factory CopyWith$Query$searchFreeText$searchAssetsFreeText$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$searchFreeText$searchAssetsFreeText$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchFreeText$searchAssetsFreeText$pageInfo<TRes>
    implements
        CopyWith$Query$searchFreeText$searchAssetsFreeText$pageInfo<TRes> {
  _CopyWithImpl$Query$searchFreeText$searchAssetsFreeText$pageInfo(
    this._instance,
    this._then,
  );

  final Query$searchFreeText$searchAssetsFreeText$pageInfo _instance;

  final TRes Function(Query$searchFreeText$searchAssetsFreeText$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$searchFreeText$searchAssetsFreeText$pageInfo(
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

class _CopyWithStubImpl$Query$searchFreeText$searchAssetsFreeText$pageInfo<TRes>
    implements
        CopyWith$Query$searchFreeText$searchAssetsFreeText$pageInfo<TRes> {
  _CopyWithStubImpl$Query$searchFreeText$searchAssetsFreeText$pageInfo(
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

class Query$searchFreeText$searchAssetsFreeText$nodes {
  Query$searchFreeText$searchAssetsFreeText$nodes({
    required this.assetType,
    required this.status,
    required this.code,
    this.name,
    required this.make,
    this.model,
    this.serialNumber,
    required this.depotNo,
    required this.approved,
    this.$__typename = 'AssetSearchResult',
  });

  factory Query$searchFreeText$searchAssetsFreeText$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$assetType = json['assetType'];
    final l$status = json['status'];
    final l$code = json['code'];
    final l$name = json['name'];
    final l$make = json['make'];
    final l$model = json['model'];
    final l$serialNumber = json['serialNumber'];
    final l$depotNo = json['depotNo'];
    final l$approved = json['approved'];
    final l$$__typename = json['__typename'];
    return Query$searchFreeText$searchAssetsFreeText$nodes(
      assetType: (l$assetType as String),
      status: (l$status as String),
      code: (l$code as String),
      name: (l$name as String?),
      make: (l$make as String),
      model: (l$model as String?),
      serialNumber: (l$serialNumber as String?),
      depotNo: (l$depotNo as String),
      approved: (l$approved as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String assetType;

  final String status;

  final String code;

  final String? name;

  final String make;

  final String? model;

  final String? serialNumber;

  final String depotNo;

  final bool approved;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$assetType = assetType;
    _resultData['assetType'] = l$assetType;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$make = make;
    _resultData['make'] = l$make;
    final l$model = model;
    _resultData['model'] = l$model;
    final l$serialNumber = serialNumber;
    _resultData['serialNumber'] = l$serialNumber;
    final l$depotNo = depotNo;
    _resultData['depotNo'] = l$depotNo;
    final l$approved = approved;
    _resultData['approved'] = l$approved;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$assetType = assetType;
    final l$status = status;
    final l$code = code;
    final l$name = name;
    final l$make = make;
    final l$model = model;
    final l$serialNumber = serialNumber;
    final l$depotNo = depotNo;
    final l$approved = approved;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$assetType,
      l$status,
      l$code,
      l$name,
      l$make,
      l$model,
      l$serialNumber,
      l$depotNo,
      l$approved,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$searchFreeText$searchAssetsFreeText$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$assetType = assetType;
    final lOther$assetType = other.assetType;
    if (l$assetType != lOther$assetType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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
    final l$serialNumber = serialNumber;
    final lOther$serialNumber = other.serialNumber;
    if (l$serialNumber != lOther$serialNumber) {
      return false;
    }
    final l$depotNo = depotNo;
    final lOther$depotNo = other.depotNo;
    if (l$depotNo != lOther$depotNo) {
      return false;
    }
    final l$approved = approved;
    final lOther$approved = other.approved;
    if (l$approved != lOther$approved) {
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

extension UtilityExtension$Query$searchFreeText$searchAssetsFreeText$nodes
    on Query$searchFreeText$searchAssetsFreeText$nodes {
  CopyWith$Query$searchFreeText$searchAssetsFreeText$nodes<
          Query$searchFreeText$searchAssetsFreeText$nodes>
      get copyWith => CopyWith$Query$searchFreeText$searchAssetsFreeText$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$searchFreeText$searchAssetsFreeText$nodes<TRes> {
  factory CopyWith$Query$searchFreeText$searchAssetsFreeText$nodes(
    Query$searchFreeText$searchAssetsFreeText$nodes instance,
    TRes Function(Query$searchFreeText$searchAssetsFreeText$nodes) then,
  ) = _CopyWithImpl$Query$searchFreeText$searchAssetsFreeText$nodes;

  factory CopyWith$Query$searchFreeText$searchAssetsFreeText$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$searchFreeText$searchAssetsFreeText$nodes;

  TRes call({
    String? assetType,
    String? status,
    String? code,
    String? name,
    String? make,
    String? model,
    String? serialNumber,
    String? depotNo,
    bool? approved,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$searchFreeText$searchAssetsFreeText$nodes<TRes>
    implements CopyWith$Query$searchFreeText$searchAssetsFreeText$nodes<TRes> {
  _CopyWithImpl$Query$searchFreeText$searchAssetsFreeText$nodes(
    this._instance,
    this._then,
  );

  final Query$searchFreeText$searchAssetsFreeText$nodes _instance;

  final TRes Function(Query$searchFreeText$searchAssetsFreeText$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? assetType = _undefined,
    Object? status = _undefined,
    Object? code = _undefined,
    Object? name = _undefined,
    Object? make = _undefined,
    Object? model = _undefined,
    Object? serialNumber = _undefined,
    Object? depotNo = _undefined,
    Object? approved = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$searchFreeText$searchAssetsFreeText$nodes(
        assetType: assetType == _undefined || assetType == null
            ? _instance.assetType
            : (assetType as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as String),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        name: name == _undefined ? _instance.name : (name as String?),
        make: make == _undefined || make == null
            ? _instance.make
            : (make as String),
        model: model == _undefined ? _instance.model : (model as String?),
        serialNumber: serialNumber == _undefined
            ? _instance.serialNumber
            : (serialNumber as String?),
        depotNo: depotNo == _undefined || depotNo == null
            ? _instance.depotNo
            : (depotNo as String),
        approved: approved == _undefined || approved == null
            ? _instance.approved
            : (approved as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$searchFreeText$searchAssetsFreeText$nodes<TRes>
    implements CopyWith$Query$searchFreeText$searchAssetsFreeText$nodes<TRes> {
  _CopyWithStubImpl$Query$searchFreeText$searchAssetsFreeText$nodes(this._res);

  TRes _res;

  call({
    String? assetType,
    String? status,
    String? code,
    String? name,
    String? make,
    String? model,
    String? serialNumber,
    String? depotNo,
    bool? approved,
    String? $__typename,
  }) =>
      _res;
}
