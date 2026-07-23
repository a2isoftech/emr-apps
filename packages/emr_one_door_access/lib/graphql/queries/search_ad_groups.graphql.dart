import 'package:gql/ast.dart';

class Variables$Query$SearchAdGroups {
  factory Variables$Query$SearchAdGroups({required String searchQuery}) =>
      Variables$Query$SearchAdGroups._({
        r'searchQuery': searchQuery,
      });

  Variables$Query$SearchAdGroups._(this._$data);

  factory Variables$Query$SearchAdGroups.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$searchQuery = data['searchQuery'];
    result$data['searchQuery'] = (l$searchQuery as String);
    return Variables$Query$SearchAdGroups._(result$data);
  }

  Map<String, dynamic> _$data;

  String get searchQuery => (_$data['searchQuery'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$searchQuery = searchQuery;
    result$data['searchQuery'] = l$searchQuery;
    return result$data;
  }

  CopyWith$Variables$Query$SearchAdGroups<Variables$Query$SearchAdGroups>
      get copyWith => CopyWith$Variables$Query$SearchAdGroups(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchAdGroups ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchQuery = searchQuery;
    final lOther$searchQuery = other.searchQuery;
    if (l$searchQuery != lOther$searchQuery) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$searchQuery = searchQuery;
    return Object.hashAll([l$searchQuery]);
  }
}

abstract class CopyWith$Variables$Query$SearchAdGroups<TRes> {
  factory CopyWith$Variables$Query$SearchAdGroups(
    Variables$Query$SearchAdGroups instance,
    TRes Function(Variables$Query$SearchAdGroups) then,
  ) = _CopyWithImpl$Variables$Query$SearchAdGroups;

  factory CopyWith$Variables$Query$SearchAdGroups.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchAdGroups;

  TRes call({String? searchQuery});
}

class _CopyWithImpl$Variables$Query$SearchAdGroups<TRes>
    implements CopyWith$Variables$Query$SearchAdGroups<TRes> {
  _CopyWithImpl$Variables$Query$SearchAdGroups(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchAdGroups _instance;

  final TRes Function(Variables$Query$SearchAdGroups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? searchQuery = _undefined}) =>
      _then(Variables$Query$SearchAdGroups._({
        ..._instance._$data,
        if (searchQuery != _undefined && searchQuery != null)
          'searchQuery': (searchQuery as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchAdGroups<TRes>
    implements CopyWith$Variables$Query$SearchAdGroups<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchAdGroups(this._res);

  TRes _res;

  call({String? searchQuery}) => _res;
}

class Query$SearchAdGroups {
  Query$SearchAdGroups({
    required this.adGroups,
    this.$__typename = 'Query',
  });

  factory Query$SearchAdGroups.fromJson(Map<String, dynamic> json) {
    final l$adGroups = json['adGroups'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdGroups(
      adGroups: (l$adGroups as List<dynamic>)
          .map((e) => Query$SearchAdGroups$adGroups.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchAdGroups$adGroups> adGroups;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$adGroups = adGroups;
    _resultData['adGroups'] = l$adGroups.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$adGroups = adGroups;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$adGroups.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchAdGroups || runtimeType != other.runtimeType) {
      return false;
    }
    final l$adGroups = adGroups;
    final lOther$adGroups = other.adGroups;
    if (l$adGroups.length != lOther$adGroups.length) {
      return false;
    }
    for (int i = 0; i < l$adGroups.length; i++) {
      final l$adGroups$entry = l$adGroups[i];
      final lOther$adGroups$entry = lOther$adGroups[i];
      if (l$adGroups$entry != lOther$adGroups$entry) {
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

extension UtilityExtension$Query$SearchAdGroups on Query$SearchAdGroups {
  CopyWith$Query$SearchAdGroups<Query$SearchAdGroups> get copyWith =>
      CopyWith$Query$SearchAdGroups(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchAdGroups<TRes> {
  factory CopyWith$Query$SearchAdGroups(
    Query$SearchAdGroups instance,
    TRes Function(Query$SearchAdGroups) then,
  ) = _CopyWithImpl$Query$SearchAdGroups;

  factory CopyWith$Query$SearchAdGroups.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchAdGroups;

  TRes call({
    List<Query$SearchAdGroups$adGroups>? adGroups,
    String? $__typename,
  });
  TRes adGroups(
      Iterable<Query$SearchAdGroups$adGroups> Function(
              Iterable<
                  CopyWith$Query$SearchAdGroups$adGroups<
                      Query$SearchAdGroups$adGroups>>)
          _fn);
}

class _CopyWithImpl$Query$SearchAdGroups<TRes>
    implements CopyWith$Query$SearchAdGroups<TRes> {
  _CopyWithImpl$Query$SearchAdGroups(
    this._instance,
    this._then,
  );

  final Query$SearchAdGroups _instance;

  final TRes Function(Query$SearchAdGroups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? adGroups = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchAdGroups(
        adGroups: adGroups == _undefined || adGroups == null
            ? _instance.adGroups
            : (adGroups as List<Query$SearchAdGroups$adGroups>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes adGroups(
          Iterable<Query$SearchAdGroups$adGroups> Function(
                  Iterable<
                      CopyWith$Query$SearchAdGroups$adGroups<
                          Query$SearchAdGroups$adGroups>>)
              _fn) =>
      call(
          adGroups: _fn(_instance.adGroups
              .map((e) => CopyWith$Query$SearchAdGroups$adGroups(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$SearchAdGroups<TRes>
    implements CopyWith$Query$SearchAdGroups<TRes> {
  _CopyWithStubImpl$Query$SearchAdGroups(this._res);

  TRes _res;

  call({
    List<Query$SearchAdGroups$adGroups>? adGroups,
    String? $__typename,
  }) =>
      _res;

  adGroups(_fn) => _res;
}

const documentNodeQuerySearchAdGroups = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchAdGroups'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'searchQuery')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'adGroups'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'searchQuery'),
            value: VariableNode(name: NameNode(value: 'searchQuery')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'azureId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
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

class Query$SearchAdGroups$adGroups {
  Query$SearchAdGroups$adGroups({
    required this.name,
    this.azureId,
    required this.id,
    this.$__typename = 'Group',
  });

  factory Query$SearchAdGroups$adGroups.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$azureId = json['azureId'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$SearchAdGroups$adGroups(
      name: (l$name as String),
      azureId: (l$azureId as String?),
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String? azureId;

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$azureId = azureId;
    _resultData['azureId'] = l$azureId;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$azureId = azureId;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$azureId,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchAdGroups$adGroups ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$azureId = azureId;
    final lOther$azureId = other.azureId;
    if (l$azureId != lOther$azureId) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$SearchAdGroups$adGroups
    on Query$SearchAdGroups$adGroups {
  CopyWith$Query$SearchAdGroups$adGroups<Query$SearchAdGroups$adGroups>
      get copyWith => CopyWith$Query$SearchAdGroups$adGroups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchAdGroups$adGroups<TRes> {
  factory CopyWith$Query$SearchAdGroups$adGroups(
    Query$SearchAdGroups$adGroups instance,
    TRes Function(Query$SearchAdGroups$adGroups) then,
  ) = _CopyWithImpl$Query$SearchAdGroups$adGroups;

  factory CopyWith$Query$SearchAdGroups$adGroups.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchAdGroups$adGroups;

  TRes call({
    String? name,
    String? azureId,
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchAdGroups$adGroups<TRes>
    implements CopyWith$Query$SearchAdGroups$adGroups<TRes> {
  _CopyWithImpl$Query$SearchAdGroups$adGroups(
    this._instance,
    this._then,
  );

  final Query$SearchAdGroups$adGroups _instance;

  final TRes Function(Query$SearchAdGroups$adGroups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? azureId = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchAdGroups$adGroups(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        azureId:
            azureId == _undefined ? _instance.azureId : (azureId as String?),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchAdGroups$adGroups<TRes>
    implements CopyWith$Query$SearchAdGroups$adGroups<TRes> {
  _CopyWithStubImpl$Query$SearchAdGroups$adGroups(this._res);

  TRes _res;

  call({
    String? name,
    String? azureId,
    String? id,
    String? $__typename,
  }) =>
      _res;
}
