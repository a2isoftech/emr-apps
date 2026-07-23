import 'package:gql/ast.dart';

class Variables$Query$AccountSearchByAccountName {
  factory Variables$Query$AccountSearchByAccountName({required String input}) =>
      Variables$Query$AccountSearchByAccountName._({r'input': input});

  Variables$Query$AccountSearchByAccountName._(this._$data);

  factory Variables$Query$AccountSearchByAccountName.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = (l$input as String);
    return Variables$Query$AccountSearchByAccountName._(result$data);
  }

  Map<String, dynamic> _$data;

  String get input => (_$data['input'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input;
    return result$data;
  }

  CopyWith$Variables$Query$AccountSearchByAccountName<
    Variables$Query$AccountSearchByAccountName
  >
  get copyWith =>
      CopyWith$Variables$Query$AccountSearchByAccountName(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$AccountSearchByAccountName ||
        runtimeType != other.runtimeType) {
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
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Query$AccountSearchByAccountName<TRes> {
  factory CopyWith$Variables$Query$AccountSearchByAccountName(
    Variables$Query$AccountSearchByAccountName instance,
    TRes Function(Variables$Query$AccountSearchByAccountName) then,
  ) = _CopyWithImpl$Variables$Query$AccountSearchByAccountName;

  factory CopyWith$Variables$Query$AccountSearchByAccountName.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$AccountSearchByAccountName;

  TRes call({String? input});
}

class _CopyWithImpl$Variables$Query$AccountSearchByAccountName<TRes>
    implements CopyWith$Variables$Query$AccountSearchByAccountName<TRes> {
  _CopyWithImpl$Variables$Query$AccountSearchByAccountName(
    this._instance,
    this._then,
  );

  final Variables$Query$AccountSearchByAccountName _instance;

  final TRes Function(Variables$Query$AccountSearchByAccountName) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$AccountSearchByAccountName._({
      ..._instance._$data,
      if (input != _undefined && input != null) 'input': (input as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$AccountSearchByAccountName<TRes>
    implements CopyWith$Variables$Query$AccountSearchByAccountName<TRes> {
  _CopyWithStubImpl$Variables$Query$AccountSearchByAccountName(this._res);

  TRes _res;

  call({String? input}) => _res;
}

class Query$AccountSearchByAccountName {
  Query$AccountSearchByAccountName({
    this.searchAccountsByAccountName,
    this.$__typename = 'Query',
  });

  factory Query$AccountSearchByAccountName.fromJson(Map<String, dynamic> json) {
    final l$searchAccountsByAccountName = json['searchAccountsByAccountName'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearchByAccountName(
      searchAccountsByAccountName: l$searchAccountsByAccountName == null
          ? null
          : Query$AccountSearchByAccountName$searchAccountsByAccountName.fromJson(
              (l$searchAccountsByAccountName as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AccountSearchByAccountName$searchAccountsByAccountName?
  searchAccountsByAccountName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchAccountsByAccountName = searchAccountsByAccountName;
    _resultData['searchAccountsByAccountName'] = l$searchAccountsByAccountName
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchAccountsByAccountName = searchAccountsByAccountName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchAccountsByAccountName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AccountSearchByAccountName ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchAccountsByAccountName = searchAccountsByAccountName;
    final lOther$searchAccountsByAccountName =
        other.searchAccountsByAccountName;
    if (l$searchAccountsByAccountName != lOther$searchAccountsByAccountName) {
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

extension UtilityExtension$Query$AccountSearchByAccountName
    on Query$AccountSearchByAccountName {
  CopyWith$Query$AccountSearchByAccountName<Query$AccountSearchByAccountName>
  get copyWith => CopyWith$Query$AccountSearchByAccountName(this, (i) => i);
}

abstract class CopyWith$Query$AccountSearchByAccountName<TRes> {
  factory CopyWith$Query$AccountSearchByAccountName(
    Query$AccountSearchByAccountName instance,
    TRes Function(Query$AccountSearchByAccountName) then,
  ) = _CopyWithImpl$Query$AccountSearchByAccountName;

  factory CopyWith$Query$AccountSearchByAccountName.stub(TRes res) =
      _CopyWithStubImpl$Query$AccountSearchByAccountName;

  TRes call({
    Query$AccountSearchByAccountName$searchAccountsByAccountName?
    searchAccountsByAccountName,
    String? $__typename,
  });
  CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName<TRes>
  get searchAccountsByAccountName;
}

class _CopyWithImpl$Query$AccountSearchByAccountName<TRes>
    implements CopyWith$Query$AccountSearchByAccountName<TRes> {
  _CopyWithImpl$Query$AccountSearchByAccountName(this._instance, this._then);

  final Query$AccountSearchByAccountName _instance;

  final TRes Function(Query$AccountSearchByAccountName) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchAccountsByAccountName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearchByAccountName(
      searchAccountsByAccountName: searchAccountsByAccountName == _undefined
          ? _instance.searchAccountsByAccountName
          : (searchAccountsByAccountName
                as Query$AccountSearchByAccountName$searchAccountsByAccountName?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName<TRes>
  get searchAccountsByAccountName {
    final local$searchAccountsByAccountName =
        _instance.searchAccountsByAccountName;
    return local$searchAccountsByAccountName == null
        ? CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName.stub(
            _then(_instance),
          )
        : CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName(
            local$searchAccountsByAccountName,
            (e) => call(searchAccountsByAccountName: e),
          );
  }
}

class _CopyWithStubImpl$Query$AccountSearchByAccountName<TRes>
    implements CopyWith$Query$AccountSearchByAccountName<TRes> {
  _CopyWithStubImpl$Query$AccountSearchByAccountName(this._res);

  TRes _res;

  call({
    Query$AccountSearchByAccountName$searchAccountsByAccountName?
    searchAccountsByAccountName,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName<TRes>
  get searchAccountsByAccountName =>
      CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName.stub(
        _res,
      );
}

const documentNodeQueryAccountSearchByAccountName = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'AccountSearchByAccountName'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'searchAccountsByAccountName'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '500'),
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
                        name: NameNode(value: 'name'),
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

class Query$AccountSearchByAccountName$searchAccountsByAccountName {
  Query$AccountSearchByAccountName$searchAccountsByAccountName({
    this.nodes,
    this.$__typename = 'SearchAccountsByAccountNameConnection',
  });

  factory Query$AccountSearchByAccountName$searchAccountsByAccountName.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearchByAccountName$searchAccountsByAccountName(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) =>
                Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes
  >?
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountSearchByAccountName$searchAccountsByAccountName ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AccountSearchByAccountName$searchAccountsByAccountName
    on Query$AccountSearchByAccountName$searchAccountsByAccountName {
  CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName<
    Query$AccountSearchByAccountName$searchAccountsByAccountName
  >
  get copyWith =>
      CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName<
  TRes
> {
  factory CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName(
    Query$AccountSearchByAccountName$searchAccountsByAccountName instance,
    TRes Function(Query$AccountSearchByAccountName$searchAccountsByAccountName)
    then,
  ) = _CopyWithImpl$Query$AccountSearchByAccountName$searchAccountsByAccountName;

  factory CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearchByAccountName$searchAccountsByAccountName;

  TRes call({
    List<Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes>?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes
    >?
    Function(
      Iterable<
        CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes<
          Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$AccountSearchByAccountName$searchAccountsByAccountName<
  TRes
>
    implements
        CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName<
          TRes
        > {
  _CopyWithImpl$Query$AccountSearchByAccountName$searchAccountsByAccountName(
    this._instance,
    this._then,
  );

  final Query$AccountSearchByAccountName$searchAccountsByAccountName _instance;

  final TRes Function(
    Query$AccountSearchByAccountName$searchAccountsByAccountName,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearchByAccountName$searchAccountsByAccountName(
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes
                as List<
                  Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes
    >?
    Function(
      Iterable<
        CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes<
          Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) =>
            CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$AccountSearchByAccountName$searchAccountsByAccountName<
  TRes
>
    implements
        CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountSearchByAccountName$searchAccountsByAccountName(
    this._res,
  );

  TRes _res;

  call({
    List<Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes>?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes {
  Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes({
    required this.id,
    required this.name,
    this.$__typename = 'Account',
  });

  factory Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes
    on Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes {
  CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes<
    Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes
  >
  get copyWith =>
      CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes<
  TRes
> {
  factory CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes(
    Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes instance,
    TRes Function(
      Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes;

  factory CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes<
  TRes
>
    implements
        CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes<
          TRes
        > {
  _CopyWithImpl$Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes(
    this._instance,
    this._then,
  );

  final Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes
  _instance;

  final TRes Function(
    Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes<
  TRes
>
    implements
        CopyWith$Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountSearchByAccountName$searchAccountsByAccountName$nodes(
    this._res,
  );

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}
