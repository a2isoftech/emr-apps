import 'package:gql/ast.dart';

class Variables$Query$GetAllGroups {
  factory Variables$Query$GetAllGroups({List<String>? groupIds}) =>
      Variables$Query$GetAllGroups._({
        if (groupIds != null) r'groupIds': groupIds,
      });

  Variables$Query$GetAllGroups._(this._$data);

  factory Variables$Query$GetAllGroups.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('groupIds')) {
      final l$groupIds = data['groupIds'];
      result$data['groupIds'] = (l$groupIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    return Variables$Query$GetAllGroups._(result$data);
  }

  Map<String, dynamic> _$data;

  List<String>? get groupIds => (_$data['groupIds'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('groupIds')) {
      final l$groupIds = groupIds;
      result$data['groupIds'] = l$groupIds?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetAllGroups<Variables$Query$GetAllGroups>
  get copyWith => CopyWith$Variables$Query$GetAllGroups(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAllGroups ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$groupIds = groupIds;
    final lOther$groupIds = other.groupIds;
    if (_$data.containsKey('groupIds') !=
        other._$data.containsKey('groupIds')) {
      return false;
    }
    if (l$groupIds != null && lOther$groupIds != null) {
      if (l$groupIds.length != lOther$groupIds.length) {
        return false;
      }
      for (int i = 0; i < l$groupIds.length; i++) {
        final l$groupIds$entry = l$groupIds[i];
        final lOther$groupIds$entry = lOther$groupIds[i];
        if (l$groupIds$entry != lOther$groupIds$entry) {
          return false;
        }
      }
    } else if (l$groupIds != lOther$groupIds) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$groupIds = groupIds;
    return Object.hashAll([
      _$data.containsKey('groupIds')
          ? l$groupIds == null
                ? null
                : Object.hashAll(l$groupIds.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetAllGroups<TRes> {
  factory CopyWith$Variables$Query$GetAllGroups(
    Variables$Query$GetAllGroups instance,
    TRes Function(Variables$Query$GetAllGroups) then,
  ) = _CopyWithImpl$Variables$Query$GetAllGroups;

  factory CopyWith$Variables$Query$GetAllGroups.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllGroups;

  TRes call({List<String>? groupIds});
}

class _CopyWithImpl$Variables$Query$GetAllGroups<TRes>
    implements CopyWith$Variables$Query$GetAllGroups<TRes> {
  _CopyWithImpl$Variables$Query$GetAllGroups(this._instance, this._then);

  final Variables$Query$GetAllGroups _instance;

  final TRes Function(Variables$Query$GetAllGroups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? groupIds = _undefined}) => _then(
    Variables$Query$GetAllGroups._({
      ..._instance._$data,
      if (groupIds != _undefined) 'groupIds': (groupIds as List<String>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetAllGroups<TRes>
    implements CopyWith$Variables$Query$GetAllGroups<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllGroups(this._res);

  TRes _res;

  call({List<String>? groupIds}) => _res;
}

class Query$GetAllGroups {
  Query$GetAllGroups({required this.allGroups, this.$__typename = 'Query'});

  factory Query$GetAllGroups.fromJson(Map<String, dynamic> json) {
    final l$allGroups = json['allGroups'];
    final l$$__typename = json['__typename'];
    return Query$GetAllGroups(
      allGroups: (l$allGroups as List<dynamic>)
          .map(
            (e) => Query$GetAllGroups$allGroups.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllGroups$allGroups> allGroups;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allGroups = allGroups;
    _resultData['allGroups'] = l$allGroups.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allGroups = allGroups;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$allGroups.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllGroups || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allGroups = allGroups;
    final lOther$allGroups = other.allGroups;
    if (l$allGroups.length != lOther$allGroups.length) {
      return false;
    }
    for (int i = 0; i < l$allGroups.length; i++) {
      final l$allGroups$entry = l$allGroups[i];
      final lOther$allGroups$entry = lOther$allGroups[i];
      if (l$allGroups$entry != lOther$allGroups$entry) {
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

extension UtilityExtension$Query$GetAllGroups on Query$GetAllGroups {
  CopyWith$Query$GetAllGroups<Query$GetAllGroups> get copyWith =>
      CopyWith$Query$GetAllGroups(this, (i) => i);
}

abstract class CopyWith$Query$GetAllGroups<TRes> {
  factory CopyWith$Query$GetAllGroups(
    Query$GetAllGroups instance,
    TRes Function(Query$GetAllGroups) then,
  ) = _CopyWithImpl$Query$GetAllGroups;

  factory CopyWith$Query$GetAllGroups.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllGroups;

  TRes call({
    List<Query$GetAllGroups$allGroups>? allGroups,
    String? $__typename,
  });
  TRes allGroups(
    Iterable<Query$GetAllGroups$allGroups> Function(
      Iterable<
        CopyWith$Query$GetAllGroups$allGroups<Query$GetAllGroups$allGroups>
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAllGroups<TRes>
    implements CopyWith$Query$GetAllGroups<TRes> {
  _CopyWithImpl$Query$GetAllGroups(this._instance, this._then);

  final Query$GetAllGroups _instance;

  final TRes Function(Query$GetAllGroups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allGroups = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllGroups(
      allGroups: allGroups == _undefined || allGroups == null
          ? _instance.allGroups
          : (allGroups as List<Query$GetAllGroups$allGroups>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes allGroups(
    Iterable<Query$GetAllGroups$allGroups> Function(
      Iterable<
        CopyWith$Query$GetAllGroups$allGroups<Query$GetAllGroups$allGroups>
      >,
    )
    _fn,
  ) => call(
    allGroups: _fn(
      _instance.allGroups.map(
        (e) => CopyWith$Query$GetAllGroups$allGroups(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetAllGroups<TRes>
    implements CopyWith$Query$GetAllGroups<TRes> {
  _CopyWithStubImpl$Query$GetAllGroups(this._res);

  TRes _res;

  call({List<Query$GetAllGroups$allGroups>? allGroups, String? $__typename}) =>
      _res;

  allGroups(_fn) => _res;
}

const documentNodeQueryGetAllGroups = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAllGroups'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'groupIds')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'String'),
              isNonNull: true,
            ),
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
            name: NameNode(value: 'allGroups'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'groupIds'),
                value: VariableNode(name: NameNode(value: 'groupIds')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'azureId'),
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
                  name: NameNode(value: 'users'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'accessPoints'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'key'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'value'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'externalId'),
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
                  name: NameNode(value: 'lastUpdatedFromAzureAdOn'),
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
                  name: NameNode(value: 'createdOn'),
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

class Query$GetAllGroups$allGroups {
  Query$GetAllGroups$allGroups({
    this.azureId,
    required this.name,
    required this.users,
    required this.accessPoints,
    this.lastUpdatedFromAzureAdOn,
    required this.id,
    required this.createdOn,
    this.$__typename = 'Group',
  });

  factory Query$GetAllGroups$allGroups.fromJson(Map<String, dynamic> json) {
    final l$azureId = json['azureId'];
    final l$name = json['name'];
    final l$users = json['users'];
    final l$accessPoints = json['accessPoints'];
    final l$lastUpdatedFromAzureAdOn = json['lastUpdatedFromAzureAdOn'];
    final l$id = json['id'];
    final l$createdOn = json['createdOn'];
    final l$$__typename = json['__typename'];
    return Query$GetAllGroups$allGroups(
      azureId: (l$azureId as String?),
      name: (l$name as String),
      users: (l$users as List<dynamic>).map((e) => (e as String)).toList(),
      accessPoints: (l$accessPoints as List<dynamic>)
          .map(
            (e) => Query$GetAllGroups$allGroups$accessPoints.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      lastUpdatedFromAzureAdOn: l$lastUpdatedFromAzureAdOn == null
          ? null
          : DateTime.parse((l$lastUpdatedFromAzureAdOn as String)),
      id: (l$id as String),
      createdOn: DateTime.parse((l$createdOn as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? azureId;

  final String name;

  final List<String> users;

  final List<Query$GetAllGroups$allGroups$accessPoints> accessPoints;

  final DateTime? lastUpdatedFromAzureAdOn;

  final String id;

  final DateTime createdOn;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$azureId = azureId;
    _resultData['azureId'] = l$azureId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$users = users;
    _resultData['users'] = l$users.map((e) => e).toList();
    final l$accessPoints = accessPoints;
    _resultData['accessPoints'] = l$accessPoints
        .map((e) => e.toJson())
        .toList();
    final l$lastUpdatedFromAzureAdOn = lastUpdatedFromAzureAdOn;
    _resultData['lastUpdatedFromAzureAdOn'] = l$lastUpdatedFromAzureAdOn
        ?.toIso8601String();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$createdOn = createdOn;
    _resultData['createdOn'] = l$createdOn.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$azureId = azureId;
    final l$name = name;
    final l$users = users;
    final l$accessPoints = accessPoints;
    final l$lastUpdatedFromAzureAdOn = lastUpdatedFromAzureAdOn;
    final l$id = id;
    final l$createdOn = createdOn;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$azureId,
      l$name,
      Object.hashAll(l$users.map((v) => v)),
      Object.hashAll(l$accessPoints.map((v) => v)),
      l$lastUpdatedFromAzureAdOn,
      l$id,
      l$createdOn,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllGroups$allGroups ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$azureId = azureId;
    final lOther$azureId = other.azureId;
    if (l$azureId != lOther$azureId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$users = users;
    final lOther$users = other.users;
    if (l$users.length != lOther$users.length) {
      return false;
    }
    for (int i = 0; i < l$users.length; i++) {
      final l$users$entry = l$users[i];
      final lOther$users$entry = lOther$users[i];
      if (l$users$entry != lOther$users$entry) {
        return false;
      }
    }
    final l$accessPoints = accessPoints;
    final lOther$accessPoints = other.accessPoints;
    if (l$accessPoints.length != lOther$accessPoints.length) {
      return false;
    }
    for (int i = 0; i < l$accessPoints.length; i++) {
      final l$accessPoints$entry = l$accessPoints[i];
      final lOther$accessPoints$entry = lOther$accessPoints[i];
      if (l$accessPoints$entry != lOther$accessPoints$entry) {
        return false;
      }
    }
    final l$lastUpdatedFromAzureAdOn = lastUpdatedFromAzureAdOn;
    final lOther$lastUpdatedFromAzureAdOn = other.lastUpdatedFromAzureAdOn;
    if (l$lastUpdatedFromAzureAdOn != lOther$lastUpdatedFromAzureAdOn) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (l$createdOn != lOther$createdOn) {
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

extension UtilityExtension$Query$GetAllGroups$allGroups
    on Query$GetAllGroups$allGroups {
  CopyWith$Query$GetAllGroups$allGroups<Query$GetAllGroups$allGroups>
  get copyWith => CopyWith$Query$GetAllGroups$allGroups(this, (i) => i);
}

abstract class CopyWith$Query$GetAllGroups$allGroups<TRes> {
  factory CopyWith$Query$GetAllGroups$allGroups(
    Query$GetAllGroups$allGroups instance,
    TRes Function(Query$GetAllGroups$allGroups) then,
  ) = _CopyWithImpl$Query$GetAllGroups$allGroups;

  factory CopyWith$Query$GetAllGroups$allGroups.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllGroups$allGroups;

  TRes call({
    String? azureId,
    String? name,
    List<String>? users,
    List<Query$GetAllGroups$allGroups$accessPoints>? accessPoints,
    DateTime? lastUpdatedFromAzureAdOn,
    String? id,
    DateTime? createdOn,
    String? $__typename,
  });
  TRes accessPoints(
    Iterable<Query$GetAllGroups$allGroups$accessPoints> Function(
      Iterable<
        CopyWith$Query$GetAllGroups$allGroups$accessPoints<
          Query$GetAllGroups$allGroups$accessPoints
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAllGroups$allGroups<TRes>
    implements CopyWith$Query$GetAllGroups$allGroups<TRes> {
  _CopyWithImpl$Query$GetAllGroups$allGroups(this._instance, this._then);

  final Query$GetAllGroups$allGroups _instance;

  final TRes Function(Query$GetAllGroups$allGroups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? azureId = _undefined,
    Object? name = _undefined,
    Object? users = _undefined,
    Object? accessPoints = _undefined,
    Object? lastUpdatedFromAzureAdOn = _undefined,
    Object? id = _undefined,
    Object? createdOn = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllGroups$allGroups(
      azureId: azureId == _undefined ? _instance.azureId : (azureId as String?),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      users: users == _undefined || users == null
          ? _instance.users
          : (users as List<String>),
      accessPoints: accessPoints == _undefined || accessPoints == null
          ? _instance.accessPoints
          : (accessPoints as List<Query$GetAllGroups$allGroups$accessPoints>),
      lastUpdatedFromAzureAdOn: lastUpdatedFromAzureAdOn == _undefined
          ? _instance.lastUpdatedFromAzureAdOn
          : (lastUpdatedFromAzureAdOn as DateTime?),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      createdOn: createdOn == _undefined || createdOn == null
          ? _instance.createdOn
          : (createdOn as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes accessPoints(
    Iterable<Query$GetAllGroups$allGroups$accessPoints> Function(
      Iterable<
        CopyWith$Query$GetAllGroups$allGroups$accessPoints<
          Query$GetAllGroups$allGroups$accessPoints
        >
      >,
    )
    _fn,
  ) => call(
    accessPoints: _fn(
      _instance.accessPoints.map(
        (e) => CopyWith$Query$GetAllGroups$allGroups$accessPoints(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetAllGroups$allGroups<TRes>
    implements CopyWith$Query$GetAllGroups$allGroups<TRes> {
  _CopyWithStubImpl$Query$GetAllGroups$allGroups(this._res);

  TRes _res;

  call({
    String? azureId,
    String? name,
    List<String>? users,
    List<Query$GetAllGroups$allGroups$accessPoints>? accessPoints,
    DateTime? lastUpdatedFromAzureAdOn,
    String? id,
    DateTime? createdOn,
    String? $__typename,
  }) => _res;

  accessPoints(_fn) => _res;
}

class Query$GetAllGroups$allGroups$accessPoints {
  Query$GetAllGroups$allGroups$accessPoints({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndAccessProfile',
  });

  factory Query$GetAllGroups$allGroups$accessPoints.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetAllGroups$allGroups$accessPoints(
      key: (l$key as String),
      value: Query$GetAllGroups$allGroups$accessPoints$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$GetAllGroups$allGroups$accessPoints$value value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllGroups$allGroups$accessPoints ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$GetAllGroups$allGroups$accessPoints
    on Query$GetAllGroups$allGroups$accessPoints {
  CopyWith$Query$GetAllGroups$allGroups$accessPoints<
    Query$GetAllGroups$allGroups$accessPoints
  >
  get copyWith =>
      CopyWith$Query$GetAllGroups$allGroups$accessPoints(this, (i) => i);
}

abstract class CopyWith$Query$GetAllGroups$allGroups$accessPoints<TRes> {
  factory CopyWith$Query$GetAllGroups$allGroups$accessPoints(
    Query$GetAllGroups$allGroups$accessPoints instance,
    TRes Function(Query$GetAllGroups$allGroups$accessPoints) then,
  ) = _CopyWithImpl$Query$GetAllGroups$allGroups$accessPoints;

  factory CopyWith$Query$GetAllGroups$allGroups$accessPoints.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllGroups$allGroups$accessPoints;

  TRes call({
    String? key,
    Query$GetAllGroups$allGroups$accessPoints$value? value,
    String? $__typename,
  });
  CopyWith$Query$GetAllGroups$allGroups$accessPoints$value<TRes> get value;
}

class _CopyWithImpl$Query$GetAllGroups$allGroups$accessPoints<TRes>
    implements CopyWith$Query$GetAllGroups$allGroups$accessPoints<TRes> {
  _CopyWithImpl$Query$GetAllGroups$allGroups$accessPoints(
    this._instance,
    this._then,
  );

  final Query$GetAllGroups$allGroups$accessPoints _instance;

  final TRes Function(Query$GetAllGroups$allGroups$accessPoints) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllGroups$allGroups$accessPoints(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Query$GetAllGroups$allGroups$accessPoints$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAllGroups$allGroups$accessPoints$value<TRes> get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetAllGroups$allGroups$accessPoints$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAllGroups$allGroups$accessPoints<TRes>
    implements CopyWith$Query$GetAllGroups$allGroups$accessPoints<TRes> {
  _CopyWithStubImpl$Query$GetAllGroups$allGroups$accessPoints(this._res);

  TRes _res;

  call({
    String? key,
    Query$GetAllGroups$allGroups$accessPoints$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAllGroups$allGroups$accessPoints$value<TRes> get value =>
      CopyWith$Query$GetAllGroups$allGroups$accessPoints$value.stub(_res);
}

class Query$GetAllGroups$allGroups$accessPoints$value {
  Query$GetAllGroups$allGroups$accessPoints$value({
    required this.externalId,
    required this.name,
    required this.description,
    this.$__typename = 'AccessProfile',
  });

  factory Query$GetAllGroups$allGroups$accessPoints$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$externalId = json['externalId'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$GetAllGroups$allGroups$accessPoints$value(
      externalId: (l$externalId as String),
      name: (l$name as String),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String externalId;

  final String name;

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$externalId = externalId;
    _resultData['externalId'] = l$externalId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$externalId = externalId;
    final l$name = name;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$externalId, l$name, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllGroups$allGroups$accessPoints$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetAllGroups$allGroups$accessPoints$value
    on Query$GetAllGroups$allGroups$accessPoints$value {
  CopyWith$Query$GetAllGroups$allGroups$accessPoints$value<
    Query$GetAllGroups$allGroups$accessPoints$value
  >
  get copyWith =>
      CopyWith$Query$GetAllGroups$allGroups$accessPoints$value(this, (i) => i);
}

abstract class CopyWith$Query$GetAllGroups$allGroups$accessPoints$value<TRes> {
  factory CopyWith$Query$GetAllGroups$allGroups$accessPoints$value(
    Query$GetAllGroups$allGroups$accessPoints$value instance,
    TRes Function(Query$GetAllGroups$allGroups$accessPoints$value) then,
  ) = _CopyWithImpl$Query$GetAllGroups$allGroups$accessPoints$value;

  factory CopyWith$Query$GetAllGroups$allGroups$accessPoints$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAllGroups$allGroups$accessPoints$value;

  TRes call({
    String? externalId,
    String? name,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllGroups$allGroups$accessPoints$value<TRes>
    implements CopyWith$Query$GetAllGroups$allGroups$accessPoints$value<TRes> {
  _CopyWithImpl$Query$GetAllGroups$allGroups$accessPoints$value(
    this._instance,
    this._then,
  );

  final Query$GetAllGroups$allGroups$accessPoints$value _instance;

  final TRes Function(Query$GetAllGroups$allGroups$accessPoints$value) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? externalId = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllGroups$allGroups$accessPoints$value(
      externalId: externalId == _undefined || externalId == null
          ? _instance.externalId
          : (externalId as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAllGroups$allGroups$accessPoints$value<TRes>
    implements CopyWith$Query$GetAllGroups$allGroups$accessPoints$value<TRes> {
  _CopyWithStubImpl$Query$GetAllGroups$allGroups$accessPoints$value(this._res);

  TRes _res;

  call({
    String? externalId,
    String? name,
    String? description,
    String? $__typename,
  }) => _res;
}
