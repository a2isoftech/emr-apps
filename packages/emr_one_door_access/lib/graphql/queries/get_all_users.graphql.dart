import 'package:gql/ast.dart';

class Query$GetAllUsers {
  Query$GetAllUsers({required this.allUsers, this.$__typename = 'Query'});

  factory Query$GetAllUsers.fromJson(Map<String, dynamic> json) {
    final l$allUsers = json['allUsers'];
    final l$$__typename = json['__typename'];
    return Query$GetAllUsers(
      allUsers: (l$allUsers as List<dynamic>)
          .map(
            (e) => Query$GetAllUsers$allUsers.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllUsers$allUsers> allUsers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allUsers = allUsers;
    _resultData['allUsers'] = l$allUsers.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allUsers = allUsers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$allUsers.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllUsers || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allUsers = allUsers;
    final lOther$allUsers = other.allUsers;
    if (l$allUsers.length != lOther$allUsers.length) {
      return false;
    }
    for (int i = 0; i < l$allUsers.length; i++) {
      final l$allUsers$entry = l$allUsers[i];
      final lOther$allUsers$entry = lOther$allUsers[i];
      if (l$allUsers$entry != lOther$allUsers$entry) {
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

extension UtilityExtension$Query$GetAllUsers on Query$GetAllUsers {
  CopyWith$Query$GetAllUsers<Query$GetAllUsers> get copyWith =>
      CopyWith$Query$GetAllUsers(this, (i) => i);
}

abstract class CopyWith$Query$GetAllUsers<TRes> {
  factory CopyWith$Query$GetAllUsers(
    Query$GetAllUsers instance,
    TRes Function(Query$GetAllUsers) then,
  ) = _CopyWithImpl$Query$GetAllUsers;

  factory CopyWith$Query$GetAllUsers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllUsers;

  TRes call({List<Query$GetAllUsers$allUsers>? allUsers, String? $__typename});
  TRes allUsers(
    Iterable<Query$GetAllUsers$allUsers> Function(
      Iterable<CopyWith$Query$GetAllUsers$allUsers<Query$GetAllUsers$allUsers>>,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAllUsers<TRes>
    implements CopyWith$Query$GetAllUsers<TRes> {
  _CopyWithImpl$Query$GetAllUsers(this._instance, this._then);

  final Query$GetAllUsers _instance;

  final TRes Function(Query$GetAllUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allUsers = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllUsers(
      allUsers: allUsers == _undefined || allUsers == null
          ? _instance.allUsers
          : (allUsers as List<Query$GetAllUsers$allUsers>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes allUsers(
    Iterable<Query$GetAllUsers$allUsers> Function(
      Iterable<CopyWith$Query$GetAllUsers$allUsers<Query$GetAllUsers$allUsers>>,
    )
    _fn,
  ) => call(
    allUsers: _fn(
      _instance.allUsers.map(
        (e) => CopyWith$Query$GetAllUsers$allUsers(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetAllUsers<TRes>
    implements CopyWith$Query$GetAllUsers<TRes> {
  _CopyWithStubImpl$Query$GetAllUsers(this._res);

  TRes _res;

  call({List<Query$GetAllUsers$allUsers>? allUsers, String? $__typename}) =>
      _res;

  allUsers(_fn) => _res;
}

const documentNodeQueryGetAllUsers = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAllUsers'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'allUsers'),
            alias: null,
            arguments: [],
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
                  name: NameNode(value: 'userName'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'cardNumber'),
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
                  name: NameNode(value: 'groups'),
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
                  name: NameNode(value: 'externalId'),
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

class Query$GetAllUsers$allUsers {
  Query$GetAllUsers$allUsers({
    this.azureId,
    required this.name,
    required this.userName,
    required this.cardNumber,
    required this.id,
    this.groups,
    this.externalId,
    this.$__typename = 'User',
  });

  factory Query$GetAllUsers$allUsers.fromJson(Map<String, dynamic> json) {
    final l$azureId = json['azureId'];
    final l$name = json['name'];
    final l$userName = json['userName'];
    final l$cardNumber = json['cardNumber'];
    final l$id = json['id'];
    final l$groups = json['groups'];
    final l$externalId = json['externalId'];
    final l$$__typename = json['__typename'];
    return Query$GetAllUsers$allUsers(
      azureId: (l$azureId as String?),
      name: (l$name as String),
      userName: (l$userName as String),
      cardNumber: (l$cardNumber as String),
      id: (l$id as String),
      groups: (l$groups as List<dynamic>?)
          ?.map(
            (e) => Query$GetAllUsers$allUsers$groups.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      externalId: (l$externalId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? azureId;

  final String name;

  final String userName;

  final String cardNumber;

  final String id;

  final List<Query$GetAllUsers$allUsers$groups>? groups;

  final String? externalId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$azureId = azureId;
    _resultData['azureId'] = l$azureId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$cardNumber = cardNumber;
    _resultData['cardNumber'] = l$cardNumber;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$groups = groups;
    _resultData['groups'] = l$groups?.map((e) => e.toJson()).toList();
    final l$externalId = externalId;
    _resultData['externalId'] = l$externalId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$azureId = azureId;
    final l$name = name;
    final l$userName = userName;
    final l$cardNumber = cardNumber;
    final l$id = id;
    final l$groups = groups;
    final l$externalId = externalId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$azureId,
      l$name,
      l$userName,
      l$cardNumber,
      l$id,
      l$groups == null ? null : Object.hashAll(l$groups.map((v) => v)),
      l$externalId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllUsers$allUsers ||
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
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$cardNumber = cardNumber;
    final lOther$cardNumber = other.cardNumber;
    if (l$cardNumber != lOther$cardNumber) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (l$groups != null && lOther$groups != null) {
      if (l$groups.length != lOther$groups.length) {
        return false;
      }
      for (int i = 0; i < l$groups.length; i++) {
        final l$groups$entry = l$groups[i];
        final lOther$groups$entry = lOther$groups[i];
        if (l$groups$entry != lOther$groups$entry) {
          return false;
        }
      }
    } else if (l$groups != lOther$groups) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (l$externalId != lOther$externalId) {
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

extension UtilityExtension$Query$GetAllUsers$allUsers
    on Query$GetAllUsers$allUsers {
  CopyWith$Query$GetAllUsers$allUsers<Query$GetAllUsers$allUsers>
  get copyWith => CopyWith$Query$GetAllUsers$allUsers(this, (i) => i);
}

abstract class CopyWith$Query$GetAllUsers$allUsers<TRes> {
  factory CopyWith$Query$GetAllUsers$allUsers(
    Query$GetAllUsers$allUsers instance,
    TRes Function(Query$GetAllUsers$allUsers) then,
  ) = _CopyWithImpl$Query$GetAllUsers$allUsers;

  factory CopyWith$Query$GetAllUsers$allUsers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllUsers$allUsers;

  TRes call({
    String? azureId,
    String? name,
    String? userName,
    String? cardNumber,
    String? id,
    List<Query$GetAllUsers$allUsers$groups>? groups,
    String? externalId,
    String? $__typename,
  });
  TRes groups(
    Iterable<Query$GetAllUsers$allUsers$groups>? Function(
      Iterable<
        CopyWith$Query$GetAllUsers$allUsers$groups<
          Query$GetAllUsers$allUsers$groups
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAllUsers$allUsers<TRes>
    implements CopyWith$Query$GetAllUsers$allUsers<TRes> {
  _CopyWithImpl$Query$GetAllUsers$allUsers(this._instance, this._then);

  final Query$GetAllUsers$allUsers _instance;

  final TRes Function(Query$GetAllUsers$allUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? azureId = _undefined,
    Object? name = _undefined,
    Object? userName = _undefined,
    Object? cardNumber = _undefined,
    Object? id = _undefined,
    Object? groups = _undefined,
    Object? externalId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAllUsers$allUsers(
      azureId: azureId == _undefined ? _instance.azureId : (azureId as String?),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      cardNumber: cardNumber == _undefined || cardNumber == null
          ? _instance.cardNumber
          : (cardNumber as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      groups: groups == _undefined
          ? _instance.groups
          : (groups as List<Query$GetAllUsers$allUsers$groups>?),
      externalId: externalId == _undefined
          ? _instance.externalId
          : (externalId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes groups(
    Iterable<Query$GetAllUsers$allUsers$groups>? Function(
      Iterable<
        CopyWith$Query$GetAllUsers$allUsers$groups<
          Query$GetAllUsers$allUsers$groups
        >
      >?,
    )
    _fn,
  ) => call(
    groups: _fn(
      _instance.groups?.map(
        (e) => CopyWith$Query$GetAllUsers$allUsers$groups(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetAllUsers$allUsers<TRes>
    implements CopyWith$Query$GetAllUsers$allUsers<TRes> {
  _CopyWithStubImpl$Query$GetAllUsers$allUsers(this._res);

  TRes _res;

  call({
    String? azureId,
    String? name,
    String? userName,
    String? cardNumber,
    String? id,
    List<Query$GetAllUsers$allUsers$groups>? groups,
    String? externalId,
    String? $__typename,
  }) => _res;

  groups(_fn) => _res;
}

class Query$GetAllUsers$allUsers$groups {
  Query$GetAllUsers$allUsers$groups({
    required this.id,
    this.$__typename = 'Group',
  });

  factory Query$GetAllUsers$allUsers$groups.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetAllUsers$allUsers$groups(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAllUsers$allUsers$groups ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetAllUsers$allUsers$groups
    on Query$GetAllUsers$allUsers$groups {
  CopyWith$Query$GetAllUsers$allUsers$groups<Query$GetAllUsers$allUsers$groups>
  get copyWith => CopyWith$Query$GetAllUsers$allUsers$groups(this, (i) => i);
}

abstract class CopyWith$Query$GetAllUsers$allUsers$groups<TRes> {
  factory CopyWith$Query$GetAllUsers$allUsers$groups(
    Query$GetAllUsers$allUsers$groups instance,
    TRes Function(Query$GetAllUsers$allUsers$groups) then,
  ) = _CopyWithImpl$Query$GetAllUsers$allUsers$groups;

  factory CopyWith$Query$GetAllUsers$allUsers$groups.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllUsers$allUsers$groups;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Query$GetAllUsers$allUsers$groups<TRes>
    implements CopyWith$Query$GetAllUsers$allUsers$groups<TRes> {
  _CopyWithImpl$Query$GetAllUsers$allUsers$groups(this._instance, this._then);

  final Query$GetAllUsers$allUsers$groups _instance;

  final TRes Function(Query$GetAllUsers$allUsers$groups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetAllUsers$allUsers$groups(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$GetAllUsers$allUsers$groups<TRes>
    implements CopyWith$Query$GetAllUsers$allUsers$groups<TRes> {
  _CopyWithStubImpl$Query$GetAllUsers$allUsers$groups(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
