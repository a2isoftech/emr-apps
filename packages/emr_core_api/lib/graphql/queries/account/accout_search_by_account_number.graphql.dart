import 'package:gql/ast.dart';

class Variables$Query$AccountSearchByAccountNumber {
  factory Variables$Query$AccountSearchByAccountNumber({
    required String input,
  }) => Variables$Query$AccountSearchByAccountNumber._({r'input': input});

  Variables$Query$AccountSearchByAccountNumber._(this._$data);

  factory Variables$Query$AccountSearchByAccountNumber.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = (l$input as String);
    return Variables$Query$AccountSearchByAccountNumber._(result$data);
  }

  Map<String, dynamic> _$data;

  String get input => (_$data['input'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input;
    return result$data;
  }

  CopyWith$Variables$Query$AccountSearchByAccountNumber<
    Variables$Query$AccountSearchByAccountNumber
  >
  get copyWith =>
      CopyWith$Variables$Query$AccountSearchByAccountNumber(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$AccountSearchByAccountNumber ||
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

abstract class CopyWith$Variables$Query$AccountSearchByAccountNumber<TRes> {
  factory CopyWith$Variables$Query$AccountSearchByAccountNumber(
    Variables$Query$AccountSearchByAccountNumber instance,
    TRes Function(Variables$Query$AccountSearchByAccountNumber) then,
  ) = _CopyWithImpl$Variables$Query$AccountSearchByAccountNumber;

  factory CopyWith$Variables$Query$AccountSearchByAccountNumber.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$AccountSearchByAccountNumber;

  TRes call({String? input});
}

class _CopyWithImpl$Variables$Query$AccountSearchByAccountNumber<TRes>
    implements CopyWith$Variables$Query$AccountSearchByAccountNumber<TRes> {
  _CopyWithImpl$Variables$Query$AccountSearchByAccountNumber(
    this._instance,
    this._then,
  );

  final Variables$Query$AccountSearchByAccountNumber _instance;

  final TRes Function(Variables$Query$AccountSearchByAccountNumber) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$AccountSearchByAccountNumber._({
      ..._instance._$data,
      if (input != _undefined && input != null) 'input': (input as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$AccountSearchByAccountNumber<TRes>
    implements CopyWith$Variables$Query$AccountSearchByAccountNumber<TRes> {
  _CopyWithStubImpl$Variables$Query$AccountSearchByAccountNumber(this._res);

  TRes _res;

  call({String? input}) => _res;
}

class Query$AccountSearchByAccountNumber {
  Query$AccountSearchByAccountNumber({
    this.searchAccountsByAccountNumber,
    this.$__typename = 'Query',
  });

  factory Query$AccountSearchByAccountNumber.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$searchAccountsByAccountNumber =
        json['searchAccountsByAccountNumber'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearchByAccountNumber(
      searchAccountsByAccountNumber: l$searchAccountsByAccountNumber == null
          ? null
          : Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber.fromJson(
              (l$searchAccountsByAccountNumber as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber?
  searchAccountsByAccountNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchAccountsByAccountNumber = searchAccountsByAccountNumber;
    _resultData['searchAccountsByAccountNumber'] =
        l$searchAccountsByAccountNumber?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchAccountsByAccountNumber = searchAccountsByAccountNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([l$searchAccountsByAccountNumber, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AccountSearchByAccountNumber ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchAccountsByAccountNumber = searchAccountsByAccountNumber;
    final lOther$searchAccountsByAccountNumber =
        other.searchAccountsByAccountNumber;
    if (l$searchAccountsByAccountNumber !=
        lOther$searchAccountsByAccountNumber) {
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

extension UtilityExtension$Query$AccountSearchByAccountNumber
    on Query$AccountSearchByAccountNumber {
  CopyWith$Query$AccountSearchByAccountNumber<
    Query$AccountSearchByAccountNumber
  >
  get copyWith => CopyWith$Query$AccountSearchByAccountNumber(this, (i) => i);
}

abstract class CopyWith$Query$AccountSearchByAccountNumber<TRes> {
  factory CopyWith$Query$AccountSearchByAccountNumber(
    Query$AccountSearchByAccountNumber instance,
    TRes Function(Query$AccountSearchByAccountNumber) then,
  ) = _CopyWithImpl$Query$AccountSearchByAccountNumber;

  factory CopyWith$Query$AccountSearchByAccountNumber.stub(TRes res) =
      _CopyWithStubImpl$Query$AccountSearchByAccountNumber;

  TRes call({
    Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber?
    searchAccountsByAccountNumber,
    String? $__typename,
  });
  CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber<
    TRes
  >
  get searchAccountsByAccountNumber;
}

class _CopyWithImpl$Query$AccountSearchByAccountNumber<TRes>
    implements CopyWith$Query$AccountSearchByAccountNumber<TRes> {
  _CopyWithImpl$Query$AccountSearchByAccountNumber(this._instance, this._then);

  final Query$AccountSearchByAccountNumber _instance;

  final TRes Function(Query$AccountSearchByAccountNumber) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchAccountsByAccountNumber = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearchByAccountNumber(
      searchAccountsByAccountNumber: searchAccountsByAccountNumber == _undefined
          ? _instance.searchAccountsByAccountNumber
          : (searchAccountsByAccountNumber
                as Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber<
    TRes
  >
  get searchAccountsByAccountNumber {
    final local$searchAccountsByAccountNumber =
        _instance.searchAccountsByAccountNumber;
    return local$searchAccountsByAccountNumber == null
        ? CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber.stub(
            _then(_instance),
          )
        : CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber(
            local$searchAccountsByAccountNumber,
            (e) => call(searchAccountsByAccountNumber: e),
          );
  }
}

class _CopyWithStubImpl$Query$AccountSearchByAccountNumber<TRes>
    implements CopyWith$Query$AccountSearchByAccountNumber<TRes> {
  _CopyWithStubImpl$Query$AccountSearchByAccountNumber(this._res);

  TRes _res;

  call({
    Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber?
    searchAccountsByAccountNumber,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber<
    TRes
  >
  get searchAccountsByAccountNumber =>
      CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber.stub(
        _res,
      );
}

const documentNodeQueryAccountSearchByAccountNumber = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'AccountSearchByAccountNumber'),
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
            name: NameNode(value: 'searchAccountsByAccountNumber'),
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
                        name: NameNode(value: 'code'),
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

class Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber {
  Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber({
    this.nodes,
    this.$__typename = 'SearchAccountsByAccountNumberConnection',
  });

  factory Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) =>
                Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes
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
            is! Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber ||
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

extension UtilityExtension$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber
    on Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber {
  CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber<
    Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber
  >
  get copyWith =>
      CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber<
  TRes
> {
  factory CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber(
    Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber instance,
    TRes Function(
      Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber,
    )
    then,
  ) = _CopyWithImpl$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber;

  factory CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber;

  TRes call({
    List<
      Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes
    >?
    Function(
      Iterable<
        CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes<
          Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber<
  TRes
>
    implements
        CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber<
          TRes
        > {
  _CopyWithImpl$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber(
    this._instance,
    this._then,
  );

  final Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber
  _instance;

  final TRes Function(
    Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber(
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes
                as List<
                  Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes
    >?
    Function(
      Iterable<
        CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes<
          Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) =>
            CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber<
  TRes
>
    implements
        CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes {
  Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes({
    required this.id,
    required this.code,
    this.$__typename = 'Account',
  });

  factory Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes(
      id: (l$id as String),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$code, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes
    on Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes {
  CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes<
    Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes
  >
  get copyWith =>
      CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes<
  TRes
> {
  factory CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes(
    Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes
    instance,
    TRes Function(
      Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes;

  factory CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes;

  TRes call({String? id, String? code, String? $__typename});
}

class _CopyWithImpl$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes<
  TRes
>
    implements
        CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes<
          TRes
        > {
  _CopyWithImpl$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes(
    this._instance,
    this._then,
  );

  final Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes
  _instance;

  final TRes Function(
    Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes<
  TRes
>
    implements
        CopyWith$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$AccountSearchByAccountNumber$searchAccountsByAccountNumber$nodes(
    this._res,
  );

  TRes _res;

  call({String? id, String? code, String? $__typename}) => _res;
}
