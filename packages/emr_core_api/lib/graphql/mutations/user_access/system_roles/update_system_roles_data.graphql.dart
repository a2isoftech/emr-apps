import '../../../fragments/system_role_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateSystemRole {
  factory Variables$Mutation$UpdateSystemRole({
    required String id,
    required String name,
    required String description,
    required List<String> permissionNames,
    required bool active,
  }) => Variables$Mutation$UpdateSystemRole._({
    r'id': id,
    r'name': name,
    r'description': description,
    r'permissionNames': permissionNames,
    r'active': active,
  });

  Variables$Mutation$UpdateSystemRole._(this._$data);

  factory Variables$Mutation$UpdateSystemRole.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    final l$permissionNames = data['permissionNames'];
    result$data['permissionNames'] = (l$permissionNames as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    final l$active = data['active'];
    result$data['active'] = (l$active as bool);
    return Variables$Mutation$UpdateSystemRole._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get name => (_$data['name'] as String);

  String get description => (_$data['description'] as String);

  List<String> get permissionNames =>
      (_$data['permissionNames'] as List<String>);

  bool get active => (_$data['active'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$name = name;
    result$data['name'] = l$name;
    final l$description = description;
    result$data['description'] = l$description;
    final l$permissionNames = permissionNames;
    result$data['permissionNames'] = l$permissionNames.map((e) => e).toList();
    final l$active = active;
    result$data['active'] = l$active;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateSystemRole<
    Variables$Mutation$UpdateSystemRole
  >
  get copyWith => CopyWith$Variables$Mutation$UpdateSystemRole(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateSystemRole ||
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
    final l$permissionNames = permissionNames;
    final lOther$permissionNames = other.permissionNames;
    if (l$permissionNames.length != lOther$permissionNames.length) {
      return false;
    }
    for (int i = 0; i < l$permissionNames.length; i++) {
      final l$permissionNames$entry = l$permissionNames[i];
      final lOther$permissionNames$entry = lOther$permissionNames[i];
      if (l$permissionNames$entry != lOther$permissionNames$entry) {
        return false;
      }
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
    final l$permissionNames = permissionNames;
    final l$active = active;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      Object.hashAll(l$permissionNames.map((v) => v)),
      l$active,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateSystemRole<TRes> {
  factory CopyWith$Variables$Mutation$UpdateSystemRole(
    Variables$Mutation$UpdateSystemRole instance,
    TRes Function(Variables$Mutation$UpdateSystemRole) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateSystemRole;

  factory CopyWith$Variables$Mutation$UpdateSystemRole.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateSystemRole;

  TRes call({
    String? id,
    String? name,
    String? description,
    List<String>? permissionNames,
    bool? active,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateSystemRole<TRes>
    implements CopyWith$Variables$Mutation$UpdateSystemRole<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateSystemRole(this._instance, this._then);

  final Variables$Mutation$UpdateSystemRole _instance;

  final TRes Function(Variables$Mutation$UpdateSystemRole) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? permissionNames = _undefined,
    Object? active = _undefined,
  }) => _then(
    Variables$Mutation$UpdateSystemRole._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (name != _undefined && name != null) 'name': (name as String),
      if (description != _undefined && description != null)
        'description': (description as String),
      if (permissionNames != _undefined && permissionNames != null)
        'permissionNames': (permissionNames as List<String>),
      if (active != _undefined && active != null) 'active': (active as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateSystemRole<TRes>
    implements CopyWith$Variables$Mutation$UpdateSystemRole<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateSystemRole(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    List<String>? permissionNames,
    bool? active,
  }) => _res;
}

class Mutation$UpdateSystemRole {
  Mutation$UpdateSystemRole({
    required this.updateSystemRole,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateSystemRole.fromJson(Map<String, dynamic> json) {
    final l$updateSystemRole = json['updateSystemRole'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateSystemRole(
      updateSystemRole: Mutation$UpdateSystemRole$updateSystemRole.fromJson(
        (l$updateSystemRole as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateSystemRole$updateSystemRole updateSystemRole;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateSystemRole = updateSystemRole;
    _resultData['updateSystemRole'] = l$updateSystemRole.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateSystemRole = updateSystemRole;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateSystemRole, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateSystemRole ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateSystemRole = updateSystemRole;
    final lOther$updateSystemRole = other.updateSystemRole;
    if (l$updateSystemRole != lOther$updateSystemRole) {
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

extension UtilityExtension$Mutation$UpdateSystemRole
    on Mutation$UpdateSystemRole {
  CopyWith$Mutation$UpdateSystemRole<Mutation$UpdateSystemRole> get copyWith =>
      CopyWith$Mutation$UpdateSystemRole(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateSystemRole<TRes> {
  factory CopyWith$Mutation$UpdateSystemRole(
    Mutation$UpdateSystemRole instance,
    TRes Function(Mutation$UpdateSystemRole) then,
  ) = _CopyWithImpl$Mutation$UpdateSystemRole;

  factory CopyWith$Mutation$UpdateSystemRole.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateSystemRole;

  TRes call({
    Mutation$UpdateSystemRole$updateSystemRole? updateSystemRole,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateSystemRole$updateSystemRole<TRes>
  get updateSystemRole;
}

class _CopyWithImpl$Mutation$UpdateSystemRole<TRes>
    implements CopyWith$Mutation$UpdateSystemRole<TRes> {
  _CopyWithImpl$Mutation$UpdateSystemRole(this._instance, this._then);

  final Mutation$UpdateSystemRole _instance;

  final TRes Function(Mutation$UpdateSystemRole) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateSystemRole = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateSystemRole(
      updateSystemRole:
          updateSystemRole == _undefined || updateSystemRole == null
          ? _instance.updateSystemRole
          : (updateSystemRole as Mutation$UpdateSystemRole$updateSystemRole),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateSystemRole$updateSystemRole<TRes>
  get updateSystemRole {
    final local$updateSystemRole = _instance.updateSystemRole;
    return CopyWith$Mutation$UpdateSystemRole$updateSystemRole(
      local$updateSystemRole,
      (e) => call(updateSystemRole: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateSystemRole<TRes>
    implements CopyWith$Mutation$UpdateSystemRole<TRes> {
  _CopyWithStubImpl$Mutation$UpdateSystemRole(this._res);

  TRes _res;

  call({
    Mutation$UpdateSystemRole$updateSystemRole? updateSystemRole,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateSystemRole$updateSystemRole<TRes>
  get updateSystemRole =>
      CopyWith$Mutation$UpdateSystemRole$updateSystemRole.stub(_res);
}

const documentNodeMutationUpdateSystemRole = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateSystemRole'),
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
          variable: VariableNode(name: NameNode(value: 'permissionNames')),
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
            name: NameNode(value: 'updateSystemRole'),
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
                      name: NameNode(value: 'permissionNames'),
                      value: VariableNode(
                        name: NameNode(value: 'permissionNames'),
                      ),
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
                  name: NameNode(value: 'data'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'SystemRoleFragment'),
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
    fragmentDefinitionSystemRoleFragment,
  ],
);

class Mutation$UpdateSystemRole$updateSystemRole {
  Mutation$UpdateSystemRole$updateSystemRole({
    this.data,
    required this.hasError,
    this.message,
    this.$__typename = 'OperationOutputOfSystemRole',
  });

  factory Mutation$UpdateSystemRole$updateSystemRole.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$data = json['data'];
    final l$hasError = json['hasError'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateSystemRole$updateSystemRole(
      data: l$data == null
          ? null
          : Fragment$SystemRoleFragment.fromJson(
              (l$data as Map<String, dynamic>),
            ),
      hasError: (l$hasError as bool),
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$SystemRoleFragment? data;

  final bool hasError;

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$data = data;
    _resultData['data'] = l$data?.toJson();
    final l$hasError = hasError;
    _resultData['hasError'] = l$hasError;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$hasError = hasError;
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([l$data, l$hasError, l$message, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateSystemRole$updateSystemRole ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateSystemRole$updateSystemRole
    on Mutation$UpdateSystemRole$updateSystemRole {
  CopyWith$Mutation$UpdateSystemRole$updateSystemRole<
    Mutation$UpdateSystemRole$updateSystemRole
  >
  get copyWith =>
      CopyWith$Mutation$UpdateSystemRole$updateSystemRole(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateSystemRole$updateSystemRole<TRes> {
  factory CopyWith$Mutation$UpdateSystemRole$updateSystemRole(
    Mutation$UpdateSystemRole$updateSystemRole instance,
    TRes Function(Mutation$UpdateSystemRole$updateSystemRole) then,
  ) = _CopyWithImpl$Mutation$UpdateSystemRole$updateSystemRole;

  factory CopyWith$Mutation$UpdateSystemRole$updateSystemRole.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateSystemRole$updateSystemRole;

  TRes call({
    Fragment$SystemRoleFragment? data,
    bool? hasError,
    String? message,
    String? $__typename,
  });
  CopyWith$Fragment$SystemRoleFragment<TRes> get data;
}

class _CopyWithImpl$Mutation$UpdateSystemRole$updateSystemRole<TRes>
    implements CopyWith$Mutation$UpdateSystemRole$updateSystemRole<TRes> {
  _CopyWithImpl$Mutation$UpdateSystemRole$updateSystemRole(
    this._instance,
    this._then,
  );

  final Mutation$UpdateSystemRole$updateSystemRole _instance;

  final TRes Function(Mutation$UpdateSystemRole$updateSystemRole) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? hasError = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateSystemRole$updateSystemRole(
      data: data == _undefined
          ? _instance.data
          : (data as Fragment$SystemRoleFragment?),
      hasError: hasError == _undefined || hasError == null
          ? _instance.hasError
          : (hasError as bool),
      message: message == _undefined ? _instance.message : (message as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$SystemRoleFragment<TRes> get data {
    final local$data = _instance.data;
    return local$data == null
        ? CopyWith$Fragment$SystemRoleFragment.stub(_then(_instance))
        : CopyWith$Fragment$SystemRoleFragment(
            local$data,
            (e) => call(data: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateSystemRole$updateSystemRole<TRes>
    implements CopyWith$Mutation$UpdateSystemRole$updateSystemRole<TRes> {
  _CopyWithStubImpl$Mutation$UpdateSystemRole$updateSystemRole(this._res);

  TRes _res;

  call({
    Fragment$SystemRoleFragment? data,
    bool? hasError,
    String? message,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$SystemRoleFragment<TRes> get data =>
      CopyWith$Fragment$SystemRoleFragment.stub(_res);
}
