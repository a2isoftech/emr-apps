import '../../../fragments/job_role_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateJobRole {
  factory Variables$Mutation$CreateJobRole({
    required String name,
    required String description,
    required List<String> systemRoleIds,
    required String territoryId,
    required bool active,
  }) => Variables$Mutation$CreateJobRole._({
    r'name': name,
    r'description': description,
    r'systemRoleIds': systemRoleIds,
    r'territoryId': territoryId,
    r'active': active,
  });

  Variables$Mutation$CreateJobRole._(this._$data);

  factory Variables$Mutation$CreateJobRole.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
    return Variables$Mutation$CreateJobRole._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String get description => (_$data['description'] as String);

  List<String> get systemRoleIds => (_$data['systemRoleIds'] as List<String>);

  String get territoryId => (_$data['territoryId'] as String);

  bool get active => (_$data['active'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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

  CopyWith$Variables$Mutation$CreateJobRole<Variables$Mutation$CreateJobRole>
  get copyWith => CopyWith$Variables$Mutation$CreateJobRole(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateJobRole ||
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
    final l$name = name;
    final l$description = description;
    final l$systemRoleIds = systemRoleIds;
    final l$territoryId = territoryId;
    final l$active = active;
    return Object.hashAll([
      l$name,
      l$description,
      Object.hashAll(l$systemRoleIds.map((v) => v)),
      l$territoryId,
      l$active,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateJobRole<TRes> {
  factory CopyWith$Variables$Mutation$CreateJobRole(
    Variables$Mutation$CreateJobRole instance,
    TRes Function(Variables$Mutation$CreateJobRole) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateJobRole;

  factory CopyWith$Variables$Mutation$CreateJobRole.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateJobRole;

  TRes call({
    String? name,
    String? description,
    List<String>? systemRoleIds,
    String? territoryId,
    bool? active,
  });
}

class _CopyWithImpl$Variables$Mutation$CreateJobRole<TRes>
    implements CopyWith$Variables$Mutation$CreateJobRole<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateJobRole(this._instance, this._then);

  final Variables$Mutation$CreateJobRole _instance;

  final TRes Function(Variables$Mutation$CreateJobRole) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? description = _undefined,
    Object? systemRoleIds = _undefined,
    Object? territoryId = _undefined,
    Object? active = _undefined,
  }) => _then(
    Variables$Mutation$CreateJobRole._({
      ..._instance._$data,
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

class _CopyWithStubImpl$Variables$Mutation$CreateJobRole<TRes>
    implements CopyWith$Variables$Mutation$CreateJobRole<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateJobRole(this._res);

  TRes _res;

  call({
    String? name,
    String? description,
    List<String>? systemRoleIds,
    String? territoryId,
    bool? active,
  }) => _res;
}

class Mutation$CreateJobRole {
  Mutation$CreateJobRole({
    required this.createJobRole,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateJobRole.fromJson(Map<String, dynamic> json) {
    final l$createJobRole = json['createJobRole'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateJobRole(
      createJobRole: Mutation$CreateJobRole$createJobRole.fromJson(
        (l$createJobRole as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateJobRole$createJobRole createJobRole;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createJobRole = createJobRole;
    _resultData['createJobRole'] = l$createJobRole.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createJobRole = createJobRole;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createJobRole, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateJobRole || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createJobRole = createJobRole;
    final lOther$createJobRole = other.createJobRole;
    if (l$createJobRole != lOther$createJobRole) {
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

extension UtilityExtension$Mutation$CreateJobRole on Mutation$CreateJobRole {
  CopyWith$Mutation$CreateJobRole<Mutation$CreateJobRole> get copyWith =>
      CopyWith$Mutation$CreateJobRole(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateJobRole<TRes> {
  factory CopyWith$Mutation$CreateJobRole(
    Mutation$CreateJobRole instance,
    TRes Function(Mutation$CreateJobRole) then,
  ) = _CopyWithImpl$Mutation$CreateJobRole;

  factory CopyWith$Mutation$CreateJobRole.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateJobRole;

  TRes call({
    Mutation$CreateJobRole$createJobRole? createJobRole,
    String? $__typename,
  });
  CopyWith$Mutation$CreateJobRole$createJobRole<TRes> get createJobRole;
}

class _CopyWithImpl$Mutation$CreateJobRole<TRes>
    implements CopyWith$Mutation$CreateJobRole<TRes> {
  _CopyWithImpl$Mutation$CreateJobRole(this._instance, this._then);

  final Mutation$CreateJobRole _instance;

  final TRes Function(Mutation$CreateJobRole) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createJobRole = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateJobRole(
      createJobRole: createJobRole == _undefined || createJobRole == null
          ? _instance.createJobRole
          : (createJobRole as Mutation$CreateJobRole$createJobRole),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateJobRole$createJobRole<TRes> get createJobRole {
    final local$createJobRole = _instance.createJobRole;
    return CopyWith$Mutation$CreateJobRole$createJobRole(
      local$createJobRole,
      (e) => call(createJobRole: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CreateJobRole<TRes>
    implements CopyWith$Mutation$CreateJobRole<TRes> {
  _CopyWithStubImpl$Mutation$CreateJobRole(this._res);

  TRes _res;

  call({
    Mutation$CreateJobRole$createJobRole? createJobRole,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateJobRole$createJobRole<TRes> get createJobRole =>
      CopyWith$Mutation$CreateJobRole$createJobRole.stub(_res);
}

const documentNodeMutationCreateJobRole = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateJobRole'),
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
            name: NameNode(value: 'createJobRole'),
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

class Mutation$CreateJobRole$createJobRole {
  Mutation$CreateJobRole$createJobRole({
    required this.hasError,
    this.message,
    this.data,
    this.$__typename = 'OperationOutputOfJobRole',
  });

  factory Mutation$CreateJobRole$createJobRole.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasError = json['hasError'];
    final l$message = json['message'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateJobRole$createJobRole(
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
    if (other is! Mutation$CreateJobRole$createJobRole ||
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

extension UtilityExtension$Mutation$CreateJobRole$createJobRole
    on Mutation$CreateJobRole$createJobRole {
  CopyWith$Mutation$CreateJobRole$createJobRole<
    Mutation$CreateJobRole$createJobRole
  >
  get copyWith => CopyWith$Mutation$CreateJobRole$createJobRole(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateJobRole$createJobRole<TRes> {
  factory CopyWith$Mutation$CreateJobRole$createJobRole(
    Mutation$CreateJobRole$createJobRole instance,
    TRes Function(Mutation$CreateJobRole$createJobRole) then,
  ) = _CopyWithImpl$Mutation$CreateJobRole$createJobRole;

  factory CopyWith$Mutation$CreateJobRole$createJobRole.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateJobRole$createJobRole;

  TRes call({
    bool? hasError,
    String? message,
    Fragment$JobRoleFragment? data,
    String? $__typename,
  });
  CopyWith$Fragment$JobRoleFragment<TRes> get data;
}

class _CopyWithImpl$Mutation$CreateJobRole$createJobRole<TRes>
    implements CopyWith$Mutation$CreateJobRole$createJobRole<TRes> {
  _CopyWithImpl$Mutation$CreateJobRole$createJobRole(
    this._instance,
    this._then,
  );

  final Mutation$CreateJobRole$createJobRole _instance;

  final TRes Function(Mutation$CreateJobRole$createJobRole) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasError = _undefined,
    Object? message = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateJobRole$createJobRole(
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

class _CopyWithStubImpl$Mutation$CreateJobRole$createJobRole<TRes>
    implements CopyWith$Mutation$CreateJobRole$createJobRole<TRes> {
  _CopyWithStubImpl$Mutation$CreateJobRole$createJobRole(this._res);

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
