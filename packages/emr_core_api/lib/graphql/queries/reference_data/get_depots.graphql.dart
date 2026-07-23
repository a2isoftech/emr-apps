import 'package:gql/ast.dart';

class Variables$Query$GetDepots {
  factory Variables$Query$GetDepots({required List<String> territoryCodes}) =>
      Variables$Query$GetDepots._({r'territoryCodes': territoryCodes});

  Variables$Query$GetDepots._(this._$data);

  factory Variables$Query$GetDepots.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$territoryCodes = data['territoryCodes'];
    result$data['territoryCodes'] = (l$territoryCodes as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    return Variables$Query$GetDepots._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String> get territoryCodes => (_$data['territoryCodes'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$territoryCodes = territoryCodes;
    result$data['territoryCodes'] = l$territoryCodes.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Query$GetDepots<Variables$Query$GetDepots> get copyWith =>
      CopyWith$Variables$Query$GetDepots(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetDepots ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$territoryCodes = territoryCodes;
    final lOther$territoryCodes = other.territoryCodes;
    if (l$territoryCodes.length != lOther$territoryCodes.length) {
      return false;
    }
    for (int i = 0; i < l$territoryCodes.length; i++) {
      final l$territoryCodes$entry = l$territoryCodes[i];
      final lOther$territoryCodes$entry = lOther$territoryCodes[i];
      if (l$territoryCodes$entry != lOther$territoryCodes$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$territoryCodes = territoryCodes;
    return Object.hashAll([Object.hashAll(l$territoryCodes.map((v) => v))]);
  }
}

abstract class CopyWith$Variables$Query$GetDepots<TRes> {
  factory CopyWith$Variables$Query$GetDepots(
    Variables$Query$GetDepots instance,
    TRes Function(Variables$Query$GetDepots) then,
  ) = _CopyWithImpl$Variables$Query$GetDepots;

  factory CopyWith$Variables$Query$GetDepots.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetDepots;

  TRes call({List<String>? territoryCodes});
}

class _CopyWithImpl$Variables$Query$GetDepots<TRes>
    implements CopyWith$Variables$Query$GetDepots<TRes> {
  _CopyWithImpl$Variables$Query$GetDepots(this._instance, this._then);

  final Variables$Query$GetDepots _instance;

  final TRes Function(Variables$Query$GetDepots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? territoryCodes = _undefined}) => _then(
    Variables$Query$GetDepots._({
      ..._instance._$data,
      if (territoryCodes != _undefined && territoryCodes != null)
        'territoryCodes': (territoryCodes as List<String>),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetDepots<TRes>
    implements CopyWith$Variables$Query$GetDepots<TRes> {
  _CopyWithStubImpl$Variables$Query$GetDepots(this._res);

  TRes _res;

  call({List<String>? territoryCodes}) => _res;
}

class Query$GetDepots {
  Query$GetDepots({required this.depots, this.$__typename = 'Query'});

  factory Query$GetDepots.fromJson(Map<String, dynamic> json) {
    final l$depots = json['depots'];
    final l$$__typename = json['__typename'];
    return Query$GetDepots(
      depots: (l$depots as List<dynamic>)
          .map(
            (e) => Query$GetDepots$depots.fromJson((e as Map<String, dynamic>)),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetDepots$depots> depots;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$depots = depots;
    _resultData['depots'] = l$depots.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$depots = depots;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$depots.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetDepots || runtimeType != other.runtimeType) {
      return false;
    }
    final l$depots = depots;
    final lOther$depots = other.depots;
    if (l$depots.length != lOther$depots.length) {
      return false;
    }
    for (int i = 0; i < l$depots.length; i++) {
      final l$depots$entry = l$depots[i];
      final lOther$depots$entry = lOther$depots[i];
      if (l$depots$entry != lOther$depots$entry) {
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

extension UtilityExtension$Query$GetDepots on Query$GetDepots {
  CopyWith$Query$GetDepots<Query$GetDepots> get copyWith =>
      CopyWith$Query$GetDepots(this, (i) => i);
}

abstract class CopyWith$Query$GetDepots<TRes> {
  factory CopyWith$Query$GetDepots(
    Query$GetDepots instance,
    TRes Function(Query$GetDepots) then,
  ) = _CopyWithImpl$Query$GetDepots;

  factory CopyWith$Query$GetDepots.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDepots;

  TRes call({List<Query$GetDepots$depots>? depots, String? $__typename});
  TRes depots(
    Iterable<Query$GetDepots$depots> Function(
      Iterable<CopyWith$Query$GetDepots$depots<Query$GetDepots$depots>>,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetDepots<TRes>
    implements CopyWith$Query$GetDepots<TRes> {
  _CopyWithImpl$Query$GetDepots(this._instance, this._then);

  final Query$GetDepots _instance;

  final TRes Function(Query$GetDepots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? depots = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetDepots(
          depots: depots == _undefined || depots == null
              ? _instance.depots
              : (depots as List<Query$GetDepots$depots>),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  TRes depots(
    Iterable<Query$GetDepots$depots> Function(
      Iterable<CopyWith$Query$GetDepots$depots<Query$GetDepots$depots>>,
    )
    _fn,
  ) => call(
    depots: _fn(
      _instance.depots.map((e) => CopyWith$Query$GetDepots$depots(e, (i) => i)),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetDepots<TRes>
    implements CopyWith$Query$GetDepots<TRes> {
  _CopyWithStubImpl$Query$GetDepots(this._res);

  TRes _res;

  call({List<Query$GetDepots$depots>? depots, String? $__typename}) => _res;

  depots(_fn) => _res;
}

const documentNodeQueryGetDepots = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetDepots'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'territoryCodes')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'String'),
              isNonNull: true,
            ),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'depots'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'query'),
                      value: StringValueNode(value: '', isBlock: false),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'territoryCodes'),
                      value: VariableNode(
                        name: NameNode(value: 'territoryCodes'),
                      ),
                    ),
                  ],
                ),
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
                  name: NameNode(value: 'shortName'),
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

class Query$GetDepots$depots {
  Query$GetDepots$depots({
    required this.id,
    required this.shortName,
    this.$__typename = 'Depot',
  });

  factory Query$GetDepots$depots.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$shortName = json['shortName'];
    final l$$__typename = json['__typename'];
    return Query$GetDepots$depots(
      id: (l$id as String),
      shortName: (l$shortName as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String shortName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$shortName = shortName;
    _resultData['shortName'] = l$shortName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$shortName = shortName;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$shortName, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetDepots$depots || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$shortName = shortName;
    final lOther$shortName = other.shortName;
    if (l$shortName != lOther$shortName) {
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

extension UtilityExtension$Query$GetDepots$depots on Query$GetDepots$depots {
  CopyWith$Query$GetDepots$depots<Query$GetDepots$depots> get copyWith =>
      CopyWith$Query$GetDepots$depots(this, (i) => i);
}

abstract class CopyWith$Query$GetDepots$depots<TRes> {
  factory CopyWith$Query$GetDepots$depots(
    Query$GetDepots$depots instance,
    TRes Function(Query$GetDepots$depots) then,
  ) = _CopyWithImpl$Query$GetDepots$depots;

  factory CopyWith$Query$GetDepots$depots.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDepots$depots;

  TRes call({String? id, String? shortName, String? $__typename});
}

class _CopyWithImpl$Query$GetDepots$depots<TRes>
    implements CopyWith$Query$GetDepots$depots<TRes> {
  _CopyWithImpl$Query$GetDepots$depots(this._instance, this._then);

  final Query$GetDepots$depots _instance;

  final TRes Function(Query$GetDepots$depots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? shortName = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetDepots$depots(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      shortName: shortName == _undefined || shortName == null
          ? _instance.shortName
          : (shortName as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetDepots$depots<TRes>
    implements CopyWith$Query$GetDepots$depots<TRes> {
  _CopyWithStubImpl$Query$GetDepots$depots(this._res);

  TRes _res;

  call({String? id, String? shortName, String? $__typename}) => _res;
}
