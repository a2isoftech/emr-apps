import 'package:gql/ast.dart';

class Variables$Query$GetTeams {
  factory Variables$Query$GetTeams({String? query}) =>
      Variables$Query$GetTeams._({if (query != null) r'query': query});

  Variables$Query$GetTeams._(this._$data);

  factory Variables$Query$GetTeams.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    return Variables$Query$GetTeams._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get query => (_$data['query'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetTeams<Variables$Query$GetTeams> get copyWith =>
      CopyWith$Variables$Query$GetTeams(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetTeams ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (_$data.containsKey('query') != other._$data.containsKey('query')) {
      return false;
    }
    if (l$query != lOther$query) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    return Object.hashAll([_$data.containsKey('query') ? l$query : const {}]);
  }
}

abstract class CopyWith$Variables$Query$GetTeams<TRes> {
  factory CopyWith$Variables$Query$GetTeams(
    Variables$Query$GetTeams instance,
    TRes Function(Variables$Query$GetTeams) then,
  ) = _CopyWithImpl$Variables$Query$GetTeams;

  factory CopyWith$Variables$Query$GetTeams.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTeams;

  TRes call({String? query});
}

class _CopyWithImpl$Variables$Query$GetTeams<TRes>
    implements CopyWith$Variables$Query$GetTeams<TRes> {
  _CopyWithImpl$Variables$Query$GetTeams(this._instance, this._then);

  final Variables$Query$GetTeams _instance;

  final TRes Function(Variables$Query$GetTeams) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? query = _undefined}) => _then(
    Variables$Query$GetTeams._({
      ..._instance._$data,
      if (query != _undefined) 'query': (query as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetTeams<TRes>
    implements CopyWith$Variables$Query$GetTeams<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTeams(this._res);

  TRes _res;

  call({String? query}) => _res;
}

class Query$GetTeams {
  Query$GetTeams({required this.teams, this.$__typename = 'Query'});

  factory Query$GetTeams.fromJson(Map<String, dynamic> json) {
    final l$teams = json['teams'];
    final l$$__typename = json['__typename'];
    return Query$GetTeams(
      teams: (l$teams as List<dynamic>)
          .map(
            (e) => Query$GetTeams$teams.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetTeams$teams> teams;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$teams = teams;
    _resultData['teams'] = l$teams.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$teams = teams;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$teams.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetTeams || runtimeType != other.runtimeType) {
      return false;
    }
    final l$teams = teams;
    final lOther$teams = other.teams;
    if (l$teams.length != lOther$teams.length) {
      return false;
    }
    for (int i = 0; i < l$teams.length; i++) {
      final l$teams$entry = l$teams[i];
      final lOther$teams$entry = lOther$teams[i];
      if (l$teams$entry != lOther$teams$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetTeams on Query$GetTeams {
  CopyWith$Query$GetTeams<Query$GetTeams> get copyWith =>
      CopyWith$Query$GetTeams(this, (i) => i);
}

abstract class CopyWith$Query$GetTeams<TRes> {
  factory CopyWith$Query$GetTeams(
    Query$GetTeams instance,
    TRes Function(Query$GetTeams) then,
  ) = _CopyWithImpl$Query$GetTeams;

  factory CopyWith$Query$GetTeams.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTeams;

  TRes call({List<Query$GetTeams$teams>? teams, String? $__typename});
  TRes teams(
    Iterable<Query$GetTeams$teams> Function(
      Iterable<CopyWith$Query$GetTeams$teams<Query$GetTeams$teams>>,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetTeams<TRes>
    implements CopyWith$Query$GetTeams<TRes> {
  _CopyWithImpl$Query$GetTeams(this._instance, this._then);

  final Query$GetTeams _instance;

  final TRes Function(Query$GetTeams) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? teams = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetTeams(
          teams: teams == _undefined || teams == null
              ? _instance.teams
              : (teams as List<Query$GetTeams$teams>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes teams(
    Iterable<Query$GetTeams$teams> Function(
      Iterable<CopyWith$Query$GetTeams$teams<Query$GetTeams$teams>>,
    )
    _fn,
  ) => call(
    teams: _fn(
      _instance.teams.map((e) => CopyWith$Query$GetTeams$teams(e, (i) => i)),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetTeams<TRes>
    implements CopyWith$Query$GetTeams<TRes> {
  _CopyWithStubImpl$Query$GetTeams(this._res);

  TRes _res;

  call({List<Query$GetTeams$teams>? teams, String? $__typename}) => _res;

  teams(_fn) => _res;
}

const documentNodeQueryGetTeams = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetTeams'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'query')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
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
            name: NameNode(value: 'teams'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'searchQuery'),
                value: VariableNode(name: NameNode(value: 'query')),
              ),
            ],
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
  ],
);

class Query$GetTeams$teams {
  Query$GetTeams$teams({
    required this.id,
    required this.name,
    this.$__typename = 'Team',
  });

  factory Query$GetTeams$teams.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetTeams$teams(
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
    if (other is! Query$GetTeams$teams || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetTeams$teams on Query$GetTeams$teams {
  CopyWith$Query$GetTeams$teams<Query$GetTeams$teams> get copyWith =>
      CopyWith$Query$GetTeams$teams(this, (i) => i);
}

abstract class CopyWith$Query$GetTeams$teams<TRes> {
  factory CopyWith$Query$GetTeams$teams(
    Query$GetTeams$teams instance,
    TRes Function(Query$GetTeams$teams) then,
  ) = _CopyWithImpl$Query$GetTeams$teams;

  factory CopyWith$Query$GetTeams$teams.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTeams$teams;

  TRes call({String? id, String? name, String? $__typename});
}

class _CopyWithImpl$Query$GetTeams$teams<TRes>
    implements CopyWith$Query$GetTeams$teams<TRes> {
  _CopyWithImpl$Query$GetTeams$teams(this._instance, this._then);

  final Query$GetTeams$teams _instance;

  final TRes Function(Query$GetTeams$teams) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetTeams$teams(
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

class _CopyWithStubImpl$Query$GetTeams$teams<TRes>
    implements CopyWith$Query$GetTeams$teams<TRes> {
  _CopyWithStubImpl$Query$GetTeams$teams(this._res);

  TRes _res;

  call({String? id, String? name, String? $__typename}) => _res;
}
