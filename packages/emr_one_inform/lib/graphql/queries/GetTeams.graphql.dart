import 'package:gql/ast.dart';

class Variables$Query$GetTeams {
  factory Variables$Query$GetTeams({
    String? startDate,
    String? endDate,
    String? teamName,
    String? createdBy,
    String? teamMember,
  }) =>
      Variables$Query$GetTeams._({
        if (startDate != null) r'startDate': startDate,
        if (endDate != null) r'endDate': endDate,
        if (teamName != null) r'teamName': teamName,
        if (createdBy != null) r'createdBy': createdBy,
        if (teamMember != null) r'teamMember': teamMember,
      });

  Variables$Query$GetTeams._(this._$data);

  factory Variables$Query$GetTeams.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('startDate')) {
      final l$startDate = data['startDate'];
      result$data['startDate'] = (l$startDate as String?);
    }
    if (data.containsKey('endDate')) {
      final l$endDate = data['endDate'];
      result$data['endDate'] = (l$endDate as String?);
    }
    if (data.containsKey('teamName')) {
      final l$teamName = data['teamName'];
      result$data['teamName'] = (l$teamName as String?);
    }
    if (data.containsKey('createdBy')) {
      final l$createdBy = data['createdBy'];
      result$data['createdBy'] = (l$createdBy as String?);
    }
    if (data.containsKey('teamMember')) {
      final l$teamMember = data['teamMember'];
      result$data['teamMember'] = (l$teamMember as String?);
    }
    return Variables$Query$GetTeams._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get startDate => (_$data['startDate'] as String?);

  String? get endDate => (_$data['endDate'] as String?);

  String? get teamName => (_$data['teamName'] as String?);

  String? get createdBy => (_$data['createdBy'] as String?);

  String? get teamMember => (_$data['teamMember'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('startDate')) {
      final l$startDate = startDate;
      result$data['startDate'] = l$startDate;
    }
    if (_$data.containsKey('endDate')) {
      final l$endDate = endDate;
      result$data['endDate'] = l$endDate;
    }
    if (_$data.containsKey('teamName')) {
      final l$teamName = teamName;
      result$data['teamName'] = l$teamName;
    }
    if (_$data.containsKey('createdBy')) {
      final l$createdBy = createdBy;
      result$data['createdBy'] = l$createdBy;
    }
    if (_$data.containsKey('teamMember')) {
      final l$teamMember = teamMember;
      result$data['teamMember'] = l$teamMember;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetTeams<Variables$Query$GetTeams> get copyWith =>
      CopyWith$Variables$Query$GetTeams(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetTeams) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (_$data.containsKey('startDate') !=
        other._$data.containsKey('startDate')) {
      return false;
    }
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (_$data.containsKey('endDate') != other._$data.containsKey('endDate')) {
      return false;
    }
    if (l$endDate != lOther$endDate) {
      return false;
    }
    final l$teamName = teamName;
    final lOther$teamName = other.teamName;
    if (_$data.containsKey('teamName') !=
        other._$data.containsKey('teamName')) {
      return false;
    }
    if (l$teamName != lOther$teamName) {
      return false;
    }
    final l$createdBy = createdBy;
    final lOther$createdBy = other.createdBy;
    if (_$data.containsKey('createdBy') !=
        other._$data.containsKey('createdBy')) {
      return false;
    }
    if (l$createdBy != lOther$createdBy) {
      return false;
    }
    final l$teamMember = teamMember;
    final lOther$teamMember = other.teamMember;
    if (_$data.containsKey('teamMember') !=
        other._$data.containsKey('teamMember')) {
      return false;
    }
    if (l$teamMember != lOther$teamMember) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$teamName = teamName;
    final l$createdBy = createdBy;
    final l$teamMember = teamMember;
    return Object.hashAll([
      _$data.containsKey('startDate') ? l$startDate : const {},
      _$data.containsKey('endDate') ? l$endDate : const {},
      _$data.containsKey('teamName') ? l$teamName : const {},
      _$data.containsKey('createdBy') ? l$createdBy : const {},
      _$data.containsKey('teamMember') ? l$teamMember : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetTeams<TRes> {
  factory CopyWith$Variables$Query$GetTeams(
    Variables$Query$GetTeams instance,
    TRes Function(Variables$Query$GetTeams) then,
  ) = _CopyWithImpl$Variables$Query$GetTeams;

  factory CopyWith$Variables$Query$GetTeams.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTeams;

  TRes call({
    String? startDate,
    String? endDate,
    String? teamName,
    String? createdBy,
    String? teamMember,
  });
}

class _CopyWithImpl$Variables$Query$GetTeams<TRes>
    implements CopyWith$Variables$Query$GetTeams<TRes> {
  _CopyWithImpl$Variables$Query$GetTeams(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTeams _instance;

  final TRes Function(Variables$Query$GetTeams) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? teamName = _undefined,
    Object? createdBy = _undefined,
    Object? teamMember = _undefined,
  }) =>
      _then(Variables$Query$GetTeams._({
        ..._instance._$data,
        if (startDate != _undefined) 'startDate': (startDate as String?),
        if (endDate != _undefined) 'endDate': (endDate as String?),
        if (teamName != _undefined) 'teamName': (teamName as String?),
        if (createdBy != _undefined) 'createdBy': (createdBy as String?),
        if (teamMember != _undefined) 'teamMember': (teamMember as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTeams<TRes>
    implements CopyWith$Variables$Query$GetTeams<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTeams(this._res);

  TRes _res;

  call({
    String? startDate,
    String? endDate,
    String? teamName,
    String? createdBy,
    String? teamMember,
  }) =>
      _res;
}

class Query$GetTeams {
  Query$GetTeams({
    required this.teams,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetTeams.fromJson(Map<String, dynamic> json) {
    final l$teams = json['teams'];
    final l$$__typename = json['__typename'];
    return Query$GetTeams(
      teams: (l$teams as List<dynamic>)
          .map(
              (e) => Query$GetTeams$teams.fromJson((e as Map<String, dynamic>)))
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
    if (!(other is Query$GetTeams) || runtimeType != other.runtimeType) {
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
      CopyWith$Query$GetTeams(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTeams<TRes> {
  factory CopyWith$Query$GetTeams(
    Query$GetTeams instance,
    TRes Function(Query$GetTeams) then,
  ) = _CopyWithImpl$Query$GetTeams;

  factory CopyWith$Query$GetTeams.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTeams;

  TRes call({
    List<Query$GetTeams$teams>? teams,
    String? $__typename,
  });
  TRes teams(
      Iterable<Query$GetTeams$teams> Function(
              Iterable<CopyWith$Query$GetTeams$teams<Query$GetTeams$teams>>)
          _fn);
}

class _CopyWithImpl$Query$GetTeams<TRes>
    implements CopyWith$Query$GetTeams<TRes> {
  _CopyWithImpl$Query$GetTeams(
    this._instance,
    this._then,
  );

  final Query$GetTeams _instance;

  final TRes Function(Query$GetTeams) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? teams = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTeams(
        teams: teams == _undefined || teams == null
            ? _instance.teams
            : (teams as List<Query$GetTeams$teams>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes teams(
          Iterable<Query$GetTeams$teams> Function(
                  Iterable<CopyWith$Query$GetTeams$teams<Query$GetTeams$teams>>)
              _fn) =>
      call(
          teams: _fn(_instance.teams.map((e) => CopyWith$Query$GetTeams$teams(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetTeams<TRes>
    implements CopyWith$Query$GetTeams<TRes> {
  _CopyWithStubImpl$Query$GetTeams(this._res);

  TRes _res;

  call({
    List<Query$GetTeams$teams>? teams,
    String? $__typename,
  }) =>
      _res;

  teams(_fn) => _res;
}

const documentNodeQueryGetTeams = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTeams'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'startDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'DateTime'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'endDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'DateTime'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'teamName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'createdBy')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'teamMember')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'teams'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'startDate'),
            value: VariableNode(name: NameNode(value: 'startDate')),
          ),
          ArgumentNode(
            name: NameNode(value: 'endDate'),
            value: VariableNode(name: NameNode(value: 'endDate')),
          ),
          ArgumentNode(
            name: NameNode(value: 'teamName'),
            value: VariableNode(name: NameNode(value: 'teamName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'createdBy'),
            value: VariableNode(name: NameNode(value: 'createdBy')),
          ),
          ArgumentNode(
            name: NameNode(value: 'teamMember'),
            value: VariableNode(name: NameNode(value: 'teamMember')),
          ),
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

class Query$GetTeams$teams {
  Query$GetTeams$teams({
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

  factory Query$GetTeams$teams.fromJson(Map<String, dynamic> json) {
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
    return Query$GetTeams$teams(
      uuid: (l$uuid as String),
      name: (l$name as String),
      teamMembers: (l$teamMembers as List<dynamic>)
          .map((e) => Query$GetTeams$teams$teamMembers.fromJson(
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

  final List<Query$GetTeams$teams$teamMembers> teamMembers;

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
    if (!(other is Query$GetTeams$teams) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetTeams$teams on Query$GetTeams$teams {
  CopyWith$Query$GetTeams$teams<Query$GetTeams$teams> get copyWith =>
      CopyWith$Query$GetTeams$teams(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTeams$teams<TRes> {
  factory CopyWith$Query$GetTeams$teams(
    Query$GetTeams$teams instance,
    TRes Function(Query$GetTeams$teams) then,
  ) = _CopyWithImpl$Query$GetTeams$teams;

  factory CopyWith$Query$GetTeams$teams.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTeams$teams;

  TRes call({
    String? uuid,
    String? name,
    List<Query$GetTeams$teams$teamMembers>? teamMembers,
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
      Iterable<Query$GetTeams$teams$teamMembers> Function(
              Iterable<
                  CopyWith$Query$GetTeams$teams$teamMembers<
                      Query$GetTeams$teams$teamMembers>>)
          _fn);
}

class _CopyWithImpl$Query$GetTeams$teams<TRes>
    implements CopyWith$Query$GetTeams$teams<TRes> {
  _CopyWithImpl$Query$GetTeams$teams(
    this._instance,
    this._then,
  );

  final Query$GetTeams$teams _instance;

  final TRes Function(Query$GetTeams$teams) _then;

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
      _then(Query$GetTeams$teams(
        uuid: uuid == _undefined || uuid == null
            ? _instance.uuid
            : (uuid as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        teamMembers: teamMembers == _undefined || teamMembers == null
            ? _instance.teamMembers
            : (teamMembers as List<Query$GetTeams$teams$teamMembers>),
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
          Iterable<Query$GetTeams$teams$teamMembers> Function(
                  Iterable<
                      CopyWith$Query$GetTeams$teams$teamMembers<
                          Query$GetTeams$teams$teamMembers>>)
              _fn) =>
      call(
          teamMembers: _fn(_instance.teamMembers
              .map((e) => CopyWith$Query$GetTeams$teams$teamMembers(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetTeams$teams<TRes>
    implements CopyWith$Query$GetTeams$teams<TRes> {
  _CopyWithStubImpl$Query$GetTeams$teams(this._res);

  TRes _res;

  call({
    String? uuid,
    String? name,
    List<Query$GetTeams$teams$teamMembers>? teamMembers,
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

class Query$GetTeams$teams$teamMembers {
  Query$GetTeams$teams$teamMembers({
    required this.userName,
    required this.userUuid,
    this.$__typename = 'TeamMember',
  });

  factory Query$GetTeams$teams$teamMembers.fromJson(Map<String, dynamic> json) {
    final l$userName = json['userName'];
    final l$userUuid = json['userUuid'];
    final l$$__typename = json['__typename'];
    return Query$GetTeams$teams$teamMembers(
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
    if (!(other is Query$GetTeams$teams$teamMembers) ||
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

extension UtilityExtension$Query$GetTeams$teams$teamMembers
    on Query$GetTeams$teams$teamMembers {
  CopyWith$Query$GetTeams$teams$teamMembers<Query$GetTeams$teams$teamMembers>
      get copyWith => CopyWith$Query$GetTeams$teams$teamMembers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTeams$teams$teamMembers<TRes> {
  factory CopyWith$Query$GetTeams$teams$teamMembers(
    Query$GetTeams$teams$teamMembers instance,
    TRes Function(Query$GetTeams$teams$teamMembers) then,
  ) = _CopyWithImpl$Query$GetTeams$teams$teamMembers;

  factory CopyWith$Query$GetTeams$teams$teamMembers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTeams$teams$teamMembers;

  TRes call({
    String? userName,
    String? userUuid,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTeams$teams$teamMembers<TRes>
    implements CopyWith$Query$GetTeams$teams$teamMembers<TRes> {
  _CopyWithImpl$Query$GetTeams$teams$teamMembers(
    this._instance,
    this._then,
  );

  final Query$GetTeams$teams$teamMembers _instance;

  final TRes Function(Query$GetTeams$teams$teamMembers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userName = _undefined,
    Object? userUuid = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTeams$teams$teamMembers(
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

class _CopyWithStubImpl$Query$GetTeams$teams$teamMembers<TRes>
    implements CopyWith$Query$GetTeams$teams$teamMembers<TRes> {
  _CopyWithStubImpl$Query$GetTeams$teams$teamMembers(this._res);

  TRes _res;

  call({
    String? userName,
    String? userUuid,
    String? $__typename,
  }) =>
      _res;
}
