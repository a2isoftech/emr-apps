import '../../../fragments/system_role_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateSystemRole {
  factory Variables$Mutation$CreateSystemRole({
    required String name,
    required String description,
    required List<String> permissionNames,
    required bool active,
  }) => Variables$Mutation$CreateSystemRole._({
    r'name': name,
    r'description': description,
    r'permissionNames': permissionNames,
    r'active': active,
  });

  Variables$Mutation$CreateSystemRole._(this._$data);

  factory Variables$Mutation$CreateSystemRole.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
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
    return Variables$Mutation$CreateSystemRole._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String get description => (_$data['description'] as String);

  List<String> get permissionNames =>
      (_$data['permissionNames'] as List<String>);

  bool get active => (_$data['active'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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

  CopyWith$Variables$Mutation$CreateSystemRole<
    Variables$Mutation$CreateSystemRole
  >
  get copyWith => CopyWith$Variables$Mutation$CreateSystemRole(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateSystemRole ||
        runtimeType != other.runtimeType) {
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
    final l$name = name;
    final l$description = description;
    final l$permissionNames = permissionNames;
    final l$active = active;
    return Object.hashAll([
      l$name,
      l$description,
      Object.hashAll(l$permissionNames.map((v) => v)),
      l$active,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateSystemRole<TRes> {
  factory CopyWith$Variables$Mutation$CreateSystemRole(
    Variables$Mutation$CreateSystemRole instance,
    TRes Function(Variables$Mutation$CreateSystemRole) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateSystemRole;

  factory CopyWith$Variables$Mutation$CreateSystemRole.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateSystemRole;

  TRes call({
    String? name,
    String? description,
    List<String>? permissionNames,
    bool? active,
  });
}

class _CopyWithImpl$Variables$Mutation$CreateSystemRole<TRes>
    implements CopyWith$Variables$Mutation$CreateSystemRole<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateSystemRole(this._instance, this._then);

  final Variables$Mutation$CreateSystemRole _instance;

  final TRes Function(Variables$Mutation$CreateSystemRole) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? description = _undefined,
    Object? permissionNames = _undefined,
    Object? active = _undefined,
  }) => _then(
    Variables$Mutation$CreateSystemRole._({
      ..._instance._$data,
      if (name != _undefined && name != null) 'name': (name as String),
      if (description != _undefined && description != null)
        'description': (description as String),
      if (permissionNames != _undefined && permissionNames != null)
        'permissionNames': (permissionNames as List<String>),
      if (active != _undefined && active != null) 'active': (active as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateSystemRole<TRes>
    implements CopyWith$Variables$Mutation$CreateSystemRole<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateSystemRole(this._res);

  TRes _res;

  call({
    String? name,
    String? description,
    List<String>? permissionNames,
    bool? active,
  }) => _res;
}

class Mutation$CreateSystemRole {
  Mutation$CreateSystemRole({
    required this.createSystemRole,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateSystemRole.fromJson(Map<String, dynamic> json) {
    final l$createSystemRole = json['createSystemRole'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateSystemRole(
      createSystemRole: Mutation$CreateSystemRole$createSystemRole.fromJson(
        (l$createSystemRole as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateSystemRole$createSystemRole createSystemRole;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createSystemRole = createSystemRole;
    _resultData['createSystemRole'] = l$createSystemRole.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createSystemRole = createSystemRole;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createSystemRole, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateSystemRole ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createSystemRole = createSystemRole;
    final lOther$createSystemRole = other.createSystemRole;
    if (l$createSystemRole != lOther$createSystemRole) {
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

extension UtilityExtension$Mutation$CreateSystemRole
    on Mutation$CreateSystemRole {
  CopyWith$Mutation$CreateSystemRole<Mutation$CreateSystemRole> get copyWith =>
      CopyWith$Mutation$CreateSystemRole(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateSystemRole<TRes> {
  factory CopyWith$Mutation$CreateSystemRole(
    Mutation$CreateSystemRole instance,
    TRes Function(Mutation$CreateSystemRole) then,
  ) = _CopyWithImpl$Mutation$CreateSystemRole;

  factory CopyWith$Mutation$CreateSystemRole.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateSystemRole;

  TRes call({
    Mutation$CreateSystemRole$createSystemRole? createSystemRole,
    String? $__typename,
  });
  CopyWith$Mutation$CreateSystemRole$createSystemRole<TRes>
  get createSystemRole;
}

class _CopyWithImpl$Mutation$CreateSystemRole<TRes>
    implements CopyWith$Mutation$CreateSystemRole<TRes> {
  _CopyWithImpl$Mutation$CreateSystemRole(this._instance, this._then);

  final Mutation$CreateSystemRole _instance;

  final TRes Function(Mutation$CreateSystemRole) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createSystemRole = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateSystemRole(
      createSystemRole:
          createSystemRole == _undefined || createSystemRole == null
          ? _instance.createSystemRole
          : (createSystemRole as Mutation$CreateSystemRole$createSystemRole),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateSystemRole$createSystemRole<TRes>
  get createSystemRole {
    final local$createSystemRole = _instance.createSystemRole;
    return CopyWith$Mutation$CreateSystemRole$createSystemRole(
      local$createSystemRole,
      (e) => call(createSystemRole: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CreateSystemRole<TRes>
    implements CopyWith$Mutation$CreateSystemRole<TRes> {
  _CopyWithStubImpl$Mutation$CreateSystemRole(this._res);

  TRes _res;

  call({
    Mutation$CreateSystemRole$createSystemRole? createSystemRole,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateSystemRole$createSystemRole<TRes>
  get createSystemRole =>
      CopyWith$Mutation$CreateSystemRole$createSystemRole.stub(_res);
}

const documentNodeMutationCreateSystemRole = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateSystemRole'),
      variableDefinitions: [
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
            name: NameNode(value: 'createSystemRole'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
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

class Mutation$CreateSystemRole$createSystemRole {
  Mutation$CreateSystemRole$createSystemRole({
    this.data,
    required this.hasError,
    this.message,
    this.$__typename = 'OperationOutputOfSystemRole',
  });

  factory Mutation$CreateSystemRole$createSystemRole.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$data = json['data'];
    final l$hasError = json['hasError'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateSystemRole$createSystemRole(
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
    if (other is! Mutation$CreateSystemRole$createSystemRole ||
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

extension UtilityExtension$Mutation$CreateSystemRole$createSystemRole
    on Mutation$CreateSystemRole$createSystemRole {
  CopyWith$Mutation$CreateSystemRole$createSystemRole<
    Mutation$CreateSystemRole$createSystemRole
  >
  get copyWith =>
      CopyWith$Mutation$CreateSystemRole$createSystemRole(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateSystemRole$createSystemRole<TRes> {
  factory CopyWith$Mutation$CreateSystemRole$createSystemRole(
    Mutation$CreateSystemRole$createSystemRole instance,
    TRes Function(Mutation$CreateSystemRole$createSystemRole) then,
  ) = _CopyWithImpl$Mutation$CreateSystemRole$createSystemRole;

  factory CopyWith$Mutation$CreateSystemRole$createSystemRole.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateSystemRole$createSystemRole;

  TRes call({
    Fragment$SystemRoleFragment? data,
    bool? hasError,
    String? message,
    String? $__typename,
  });
  CopyWith$Fragment$SystemRoleFragment<TRes> get data;
}

class _CopyWithImpl$Mutation$CreateSystemRole$createSystemRole<TRes>
    implements CopyWith$Mutation$CreateSystemRole$createSystemRole<TRes> {
  _CopyWithImpl$Mutation$CreateSystemRole$createSystemRole(
    this._instance,
    this._then,
  );

  final Mutation$CreateSystemRole$createSystemRole _instance;

  final TRes Function(Mutation$CreateSystemRole$createSystemRole) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? hasError = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateSystemRole$createSystemRole(
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

class _CopyWithStubImpl$Mutation$CreateSystemRole$createSystemRole<TRes>
    implements CopyWith$Mutation$CreateSystemRole$createSystemRole<TRes> {
  _CopyWithStubImpl$Mutation$CreateSystemRole$createSystemRole(this._res);

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
