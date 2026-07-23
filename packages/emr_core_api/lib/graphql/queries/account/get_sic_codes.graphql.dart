import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetSicCodes {
  factory Variables$Query$GetSicCodes({
    required int first,
    Input$SicCodeFilterInput? where,
  }) => Variables$Query$GetSicCodes._({
    r'first': first,
    if (where != null) r'where': where,
  });

  Variables$Query$GetSicCodes._(this._$data);

  factory Variables$Query$GetSicCodes.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$first = data['first'];
    result$data['first'] = (l$first as int);
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$SicCodeFilterInput.fromJson(
              (l$where as Map<String, dynamic>),
            );
    }
    return Variables$Query$GetSicCodes._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  Input$SicCodeFilterInput? get where =>
      (_$data['where'] as Input$SicCodeFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$first = first;
    result$data['first'] = l$first;
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetSicCodes<Variables$Query$GetSicCodes>
  get copyWith => CopyWith$Variables$Query$GetSicCodes(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetSicCodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$first = first;
    final l$where = where;
    return Object.hashAll([
      l$first,
      _$data.containsKey('where') ? l$where : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetSicCodes<TRes> {
  factory CopyWith$Variables$Query$GetSicCodes(
    Variables$Query$GetSicCodes instance,
    TRes Function(Variables$Query$GetSicCodes) then,
  ) = _CopyWithImpl$Variables$Query$GetSicCodes;

  factory CopyWith$Variables$Query$GetSicCodes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetSicCodes;

  TRes call({int? first, Input$SicCodeFilterInput? where});
}

class _CopyWithImpl$Variables$Query$GetSicCodes<TRes>
    implements CopyWith$Variables$Query$GetSicCodes<TRes> {
  _CopyWithImpl$Variables$Query$GetSicCodes(this._instance, this._then);

  final Variables$Query$GetSicCodes _instance;

  final TRes Function(Variables$Query$GetSicCodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? first = _undefined, Object? where = _undefined}) => _then(
    Variables$Query$GetSicCodes._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (where != _undefined) 'where': (where as Input$SicCodeFilterInput?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetSicCodes<TRes>
    implements CopyWith$Variables$Query$GetSicCodes<TRes> {
  _CopyWithStubImpl$Variables$Query$GetSicCodes(this._res);

  TRes _res;

  call({int? first, Input$SicCodeFilterInput? where}) => _res;
}

class Query$GetSicCodes {
  Query$GetSicCodes({this.sicCodes, this.$__typename = 'Query'});

  factory Query$GetSicCodes.fromJson(Map<String, dynamic> json) {
    final l$sicCodes = json['sicCodes'];
    final l$$__typename = json['__typename'];
    return Query$GetSicCodes(
      sicCodes: l$sicCodes == null
          ? null
          : Query$GetSicCodes$sicCodes.fromJson(
              (l$sicCodes as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSicCodes$sicCodes? sicCodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sicCodes = sicCodes;
    _resultData['sicCodes'] = l$sicCodes?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sicCodes = sicCodes;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sicCodes, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetSicCodes || runtimeType != other.runtimeType) {
      return false;
    }
    final l$sicCodes = sicCodes;
    final lOther$sicCodes = other.sicCodes;
    if (l$sicCodes != lOther$sicCodes) {
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

extension UtilityExtension$Query$GetSicCodes on Query$GetSicCodes {
  CopyWith$Query$GetSicCodes<Query$GetSicCodes> get copyWith =>
      CopyWith$Query$GetSicCodes(this, (i) => i);
}

abstract class CopyWith$Query$GetSicCodes<TRes> {
  factory CopyWith$Query$GetSicCodes(
    Query$GetSicCodes instance,
    TRes Function(Query$GetSicCodes) then,
  ) = _CopyWithImpl$Query$GetSicCodes;

  factory CopyWith$Query$GetSicCodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSicCodes;

  TRes call({Query$GetSicCodes$sicCodes? sicCodes, String? $__typename});
  CopyWith$Query$GetSicCodes$sicCodes<TRes> get sicCodes;
}

class _CopyWithImpl$Query$GetSicCodes<TRes>
    implements CopyWith$Query$GetSicCodes<TRes> {
  _CopyWithImpl$Query$GetSicCodes(this._instance, this._then);

  final Query$GetSicCodes _instance;

  final TRes Function(Query$GetSicCodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sicCodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSicCodes(
      sicCodes: sicCodes == _undefined
          ? _instance.sicCodes
          : (sicCodes as Query$GetSicCodes$sicCodes?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetSicCodes$sicCodes<TRes> get sicCodes {
    final local$sicCodes = _instance.sicCodes;
    return local$sicCodes == null
        ? CopyWith$Query$GetSicCodes$sicCodes.stub(_then(_instance))
        : CopyWith$Query$GetSicCodes$sicCodes(
            local$sicCodes,
            (e) => call(sicCodes: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetSicCodes<TRes>
    implements CopyWith$Query$GetSicCodes<TRes> {
  _CopyWithStubImpl$Query$GetSicCodes(this._res);

  TRes _res;

  call({Query$GetSicCodes$sicCodes? sicCodes, String? $__typename}) => _res;

  CopyWith$Query$GetSicCodes$sicCodes<TRes> get sicCodes =>
      CopyWith$Query$GetSicCodes$sicCodes.stub(_res);
}

const documentNodeQueryGetSicCodes = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetSicCodes'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'first')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'where')),
          type: NamedTypeNode(
            name: NameNode(value: 'SicCodeFilterInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'sicCodes'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'where'),
                value: VariableNode(name: NameNode(value: 'where')),
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
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'description'),
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

class Query$GetSicCodes$sicCodes {
  Query$GetSicCodes$sicCodes({
    this.nodes,
    this.$__typename = 'SicCodesConnection',
  });

  factory Query$GetSicCodes$sicCodes.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetSicCodes$sicCodes(
      nodes: (l$nodes as List<dynamic>?)
          ?.map(
            (e) => Query$GetSicCodes$sicCodes$nodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetSicCodes$sicCodes$nodes>? nodes;

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
    if (other is! Query$GetSicCodes$sicCodes ||
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

extension UtilityExtension$Query$GetSicCodes$sicCodes
    on Query$GetSicCodes$sicCodes {
  CopyWith$Query$GetSicCodes$sicCodes<Query$GetSicCodes$sicCodes>
  get copyWith => CopyWith$Query$GetSicCodes$sicCodes(this, (i) => i);
}

abstract class CopyWith$Query$GetSicCodes$sicCodes<TRes> {
  factory CopyWith$Query$GetSicCodes$sicCodes(
    Query$GetSicCodes$sicCodes instance,
    TRes Function(Query$GetSicCodes$sicCodes) then,
  ) = _CopyWithImpl$Query$GetSicCodes$sicCodes;

  factory CopyWith$Query$GetSicCodes$sicCodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSicCodes$sicCodes;

  TRes call({
    List<Query$GetSicCodes$sicCodes$nodes>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$GetSicCodes$sicCodes$nodes>? Function(
      Iterable<
        CopyWith$Query$GetSicCodes$sicCodes$nodes<
          Query$GetSicCodes$sicCodes$nodes
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetSicCodes$sicCodes<TRes>
    implements CopyWith$Query$GetSicCodes$sicCodes<TRes> {
  _CopyWithImpl$Query$GetSicCodes$sicCodes(this._instance, this._then);

  final Query$GetSicCodes$sicCodes _instance;

  final TRes Function(Query$GetSicCodes$sicCodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? nodes = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetSicCodes$sicCodes(
          nodes: nodes == _undefined
              ? _instance.nodes
              : (nodes as List<Query$GetSicCodes$sicCodes$nodes>?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes nodes(
    Iterable<Query$GetSicCodes$sicCodes$nodes>? Function(
      Iterable<
        CopyWith$Query$GetSicCodes$sicCodes$nodes<
          Query$GetSicCodes$sicCodes$nodes
        >
      >?,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes?.map(
        (e) => CopyWith$Query$GetSicCodes$sicCodes$nodes(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetSicCodes$sicCodes<TRes>
    implements CopyWith$Query$GetSicCodes$sicCodes<TRes> {
  _CopyWithStubImpl$Query$GetSicCodes$sicCodes(this._res);

  TRes _res;

  call({List<Query$GetSicCodes$sicCodes$nodes>? nodes, String? $__typename}) =>
      _res;

  nodes(_fn) => _res;
}

class Query$GetSicCodes$sicCodes$nodes {
  Query$GetSicCodes$sicCodes$nodes({
    required this.code,
    required this.description,
    this.$__typename = 'SicCodes',
  });

  factory Query$GetSicCodes$sicCodes$nodes.fromJson(Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$GetSicCodes$sicCodes$nodes(
      code: (l$code as String),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$code, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetSicCodes$sicCodes$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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

extension UtilityExtension$Query$GetSicCodes$sicCodes$nodes
    on Query$GetSicCodes$sicCodes$nodes {
  CopyWith$Query$GetSicCodes$sicCodes$nodes<Query$GetSicCodes$sicCodes$nodes>
  get copyWith => CopyWith$Query$GetSicCodes$sicCodes$nodes(this, (i) => i);
}

abstract class CopyWith$Query$GetSicCodes$sicCodes$nodes<TRes> {
  factory CopyWith$Query$GetSicCodes$sicCodes$nodes(
    Query$GetSicCodes$sicCodes$nodes instance,
    TRes Function(Query$GetSicCodes$sicCodes$nodes) then,
  ) = _CopyWithImpl$Query$GetSicCodes$sicCodes$nodes;

  factory CopyWith$Query$GetSicCodes$sicCodes$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSicCodes$sicCodes$nodes;

  TRes call({String? code, String? description, String? $__typename});
}

class _CopyWithImpl$Query$GetSicCodes$sicCodes$nodes<TRes>
    implements CopyWith$Query$GetSicCodes$sicCodes$nodes<TRes> {
  _CopyWithImpl$Query$GetSicCodes$sicCodes$nodes(this._instance, this._then);

  final Query$GetSicCodes$sicCodes$nodes _instance;

  final TRes Function(Query$GetSicCodes$sicCodes$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetSicCodes$sicCodes$nodes(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetSicCodes$sicCodes$nodes<TRes>
    implements CopyWith$Query$GetSicCodes$sicCodes$nodes<TRes> {
  _CopyWithStubImpl$Query$GetSicCodes$sicCodes$nodes(this._res);

  TRes _res;

  call({String? code, String? description, String? $__typename}) => _res;
}
