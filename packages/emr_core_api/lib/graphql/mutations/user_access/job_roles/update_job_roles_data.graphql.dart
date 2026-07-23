import '../../../fragments/job_role_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateJobRole {
  factory Variables$Mutation$UpdateJobRole({
    required String id,
    required String name,
    required String description,
    required List<String> systemRoleIds,
    required String territoryId,
    required bool active,
  }) => Variables$Mutation$UpdateJobRole._({
    r'id': id,
    r'name': name,
    r'description': description,
    r'systemRoleIds': systemRoleIds,
    r'territoryId': territoryId,
    r'active': active,
  });

  Variables$Mutation$UpdateJobRole._(this._$data);

  factory Variables$Mutation$UpdateJobRole.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    final l$systemRoleIds = data['systemRoleIds'];
    result$data['systemRoleIds'] = (l$systemRoleIds as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    final l$territoryId = data['territoryId'];
    result$data['territoryId'] = (l$territoryId as String);
    final l$active = data['active'];
    result$data['active'] = (l$active as bool);
    return Variables$Mutation$UpdateJobRole._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get name => (_$data['name'] as String);

  String get description => (_$data['description'] as String);

  List<String> get systemRoleIds => (_$data['systemRoleIds'] as List<String>);

  String get territoryId => (_$data['territoryId'] as String);

  bool get active => (_$data['active'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$name = name;
    result$data['name'] = l$name;
    final l$description = description;
    result$data['description'] = l$description;
    final l$systemRoleIds = systemRoleIds;
    result$data['systemRoleIds'] = l$systemRoleIds.map((e) => e).toList();
    final l$territoryId = territoryId;
    result$data['territoryId'] = l$territoryId;
    final l$active = active;
    result$data['active'] = l$active;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateJobRole<Variables$Mutation$UpdateJobRole>
  get copyWith => CopyWith$Variables$Mutation$UpdateJobRole(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateJobRole ||
        runtimeType != other.runtimeType) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$systemRoleIds = systemRoleIds;
    final lOther$systemRoleIds = other.systemRoleIds;
    if (l$systemRoleIds.length != lOther$systemRoleIds.length) {
      return false;
    }
    for (int i = 0; i < l$systemRoleIds.length; i++) {
      final l$systemRoleIds$entry = l$systemRoleIds[i];
      final lOther$systemRoleIds$entry = lOther$systemRoleIds[i];
      if (l$systemRoleIds$entry != lOther$systemRoleIds$entry) {
        return false;
      }
    }
    final l$territoryId = territoryId;
    final lOther$territoryId = other.territoryId;
    if (l$territoryId != lOther$territoryId) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$systemRoleIds = systemRoleIds;
    final l$territoryId = territoryId;
    final l$active = active;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      Object.hashAll(l$systemRoleIds.map((v) => v)),
      l$territoryId,
      l$active,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateJobRole<TRes> {
  factory CopyWith$Variables$Mutation$UpdateJobRole(
    Variables$Mutation$UpdateJobRole instance,
    TRes Function(Variables$Mutation$UpdateJobRole) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateJobRole;

  factory CopyWith$Variables$Mutation$UpdateJobRole.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateJobRole;

  TRes call({
    String? id,
    String? name,
    String? description,
    List<String>? systemRoleIds,
    String? territoryId,
    bool? active,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateJobRole<TRes>
    implements CopyWith$Variables$Mutation$UpdateJobRole<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateJobRole(this._instance, this._then);

  final Variables$Mutation$UpdateJobRole _instance;

  final TRes Function(Variables$Mutation$UpdateJobRole) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? systemRoleIds = _undefined,
    Object? territoryId = _undefined,
    Object? active = _undefined,
  }) => _then(
    Variables$Mutation$UpdateJobRole._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (name != _undefined && name != null) 'name': (name as String),
      if (description != _undefined && description != null)
        'description': (description as String),
      if (systemRoleIds != _undefined && systemRoleIds != null)
        'systemRoleIds': (systemRoleIds as List<String>),
      if (territoryId != _undefined && territoryId != null)
        'territoryId': (territoryId as String),
      if (active != _undefined && active != null) 'active': (active as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateJobRole<TRes>
    implements CopyWith$Variables$Mutation$UpdateJobRole<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateJobRole(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    List<String>? systemRoleIds,
    String? territoryId,
    bool? active,
  }) => _res;
}

class Mutation$UpdateJobRole {
  Mutation$UpdateJobRole({
    required this.updateJobRole,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateJobRole.fromJson(Map<String, dynamic> json) {
    final l$updateJobRole = json['updateJobRole'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateJobRole(
      updateJobRole: Mutation$UpdateJobRole$updateJobRole.fromJson(
        (l$updateJobRole as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateJobRole$updateJobRole updateJobRole;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateJobRole = updateJobRole;
    _resultData['updateJobRole'] = l$updateJobRole.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateJobRole = updateJobRole;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateJobRole, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateJobRole || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateJobRole = updateJobRole;
    final lOther$updateJobRole = other.updateJobRole;
    if (l$updateJobRole != lOther$updateJobRole) {
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

extension UtilityExtension$Mutation$UpdateJobRole on Mutation$UpdateJobRole {
  CopyWith$Mutation$UpdateJobRole<Mutation$UpdateJobRole> get copyWith =>
      CopyWith$Mutation$UpdateJobRole(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateJobRole<TRes> {
  factory CopyWith$Mutation$UpdateJobRole(
    Mutation$UpdateJobRole instance,
    TRes Function(Mutation$UpdateJobRole) then,
  ) = _CopyWithImpl$Mutation$UpdateJobRole;

  factory CopyWith$Mutation$UpdateJobRole.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateJobRole;

  TRes call({
    Mutation$UpdateJobRole$updateJobRole? updateJobRole,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateJobRole$updateJobRole<TRes> get updateJobRole;
}

class _CopyWithImpl$Mutation$UpdateJobRole<TRes>
    implements CopyWith$Mutation$UpdateJobRole<TRes> {
  _CopyWithImpl$Mutation$UpdateJobRole(this._instance, this._then);

  final Mutation$UpdateJobRole _instance;

  final TRes Function(Mutation$UpdateJobRole) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateJobRole = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateJobRole(
      updateJobRole: updateJobRole == _undefined || updateJobRole == null
          ? _instance.updateJobRole
          : (updateJobRole as Mutation$UpdateJobRole$updateJobRole),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateJobRole$updateJobRole<TRes> get updateJobRole {
    final local$updateJobRole = _instance.updateJobRole;
    return CopyWith$Mutation$UpdateJobRole$updateJobRole(
      local$updateJobRole,
      (e) => call(updateJobRole: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateJobRole<TRes>
    implements CopyWith$Mutation$UpdateJobRole<TRes> {
  _CopyWithStubImpl$Mutation$UpdateJobRole(this._res);

  TRes _res;

  call({
    Mutation$UpdateJobRole$updateJobRole? updateJobRole,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateJobRole$updateJobRole<TRes> get updateJobRole =>
      CopyWith$Mutation$UpdateJobRole$updateJobRole.stub(_res);
}

const documentNodeMutationUpdateJobRole = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateJobRole'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'name')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'description')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'systemRoleIds')),
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
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'territoryId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'active')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
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
            name: NameNode(value: 'updateJobRole'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: VariableNode(name: NameNode(value: 'id')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'name'),
                      value: VariableNode(name: NameNode(value: 'name')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'description'),
                      value: VariableNode(name: NameNode(value: 'description')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'systemRoleIds'),
                      value: VariableNode(
                        name: NameNode(value: 'systemRoleIds'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'territoryId'),
                      value: VariableNode(name: NameNode(value: 'territoryId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'active'),
                      value: VariableNode(name: NameNode(value: 'active')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'hasError'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'message'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'data'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'JobRoleFragment'),
                        directives: [],
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
    fragmentDefinitionJobRoleFragment,
  ],
);

class Mutation$UpdateJobRole$updateJobRole {
  Mutation$UpdateJobRole$updateJobRole({
    required this.hasError,
    this.message,
    this.data,
    this.$__typename = 'OperationOutputOfJobRole',
  });

  factory Mutation$UpdateJobRole$updateJobRole.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasError = json['hasError'];
    final l$message = json['message'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateJobRole$updateJobRole(
      hasError: (l$hasError as bool),
      message: (l$message as String?),
      data: l$data == null
          ? null
          : Fragment$JobRoleFragment.fromJson((l$data as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasError;

  final String? message;

  final Fragment$JobRoleFragment? data;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasError = hasError;
    _resultData['hasError'] = l$hasError;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$data = data;
    _resultData['data'] = l$data?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasError = hasError;
    final l$message = message;
    final l$data = data;
    final l$$__typename = $__typename;
    return Object.hashAll([l$hasError, l$message, l$data, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateJobRole$updateJobRole ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasError = hasError;
    final lOther$hasError = other.hasError;
    if (l$hasError != lOther$hasError) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
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

extension UtilityExtension$Mutation$UpdateJobRole$updateJobRole
    on Mutation$UpdateJobRole$updateJobRole {
  CopyWith$Mutation$UpdateJobRole$updateJobRole<
    Mutation$UpdateJobRole$updateJobRole
  >
  get copyWith => CopyWith$Mutation$UpdateJobRole$updateJobRole(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateJobRole$updateJobRole<TRes> {
  factory CopyWith$Mutation$UpdateJobRole$updateJobRole(
    Mutation$UpdateJobRole$updateJobRole instance,
    TRes Function(Mutation$UpdateJobRole$updateJobRole) then,
  ) = _CopyWithImpl$Mutation$UpdateJobRole$updateJobRole;

  factory CopyWith$Mutation$UpdateJobRole$updateJobRole.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateJobRole$updateJobRole;

  TRes call({
    bool? hasError,
    String? message,
    Fragment$JobRoleFragment? data,
    String? $__typename,
  });
  CopyWith$Fragment$JobRoleFragment<TRes> get data;
}

class _CopyWithImpl$Mutation$UpdateJobRole$updateJobRole<TRes>
    implements CopyWith$Mutation$UpdateJobRole$updateJobRole<TRes> {
  _CopyWithImpl$Mutation$UpdateJobRole$updateJobRole(
    this._instance,
    this._then,
  );

  final Mutation$UpdateJobRole$updateJobRole _instance;

  final TRes Function(Mutation$UpdateJobRole$updateJobRole) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasError = _undefined,
    Object? message = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateJobRole$updateJobRole(
      hasError: hasError == _undefined || hasError == null
          ? _instance.hasError
          : (hasError as bool),
      message: message == _undefined ? _instance.message : (message as String?),
      data: data == _undefined
          ? _instance.data
          : (data as Fragment$JobRoleFragment?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$JobRoleFragment<TRes> get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Fragment$JobRoleFragment.stub(_then(_instance))
        : CopyWith$Fragment$JobRoleFragment(local$data, (e) => call(data: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateJobRole$updateJobRole<TRes>
    implements CopyWith$Mutation$UpdateJobRole$updateJobRole<TRes> {
  _CopyWithStubImpl$Mutation$UpdateJobRole$updateJobRole(this._res);

  TRes _res;

  call({
    bool? hasError,
    String? message,
    Fragment$JobRoleFragment? data,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$JobRoleFragment<TRes> get data =>
      CopyWith$Fragment$JobRoleFragment.stub(_res);
}
