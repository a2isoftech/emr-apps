import 'package:gql/ast.dart';

class Variables$Query$GetTeamById {
  factory Variables$Query$GetTeamById({required String id}) =>
      Variables$Query$GetTeamById._({
        r'id': id,
      });

  Variables$Query$GetTeamById._(this._$data);

  factory Variables$Query$GetTeamById.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetTeamById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetTeamById<Variables$Query$GetTeamById>
      get copyWith => CopyWith$Variables$Query$GetTeamById(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetTeamById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$GetTeamById<TRes> {
  factory CopyWith$Variables$Query$GetTeamById(
    Variables$Query$GetTeamById instance,
    TRes Function(Variables$Query$GetTeamById) then,
  ) = _CopyWithImpl$Variables$Query$GetTeamById;

  factory CopyWith$Variables$Query$GetTeamById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTeamById;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetTeamById<TRes>
    implements CopyWith$Variables$Query$GetTeamById<TRes> {
  _CopyWithImpl$Variables$Query$GetTeamById(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTeamById _instance;

  final TRes Function(Variables$Query$GetTeamById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$GetTeamById._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTeamById<TRes>
    implements CopyWith$Variables$Query$GetTeamById<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTeamById(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetTeamById {
  Query$GetTeamById({
    this.teamById,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetTeamById.fromJson(Map<String, dynamic> json) {
    final l$teamById = json['teamById'];
    final l$$__typename = json['__typename'];
    return Query$GetTeamById(
      teamById: l$teamById == null
          ? null
          : Query$GetTeamById$teamById.fromJson(
              (l$teamById as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTeamById$teamById? teamById;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$teamById = teamById;
    _resultData['teamById'] = l$teamById?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$teamById = teamById;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$teamById,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTeamById) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$teamById = teamById;
    final lOther$teamById = other.teamById;
    if (l$teamById != lOther$teamById) {
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

extension UtilityExtension$Query$GetTeamById on Query$GetTeamById {
  CopyWith$Query$GetTeamById<Query$GetTeamById> get copyWith =>
      CopyWith$Query$GetTeamById(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTeamById<TRes> {
  factory CopyWith$Query$GetTeamById(
    Query$GetTeamById instance,
    TRes Function(Query$GetTeamById) then,
  ) = _CopyWithImpl$Query$GetTeamById;

  factory CopyWith$Query$GetTeamById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTeamById;

  TRes call({
    Query$GetTeamById$teamById? teamById,
    String? $__typename,
  });
  CopyWith$Query$GetTeamById$teamById<TRes> get teamById;
}

class _CopyWithImpl$Query$GetTeamById<TRes>
    implements CopyWith$Query$GetTeamById<TRes> {
  _CopyWithImpl$Query$GetTeamById(
    this._instance,
    this._then,
  );

  final Query$GetTeamById _instance;

  final TRes Function(Query$GetTeamById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? teamById = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTeamById(
        teamById: teamById == _undefined
            ? _instance.teamById
            : (teamById as Query$GetTeamById$teamById?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTeamById$teamById<TRes> get teamById {
    final local$teamById = _instance.teamById;
    return local$teamById == null
        ? CopyWith$Query$GetTeamById$teamById.stub(_then(_instance))
        : CopyWith$Query$GetTeamById$teamById(
            local$teamById, (e) => call(teamById: e));
  }
}

class _CopyWithStubImpl$Query$GetTeamById<TRes>
    implements CopyWith$Query$GetTeamById<TRes> {
  _CopyWithStubImpl$Query$GetTeamById(this._res);

  TRes _res;

  call({
    Query$GetTeamById$teamById? teamById,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTeamById$teamById<TRes> get teamById =>
      CopyWith$Query$GetTeamById$teamById.stub(_res);
}

const documentNodeQueryGetTeamById = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTeamById'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'teamById'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'uuid'),
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
            name: NameNode(value: 'teamMembers'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'userName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'userUuid'),
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
            name: NameNode(value: 'createdBy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'createdByUuid'),
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
            name: NameNode(value: 'modifiedBy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'modifiedByUuid'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'modifiedOn'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isActive'),
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

class Query$GetTeamById$teamById {
  Query$GetTeamById$teamById({
    required this.uuid,
    required this.name,
    required this.teamMembers,
    required this.createdBy,
    required this.createdByUuid,
    required this.createdOn,
    this.modifiedBy,
    this.modifiedByUuid,
    this.modifiedOn,
    required this.isActive,
    this.$__typename = 'Team',
  });

  factory Query$GetTeamById$teamById.fromJson(Map<String, dynamic> json) {
    final l$uuid = json['uuid'];
    final l$name = json['name'];
    final l$teamMembers = json['teamMembers'];
    final l$createdBy = json['createdBy'];
    final l$createdByUuid = json['createdByUuid'];
    final l$createdOn = json['createdOn'];
    final l$modifiedBy = json['modifiedBy'];
    final l$modifiedByUuid = json['modifiedByUuid'];
    final l$modifiedOn = json['modifiedOn'];
    final l$isActive = json['isActive'];
    final l$$__typename = json['__typename'];
    return Query$GetTeamById$teamById(
      uuid: (l$uuid as String),
      name: (l$name as String),
      teamMembers: (l$teamMembers as List<dynamic>)
          .map((e) => Query$GetTeamById$teamById$teamMembers.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      createdBy: (l$createdBy as String),
      createdByUuid: (l$createdByUuid as String),
      createdOn: (l$createdOn as String),
      modifiedBy: (l$modifiedBy as String?),
      modifiedByUuid: (l$modifiedByUuid as String?),
      modifiedOn: (l$modifiedOn as String?),
      isActive: (l$isActive as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String uuid;

  final String name;

  final List<Query$GetTeamById$teamById$teamMembers> teamMembers;

  final String createdBy;

  final String createdByUuid;

  final String createdOn;

  final String? modifiedBy;

  final String? modifiedByUuid;

  final String? modifiedOn;

  final bool isActive;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uuid = uuid;
    _resultData['uuid'] = l$uuid;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$teamMembers = teamMembers;
    _resultData['teamMembers'] = l$teamMembers.map((e) => e.toJson()).toList();
    final l$createdBy = createdBy;
    _resultData['createdBy'] = l$createdBy;
    final l$createdByUuid = createdByUuid;
    _resultData['createdByUuid'] = l$createdByUuid;
    final l$createdOn = createdOn;
    _resultData['createdOn'] = l$createdOn;
    final l$modifiedBy = modifiedBy;
    _resultData['modifiedBy'] = l$modifiedBy;
    final l$modifiedByUuid = modifiedByUuid;
    _resultData['modifiedByUuid'] = l$modifiedByUuid;
    final l$modifiedOn = modifiedOn;
    _resultData['modifiedOn'] = l$modifiedOn;
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uuid = uuid;
    final l$name = name;
    final l$teamMembers = teamMembers;
    final l$createdBy = createdBy;
    final l$createdByUuid = createdByUuid;
    final l$createdOn = createdOn;
    final l$modifiedBy = modifiedBy;
    final l$modifiedByUuid = modifiedByUuid;
    final l$modifiedOn = modifiedOn;
    final l$isActive = isActive;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uuid,
      l$name,
      Object.hashAll(l$teamMembers.map((v) => v)),
      l$createdBy,
      l$createdByUuid,
      l$createdOn,
      l$modifiedBy,
      l$modifiedByUuid,
      l$modifiedOn,
      l$isActive,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTeamById$teamById) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uuid = uuid;
    final lOther$uuid = other.uuid;
    if (l$uuid != lOther$uuid) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$teamMembers = teamMembers;
    final lOther$teamMembers = other.teamMembers;
    if (l$teamMembers.length != lOther$teamMembers.length) {
      return false;
    }
    for (int i = 0; i < l$teamMembers.length; i++) {
      final l$teamMembers$entry = l$teamMembers[i];
      final lOther$teamMembers$entry = lOther$teamMembers[i];
      if (l$teamMembers$entry != lOther$teamMembers$entry) {
        return false;
      }
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$createdByUuid = createdByUuid;
    final lOther$createdByUuid = other.createdByUuid;
    if (l$createdByUuid != lOther$createdByUuid) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$modifiedBy = modifiedBy;
    final lOther$modifiedBy = other.modifiedBy;
    if (l$modifiedBy != lOther$modifiedBy) {
      return false;
    }
    final l$modifiedByUuid = modifiedByUuid;
    final lOther$modifiedByUuid = other.modifiedByUuid;
    if (l$modifiedByUuid != lOther$modifiedByUuid) {
      return false;
    }
    final l$modifiedOn = modifiedOn;
    final lOther$modifiedOn = other.modifiedOn;
    if (l$modifiedOn != lOther$modifiedOn) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
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

extension UtilityExtension$Query$GetTeamById$teamById
    on Query$GetTeamById$teamById {
  CopyWith$Query$GetTeamById$teamById<Query$GetTeamById$teamById>
      get copyWith => CopyWith$Query$GetTeamById$teamById(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTeamById$teamById<TRes> {
  factory CopyWith$Query$GetTeamById$teamById(
    Query$GetTeamById$teamById instance,
    TRes Function(Query$GetTeamById$teamById) then,
  ) = _CopyWithImpl$Query$GetTeamById$teamById;

  factory CopyWith$Query$GetTeamById$teamById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTeamById$teamById;

  TRes call({
    String? uuid,
    String? name,
    List<Query$GetTeamById$teamById$teamMembers>? teamMembers,
    String? createdBy,
    String? createdByUuid,
    String? createdOn,
    String? modifiedBy,
    String? modifiedByUuid,
    String? modifiedOn,
    bool? isActive,
    String? $__typename,
  });
  TRes teamMembers(
      Iterable<Query$GetTeamById$teamById$teamMembers> Function(
              Iterable<
                  CopyWith$Query$GetTeamById$teamById$teamMembers<
                      Query$GetTeamById$teamById$teamMembers>>)
          _fn);
}

class _CopyWithImpl$Query$GetTeamById$teamById<TRes>
    implements CopyWith$Query$GetTeamById$teamById<TRes> {
  _CopyWithImpl$Query$GetTeamById$teamById(
    this._instance,
    this._then,
  );

  final Query$GetTeamById$teamById _instance;

  final TRes Function(Query$GetTeamById$teamById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uuid = _undefined,
    Object? name = _undefined,
    Object? teamMembers = _undefined,
    Object? createdBy = _undefined,
    Object? createdByUuid = _undefined,
    Object? createdOn = _undefined,
    Object? modifiedBy = _undefined,
    Object? modifiedByUuid = _undefined,
    Object? modifiedOn = _undefined,
    Object? isActive = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTeamById$teamById(
        uuid: uuid == _undefined || uuid == null
            ? _instance.uuid
            : (uuid as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        teamMembers: teamMembers == _undefined || teamMembers == null
            ? _instance.teamMembers
            : (teamMembers as List<Query$GetTeamById$teamById$teamMembers>),
        createdBy: createdBy == _undefined || createdBy == null
            ? _instance.createdBy
            : (createdBy as String),
        createdByUuid: createdByUuid == _undefined || createdByUuid == null
            ? _instance.createdByUuid
            : (createdByUuid as String),
        createdOn: createdOn == _undefined || createdOn == null
            ? _instance.createdOn
            : (createdOn as String),
        modifiedBy: modifiedBy == _undefined
            ? _instance.modifiedBy
            : (modifiedBy as String?),
        modifiedByUuid: modifiedByUuid == _undefined
            ? _instance.modifiedByUuid
            : (modifiedByUuid as String?),
        modifiedOn: modifiedOn == _undefined
            ? _instance.modifiedOn
            : (modifiedOn as String?),
        isActive: isActive == _undefined || isActive == null
            ? _instance.isActive
            : (isActive as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes teamMembers(
          Iterable<Query$GetTeamById$teamById$teamMembers> Function(
                  Iterable<
                      CopyWith$Query$GetTeamById$teamById$teamMembers<
                          Query$GetTeamById$teamById$teamMembers>>)
              _fn) =>
      call(
          teamMembers: _fn(_instance.teamMembers
              .map((e) => CopyWith$Query$GetTeamById$teamById$teamMembers(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetTeamById$teamById<TRes>
    implements CopyWith$Query$GetTeamById$teamById<TRes> {
  _CopyWithStubImpl$Query$GetTeamById$teamById(this._res);

  TRes _res;

  call({
    String? uuid,
    String? name,
    List<Query$GetTeamById$teamById$teamMembers>? teamMembers,
    String? createdBy,
    String? createdByUuid,
    String? createdOn,
    String? modifiedBy,
    String? modifiedByUuid,
    String? modifiedOn,
    bool? isActive,
    String? $__typename,
  }) =>
      _res;

  teamMembers(_fn) => _res;
}

class Query$GetTeamById$teamById$teamMembers {
  Query$GetTeamById$teamById$teamMembers({
    required this.userName,
    required this.userUuid,
    this.$__typename = 'TeamMember',
  });

  factory Query$GetTeamById$teamById$teamMembers.fromJson(
      Map<String, dynamic> json) {
    final l$userName = json['userName'];
    final l$userUuid = json['userUuid'];
    final l$$__typename = json['__typename'];
    return Query$GetTeamById$teamById$teamMembers(
      userName: (l$userName as String),
      userUuid: (l$userUuid as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String userName;

  final String userUuid;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$userUuid = userUuid;
    _resultData['userUuid'] = l$userUuid;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userName = userName;
    final l$userUuid = userUuid;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userName,
      l$userUuid,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTeamById$teamById$teamMembers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$userUuid = userUuid;
    final lOther$userUuid = other.userUuid;
    if (l$userUuid != lOther$userUuid) {
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

extension UtilityExtension$Query$GetTeamById$teamById$teamMembers
    on Query$GetTeamById$teamById$teamMembers {
  CopyWith$Query$GetTeamById$teamById$teamMembers<
          Query$GetTeamById$teamById$teamMembers>
      get copyWith => CopyWith$Query$GetTeamById$teamById$teamMembers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTeamById$teamById$teamMembers<TRes> {
  factory CopyWith$Query$GetTeamById$teamById$teamMembers(
    Query$GetTeamById$teamById$teamMembers instance,
    TRes Function(Query$GetTeamById$teamById$teamMembers) then,
  ) = _CopyWithImpl$Query$GetTeamById$teamById$teamMembers;

  factory CopyWith$Query$GetTeamById$teamById$teamMembers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTeamById$teamById$teamMembers;

  TRes call({
    String? userName,
    String? userUuid,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTeamById$teamById$teamMembers<TRes>
    implements CopyWith$Query$GetTeamById$teamById$teamMembers<TRes> {
  _CopyWithImpl$Query$GetTeamById$teamById$teamMembers(
    this._instance,
    this._then,
  );

  final Query$GetTeamById$teamById$teamMembers _instance;

  final TRes Function(Query$GetTeamById$teamById$teamMembers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userName = _undefined,
    Object? userUuid = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTeamById$teamById$teamMembers(
        userName: userName == _undefined || userName == null
            ? _instance.userName
            : (userName as String),
        userUuid: userUuid == _undefined || userUuid == null
            ? _instance.userUuid
            : (userUuid as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTeamById$teamById$teamMembers<TRes>
    implements CopyWith$Query$GetTeamById$teamById$teamMembers<TRes> {
  _CopyWithStubImpl$Query$GetTeamById$teamById$teamMembers(this._res);

  TRes _res;

  call({
    String? userName,
    String? userUuid,
    String? $__typename,
  }) =>
      _res;
}
