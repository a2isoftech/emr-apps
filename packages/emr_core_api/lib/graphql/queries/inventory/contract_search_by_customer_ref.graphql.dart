import 'package:gql/ast.dart';

class Variables$Query$ContractSearchByCustomerRef {
  factory Variables$Query$ContractSearchByCustomerRef({
    required String input,
  }) => Variables$Query$ContractSearchByCustomerRef._({r'input': input});

  Variables$Query$ContractSearchByCustomerRef._(this._$data);

  factory Variables$Query$ContractSearchByCustomerRef.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = (l$input as String);
    return Variables$Query$ContractSearchByCustomerRef._(result$data);
  }

  Map<String, dynamic> _$data;

  String get input => (_$data['input'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input;
    return result$data;
  }

  CopyWith$Variables$Query$ContractSearchByCustomerRef<
    Variables$Query$ContractSearchByCustomerRef
  >
  get copyWith =>
      CopyWith$Variables$Query$ContractSearchByCustomerRef(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ContractSearchByCustomerRef ||
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

abstract class CopyWith$Variables$Query$ContractSearchByCustomerRef<TRes> {
  factory CopyWith$Variables$Query$ContractSearchByCustomerRef(
    Variables$Query$ContractSearchByCustomerRef instance,
    TRes Function(Variables$Query$ContractSearchByCustomerRef) then,
  ) = _CopyWithImpl$Variables$Query$ContractSearchByCustomerRef;

  factory CopyWith$Variables$Query$ContractSearchByCustomerRef.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ContractSearchByCustomerRef;

  TRes call({String? input});
}

class _CopyWithImpl$Variables$Query$ContractSearchByCustomerRef<TRes>
    implements CopyWith$Variables$Query$ContractSearchByCustomerRef<TRes> {
  _CopyWithImpl$Variables$Query$ContractSearchByCustomerRef(
    this._instance,
    this._then,
  );

  final Variables$Query$ContractSearchByCustomerRef _instance;

  final TRes Function(Variables$Query$ContractSearchByCustomerRef) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$ContractSearchByCustomerRef._({
      ..._instance._$data,
      if (input != _undefined && input != null) 'input': (input as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ContractSearchByCustomerRef<TRes>
    implements CopyWith$Variables$Query$ContractSearchByCustomerRef<TRes> {
  _CopyWithStubImpl$Variables$Query$ContractSearchByCustomerRef(this._res);

  TRes _res;

  call({String? input}) => _res;
}

class Query$ContractSearchByCustomerRef {
  Query$ContractSearchByCustomerRef({
    this.searchContractsByCustomerReference,
    this.$__typename = 'Query',
  });

  factory Query$ContractSearchByCustomerRef.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$searchContractsByCustomerReference =
        json['searchContractsByCustomerReference'];
    final l$$__typename = json['__typename'];
    return Query$ContractSearchByCustomerRef(
      searchContractsByCustomerReference:
          l$searchContractsByCustomerReference == null
          ? null
          : Query$ContractSearchByCustomerRef$searchContractsByCustomerReference.fromJson(
              (l$searchContractsByCustomerReference as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ContractSearchByCustomerRef$searchContractsByCustomerReference?
  searchContractsByCustomerReference;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchContractsByCustomerReference =
        searchContractsByCustomerReference;
    _resultData['searchContractsByCustomerReference'] =
        l$searchContractsByCustomerReference?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchContractsByCustomerReference =
        searchContractsByCustomerReference;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$searchContractsByCustomerReference,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ContractSearchByCustomerRef ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchContractsByCustomerReference =
        searchContractsByCustomerReference;
    final lOther$searchContractsByCustomerReference =
        other.searchContractsByCustomerReference;
    if (l$searchContractsByCustomerReference !=
        lOther$searchContractsByCustomerReference) {
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

extension UtilityExtension$Query$ContractSearchByCustomerRef
    on Query$ContractSearchByCustomerRef {
  CopyWith$Query$ContractSearchByCustomerRef<Query$ContractSearchByCustomerRef>
  get copyWith => CopyWith$Query$ContractSearchByCustomerRef(this, (i) => i);
}

abstract class CopyWith$Query$ContractSearchByCustomerRef<TRes> {
  factory CopyWith$Query$ContractSearchByCustomerRef(
    Query$ContractSearchByCustomerRef instance,
    TRes Function(Query$ContractSearchByCustomerRef) then,
  ) = _CopyWithImpl$Query$ContractSearchByCustomerRef;

  factory CopyWith$Query$ContractSearchByCustomerRef.stub(TRes res) =
      _CopyWithStubImpl$Query$ContractSearchByCustomerRef;

  TRes call({
    Query$ContractSearchByCustomerRef$searchContractsByCustomerReference?
    searchContractsByCustomerReference,
    String? $__typename,
  });
  CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference<
    TRes
  >
  get searchContractsByCustomerReference;
}

class _CopyWithImpl$Query$ContractSearchByCustomerRef<TRes>
    implements CopyWith$Query$ContractSearchByCustomerRef<TRes> {
  _CopyWithImpl$Query$ContractSearchByCustomerRef(this._instance, this._then);

  final Query$ContractSearchByCustomerRef _instance;

  final TRes Function(Query$ContractSearchByCustomerRef) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchContractsByCustomerReference = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ContractSearchByCustomerRef(
      searchContractsByCustomerReference:
          searchContractsByCustomerReference == _undefined
          ? _instance.searchContractsByCustomerReference
          : (searchContractsByCustomerReference
                as Query$ContractSearchByCustomerRef$searchContractsByCustomerReference?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference<
    TRes
  >
  get searchContractsByCustomerReference {
    final local$searchContractsByCustomerReference =
        _instance.searchContractsByCustomerReference;
    return local$searchContractsByCustomerReference == null
        ? CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference.stub(
            _then(_instance),
          )
        : CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference(
            local$searchContractsByCustomerReference,
            (e) => call(searchContractsByCustomerReference: e),
          );
  }
}

class _CopyWithStubImpl$Query$ContractSearchByCustomerRef<TRes>
    implements CopyWith$Query$ContractSearchByCustomerRef<TRes> {
  _CopyWithStubImpl$Query$ContractSearchByCustomerRef(this._res);

  TRes _res;

  call({
    Query$ContractSearchByCustomerRef$searchContractsByCustomerReference?
    searchContractsByCustomerReference,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference<
    TRes
  >
  get searchContractsByCustomerReference =>
      CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference.stub(
        _res,
      );
}

const documentNodeQueryContractSearchByCustomerRef = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ContractSearchByCustomerRef'),
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
            name: NameNode(value: 'searchContractsByCustomerReference'),
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
                        name: NameNode(value: 'customerReference'),
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

class Query$ContractSearchByCustomerRef$searchContractsByCustomerReference {
  Query$ContractSearchByCustomerRef$searchContractsByCustomerReference({
    this.nodes,
    this.$__typename = 'SearchContractsByCustomerReferenceConnection',
  });

  factory Query$ContractSearchByCustomerRef$searchContractsByCustomerReference.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ContractSearchByCustomerRef$searchContractsByCustomerReference(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) =>
                Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes
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
            is! Query$ContractSearchByCustomerRef$searchContractsByCustomerReference ||
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

extension UtilityExtension$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference
    on Query$ContractSearchByCustomerRef$searchContractsByCustomerReference {
  CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference<
    Query$ContractSearchByCustomerRef$searchContractsByCustomerReference
  >
  get copyWith =>
      CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference<
  TRes
> {
  factory CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference(
    Query$ContractSearchByCustomerRef$searchContractsByCustomerReference
    instance,
    TRes Function(
      Query$ContractSearchByCustomerRef$searchContractsByCustomerReference,
    )
    then,
  ) = _CopyWithImpl$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference;

  factory CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference;

  TRes call({
    List<
      Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes
    >?
    Function(
      Iterable<
        CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes<
          Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference<
  TRes
>
    implements
        CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference<
          TRes
        > {
  _CopyWithImpl$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference(
    this._instance,
    this._then,
  );

  final Query$ContractSearchByCustomerRef$searchContractsByCustomerReference
  _instance;

  final TRes Function(
    Query$ContractSearchByCustomerRef$searchContractsByCustomerReference,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ContractSearchByCustomerRef$searchContractsByCustomerReference(
      nodes: nodes == _undefined
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes
                >?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes
    >?
    Function(
      Iterable<
        CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes<
          Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) =>
            CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference<
  TRes
>
    implements
        CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference<
          TRes
        > {
  _CopyWithStubImpl$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes {
  Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes({
    required this.customerReference,
    this.$__typename = 'Contract',
  });

  factory Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$customerReference = json['customerReference'];
    final l$$__typename = json['__typename'];
    return Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes(
      customerReference: (l$customerReference as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String customerReference;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$customerReference = customerReference;
    _resultData['customerReference'] = l$customerReference;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$customerReference = customerReference;
    final l$$__typename = $__typename;
    return Object.hashAll([l$customerReference, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$customerReference = customerReference;
    final lOther$customerReference = other.customerReference;
    if (l$customerReference != lOther$customerReference) {
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

extension UtilityExtension$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes
    on Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes {
  CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes<
    Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes
  >
  get copyWith =>
      CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes<
  TRes
> {
  factory CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes(
    Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes
    instance,
    TRes Function(
      Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes;

  factory CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes;

  TRes call({String? customerReference, String? $__typename});
}

class _CopyWithImpl$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes<
  TRes
>
    implements
        CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes(
    this._instance,
    this._then,
  );

  final Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes
  _instance;

  final TRes Function(
    Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? customerReference = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes(
      customerReference:
          customerReference == _undefined || customerReference == null
          ? _instance.customerReference
          : (customerReference as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes<
  TRes
>
    implements
        CopyWith$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ContractSearchByCustomerRef$searchContractsByCustomerReference$nodes(
    this._res,
  );

  TRes _res;

  call({String? customerReference, String? $__typename}) => _res;
}
