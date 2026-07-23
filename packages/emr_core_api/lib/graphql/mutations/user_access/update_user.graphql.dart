import '../../fragments/user_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateUser {
  factory Variables$Mutation$UpdateUser({
    required String id,
    required bool active,
    required String firstName,
    required String lastName,
    required String emailAddress,
    required String employeeNumber,
    required String jobTitle,
    required List<String> territoryIds,
    required String defaultYardId,
    required List<String> jobRoleIds,
  }) => Variables$Mutation$UpdateUser._({
    r'id': id,
    r'active': active,
    r'firstName': firstName,
    r'lastName': lastName,
    r'emailAddress': emailAddress,
    r'employeeNumber': employeeNumber,
    r'jobTitle': jobTitle,
    r'territoryIds': territoryIds,
    r'defaultYardId': defaultYardId,
    r'jobRoleIds': jobRoleIds,
  });

  Variables$Mutation$UpdateUser._(this._$data);

  factory Variables$Mutation$UpdateUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$active = data['active'];
    result$data['active'] = (l$active as bool);
    final l$firstName = data['firstName'];
    result$data['firstName'] = (l$firstName as String);
    final l$lastName = data['lastName'];
    result$data['lastName'] = (l$lastName as String);
    final l$emailAddress = data['emailAddress'];
    result$data['emailAddress'] = (l$emailAddress as String);
    final l$employeeNumber = data['employeeNumber'];
    result$data['employeeNumber'] = (l$employeeNumber as String);
    final l$jobTitle = data['jobTitle'];
    result$data['jobTitle'] = (l$jobTitle as String);
    final l$territoryIds = data['territoryIds'];
    result$data['territoryIds'] = (l$territoryIds as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    final l$defaultYardId = data['defaultYardId'];
    result$data['defaultYardId'] = (l$defaultYardId as String);
    final l$jobRoleIds = data['jobRoleIds'];
    result$data['jobRoleIds'] = (l$jobRoleIds as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    return Variables$Mutation$UpdateUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  bool get active => (_$data['active'] as bool);

  String get firstName => (_$data['firstName'] as String);

  String get lastName => (_$data['lastName'] as String);

  String get emailAddress => (_$data['emailAddress'] as String);

  String get employeeNumber => (_$data['employeeNumber'] as String);

  String get jobTitle => (_$data['jobTitle'] as String);

  List<String> get territoryIds => (_$data['territoryIds'] as List<String>);

  String get defaultYardId => (_$data['defaultYardId'] as String);

  List<String> get jobRoleIds => (_$data['jobRoleIds'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$active = active;
    result$data['active'] = l$active;
    final l$firstName = firstName;
    result$data['firstName'] = l$firstName;
    final l$lastName = lastName;
    result$data['lastName'] = l$lastName;
    final l$emailAddress = emailAddress;
    result$data['emailAddress'] = l$emailAddress;
    final l$employeeNumber = employeeNumber;
    result$data['employeeNumber'] = l$employeeNumber;
    final l$jobTitle = jobTitle;
    result$data['jobTitle'] = l$jobTitle;
    final l$territoryIds = territoryIds;
    result$data['territoryIds'] = l$territoryIds.map((e) => e).toList();
    final l$defaultYardId = defaultYardId;
    result$data['defaultYardId'] = l$defaultYardId;
    final l$jobRoleIds = jobRoleIds;
    result$data['jobRoleIds'] = l$jobRoleIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateUser<Variables$Mutation$UpdateUser>
  get copyWith => CopyWith$Variables$Mutation$UpdateUser(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
      return false;
    }
    final l$employeeNumber = employeeNumber;
    final lOther$employeeNumber = other.employeeNumber;
    if (l$employeeNumber != lOther$employeeNumber) {
      return false;
    }
    final l$jobTitle = jobTitle;
    final lOther$jobTitle = other.jobTitle;
    if (l$jobTitle != lOther$jobTitle) {
      return false;
    }
    final l$territoryIds = territoryIds;
    final lOther$territoryIds = other.territoryIds;
    if (l$territoryIds.length != lOther$territoryIds.length) {
      return false;
    }
    for (int i = 0; i < l$territoryIds.length; i++) {
      final l$territoryIds$entry = l$territoryIds[i];
      final lOther$territoryIds$entry = lOther$territoryIds[i];
      if (l$territoryIds$entry != lOther$territoryIds$entry) {
        return false;
      }
    }
    final l$defaultYardId = defaultYardId;
    final lOther$defaultYardId = other.defaultYardId;
    if (l$defaultYardId != lOther$defaultYardId) {
      return false;
    }
    final l$jobRoleIds = jobRoleIds;
    final lOther$jobRoleIds = other.jobRoleIds;
    if (l$jobRoleIds.length != lOther$jobRoleIds.length) {
      return false;
    }
    for (int i = 0; i < l$jobRoleIds.length; i++) {
      final l$jobRoleIds$entry = l$jobRoleIds[i];
      final lOther$jobRoleIds$entry = lOther$jobRoleIds[i];
      if (l$jobRoleIds$entry != lOther$jobRoleIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$active = active;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$emailAddress = emailAddress;
    final l$employeeNumber = employeeNumber;
    final l$jobTitle = jobTitle;
    final l$territoryIds = territoryIds;
    final l$defaultYardId = defaultYardId;
    final l$jobRoleIds = jobRoleIds;
    return Object.hashAll([
      l$id,
      l$active,
      l$firstName,
      l$lastName,
      l$emailAddress,
      l$employeeNumber,
      l$jobTitle,
      Object.hashAll(l$territoryIds.map((v) => v)),
      l$defaultYardId,
      Object.hashAll(l$jobRoleIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateUser<TRes> {
  factory CopyWith$Variables$Mutation$UpdateUser(
    Variables$Mutation$UpdateUser instance,
    TRes Function(Variables$Mutation$UpdateUser) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateUser;

  factory CopyWith$Variables$Mutation$UpdateUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateUser;

  TRes call({
    String? id,
    bool? active,
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? employeeNumber,
    String? jobTitle,
    List<String>? territoryIds,
    String? defaultYardId,
    List<String>? jobRoleIds,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateUser<TRes>
    implements CopyWith$Variables$Mutation$UpdateUser<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateUser(this._instance, this._then);

  final Variables$Mutation$UpdateUser _instance;

  final TRes Function(Variables$Mutation$UpdateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? active = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? emailAddress = _undefined,
    Object? employeeNumber = _undefined,
    Object? jobTitle = _undefined,
    Object? territoryIds = _undefined,
    Object? defaultYardId = _undefined,
    Object? jobRoleIds = _undefined,
  }) => _then(
    Variables$Mutation$UpdateUser._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
      if (active != _undefined && active != null) 'active': (active as bool),
      if (firstName != _undefined && firstName != null)
        'firstName': (firstName as String),
      if (lastName != _undefined && lastName != null)
        'lastName': (lastName as String),
      if (emailAddress != _undefined && emailAddress != null)
        'emailAddress': (emailAddress as String),
      if (employeeNumber != _undefined && employeeNumber != null)
        'employeeNumber': (employeeNumber as String),
      if (jobTitle != _undefined && jobTitle != null)
        'jobTitle': (jobTitle as String),
      if (territoryIds != _undefined && territoryIds != null)
        'territoryIds': (territoryIds as List<String>),
      if (defaultYardId != _undefined && defaultYardId != null)
        'defaultYardId': (defaultYardId as String),
      if (jobRoleIds != _undefined && jobRoleIds != null)
        'jobRoleIds': (jobRoleIds as List<String>),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateUser<TRes>
    implements CopyWith$Variables$Mutation$UpdateUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateUser(this._res);

  TRes _res;

  call({
    String? id,
    bool? active,
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? employeeNumber,
    String? jobTitle,
    List<String>? territoryIds,
    String? defaultYardId,
    List<String>? jobRoleIds,
  }) => _res;
}

class Mutation$UpdateUser {
  Mutation$UpdateUser({this.updateUser, this.$__typename = 'Mutation'});

  factory Mutation$UpdateUser.fromJson(Map<String, dynamic> json) {
    final l$updateUser = json['updateUser'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser(
      updateUser: l$updateUser == null
          ? null
          : Mutation$UpdateUser$updateUser.fromJson(
              (l$updateUser as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateUser$updateUser? updateUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateUser = updateUser;
    _resultData['updateUser'] = l$updateUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateUser = updateUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateUser = updateUser;
    final lOther$updateUser = other.updateUser;
    if (l$updateUser != lOther$updateUser) {
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

extension UtilityExtension$Mutation$UpdateUser on Mutation$UpdateUser {
  CopyWith$Mutation$UpdateUser<Mutation$UpdateUser> get copyWith =>
      CopyWith$Mutation$UpdateUser(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateUser<TRes> {
  factory CopyWith$Mutation$UpdateUser(
    Mutation$UpdateUser instance,
    TRes Function(Mutation$UpdateUser) then,
  ) = _CopyWithImpl$Mutation$UpdateUser;

  factory CopyWith$Mutation$UpdateUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUser;

  TRes call({Mutation$UpdateUser$updateUser? updateUser, String? $__typename});
  CopyWith$Mutation$UpdateUser$updateUser<TRes> get updateUser;
}

class _CopyWithImpl$Mutation$UpdateUser<TRes>
    implements CopyWith$Mutation$UpdateUser<TRes> {
  _CopyWithImpl$Mutation$UpdateUser(this._instance, this._then);

  final Mutation$UpdateUser _instance;

  final TRes Function(Mutation$UpdateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateUser = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateUser(
      updateUser: updateUser == _undefined
          ? _instance.updateUser
          : (updateUser as Mutation$UpdateUser$updateUser?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateUser$updateUser<TRes> get updateUser {
    final local$updateUser = _instance.updateUser;
    return local$updateUser == null
        ? CopyWith$Mutation$UpdateUser$updateUser.stub(_then(_instance))
        : CopyWith$Mutation$UpdateUser$updateUser(
            local$updateUser,
            (e) => call(updateUser: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateUser<TRes>
    implements CopyWith$Mutation$UpdateUser<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser(this._res);

  TRes _res;

  call({Mutation$UpdateUser$updateUser? updateUser, String? $__typename}) =>
      _res;

  CopyWith$Mutation$UpdateUser$updateUser<TRes> get updateUser =>
      CopyWith$Mutation$UpdateUser$updateUser.stub(_res);
}

const documentNodeMutationUpdateUser = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateUser'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
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
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'firstName')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'lastName')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'emailAddress')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'employeeNumber')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'jobTitle')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'territoryIds')),
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
          variable: VariableNode(name: NameNode(value: 'defaultYardId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'jobRoleIds')),
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
            name: NameNode(value: 'updateUser'),
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
                      name: NameNode(value: 'active'),
                      value: VariableNode(name: NameNode(value: 'active')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'firstName'),
                      value: VariableNode(name: NameNode(value: 'firstName')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'lastName'),
                      value: VariableNode(name: NameNode(value: 'lastName')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'emailAddress'),
                      value: VariableNode(
                        name: NameNode(value: 'emailAddress'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'employeeNumber'),
                      value: VariableNode(
                        name: NameNode(value: 'employeeNumber'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'jobTitle'),
                      value: VariableNode(name: NameNode(value: 'jobTitle')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'territoryIds'),
                      value: VariableNode(
                        name: NameNode(value: 'territoryIds'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'defaultYardId'),
                      value: VariableNode(
                        name: NameNode(value: 'defaultYardId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'jobRoleIds'),
                      value: VariableNode(name: NameNode(value: 'jobRoleIds')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'UpdateUserError'),
                      isNonNull: false,
                    ),
                  ),
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
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
                FragmentSpreadNode(
                  name: NameNode(value: 'UserFragment'),
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
    fragmentDefinitionUserFragment,
  ],
);

class Mutation$UpdateUser$updateUser {
  Mutation$UpdateUser$updateUser({required this.$__typename});

  factory Mutation$UpdateUser$updateUser.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "UpdateUserError":
        return Mutation$UpdateUser$updateUser$$UpdateUserError.fromJson(json);

      case "User":
        return Mutation$UpdateUser$updateUser$$User.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$UpdateUser$updateUser(
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateUser$updateUser ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$UpdateUser$updateUser
    on Mutation$UpdateUser$updateUser {
  CopyWith$Mutation$UpdateUser$updateUser<Mutation$UpdateUser$updateUser>
  get copyWith => CopyWith$Mutation$UpdateUser$updateUser(this, (i) => i);

  _T when<_T>({
    required _T Function(Mutation$UpdateUser$updateUser$$UpdateUserError)
    updateUserError,
    required _T Function(Mutation$UpdateUser$updateUser$$User) user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "UpdateUserError":
        return updateUserError(
          this as Mutation$UpdateUser$updateUser$$UpdateUserError,
        );

      case "User":
        return user(this as Mutation$UpdateUser$updateUser$$User);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$UpdateUser$updateUser$$UpdateUserError)?
    updateUserError,
    _T Function(Mutation$UpdateUser$updateUser$$User)? user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "UpdateUserError":
        if (updateUserError != null) {
          return updateUserError(
            this as Mutation$UpdateUser$updateUser$$UpdateUserError,
          );
        } else {
          return orElse();
        }

      case "User":
        if (user != null) {
          return user(this as Mutation$UpdateUser$updateUser$$User);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$UpdateUser$updateUser<TRes> {
  factory CopyWith$Mutation$UpdateUser$updateUser(
    Mutation$UpdateUser$updateUser instance,
    TRes Function(Mutation$UpdateUser$updateUser) then,
  ) = _CopyWithImpl$Mutation$UpdateUser$updateUser;

  factory CopyWith$Mutation$UpdateUser$updateUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUser$updateUser;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateUser$updateUser<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser<TRes> {
  _CopyWithImpl$Mutation$UpdateUser$updateUser(this._instance, this._then);

  final Mutation$UpdateUser$updateUser _instance;

  final TRes Function(Mutation$UpdateUser$updateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$UpdateUser$updateUser(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateUser$updateUser<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser$updateUser(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$UpdateUser$updateUser$$UpdateUserError
    implements Mutation$UpdateUser$updateUser {
  Mutation$UpdateUser$updateUser$$UpdateUserError({
    required this.message,
    this.$__typename = 'UpdateUserError',
  });

  factory Mutation$UpdateUser$updateUser$$UpdateUserError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser$updateUser$$UpdateUserError(
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([l$message, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateUser$updateUser$$UpdateUserError ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$UpdateUser$updateUser$$UpdateUserError
    on Mutation$UpdateUser$updateUser$$UpdateUserError {
  CopyWith$Mutation$UpdateUser$updateUser$$UpdateUserError<
    Mutation$UpdateUser$updateUser$$UpdateUserError
  >
  get copyWith =>
      CopyWith$Mutation$UpdateUser$updateUser$$UpdateUserError(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateUser$updateUser$$UpdateUserError<TRes> {
  factory CopyWith$Mutation$UpdateUser$updateUser$$UpdateUserError(
    Mutation$UpdateUser$updateUser$$UpdateUserError instance,
    TRes Function(Mutation$UpdateUser$updateUser$$UpdateUserError) then,
  ) = _CopyWithImpl$Mutation$UpdateUser$updateUser$$UpdateUserError;

  factory CopyWith$Mutation$UpdateUser$updateUser$$UpdateUserError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$UpdateUserError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateUser$updateUser$$UpdateUserError<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser$$UpdateUserError<TRes> {
  _CopyWithImpl$Mutation$UpdateUser$updateUser$$UpdateUserError(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUser$updateUser$$UpdateUserError _instance;

  final TRes Function(Mutation$UpdateUser$updateUser$$UpdateUserError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpdateUser$updateUser$$UpdateUserError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$UpdateUserError<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser$$UpdateUserError<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$UpdateUserError(this._res);

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Mutation$UpdateUser$updateUser$$User
    implements Fragment$UserFragment, Mutation$UpdateUser$updateUser {
  Mutation$UpdateUser$updateUser$$User({
    required this.id,
    required this.active,
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.employeeNumber,
    required this.jobTitle,
    required this.territoryIds,
    required this.defaultYardId,
    required this.jobRoleIds,
    this.territories,
    this.defaultYard,
    this.jobRoles,
    required this.created,
    required this.modified,
    this.$__typename = 'User',
  });

  factory Mutation$UpdateUser$updateUser$$User.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$active = json['active'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$emailAddress = json['emailAddress'];
    final l$employeeNumber = json['employeeNumber'];
    final l$jobTitle = json['jobTitle'];
    final l$territoryIds = json['territoryIds'];
    final l$defaultYardId = json['defaultYardId'];
    final l$jobRoleIds = json['jobRoleIds'];
    final l$territories = json['territories'];
    final l$defaultYard = json['defaultYard'];
    final l$jobRoles = json['jobRoles'];
    final l$created = json['created'];
    final l$modified = json['modified'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser$updateUser$$User(
      id: (l$id as String),
      active: (l$active as bool),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      emailAddress: (l$emailAddress as String),
      employeeNumber: (l$employeeNumber as String),
      jobTitle: (l$jobTitle as String),
      territoryIds: (l$territoryIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      defaultYardId: (l$defaultYardId as String),
      jobRoleIds: (l$jobRoleIds as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      territories: (l$territories as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Mutation$UpdateUser$updateUser$$User$territories.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      defaultYard: l$defaultYard == null
          ? null
          : Mutation$UpdateUser$updateUser$$User$defaultYard.fromJson(
              (l$defaultYard as Map<String, dynamic>),
            ),
      jobRoles: (l$jobRoles as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Mutation$UpdateUser$updateUser$$User$jobRoles.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      created: Mutation$UpdateUser$updateUser$$User$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      modified: Mutation$UpdateUser$updateUser$$User$modified.fromJson(
        (l$modified as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final bool active;

  final String firstName;

  final String lastName;

  final String emailAddress;

  final String employeeNumber;

  final String jobTitle;

  final List<String> territoryIds;

  final String defaultYardId;

  final List<String> jobRoleIds;

  final List<Mutation$UpdateUser$updateUser$$User$territories?>? territories;

  final Mutation$UpdateUser$updateUser$$User$defaultYard? defaultYard;

  final List<Mutation$UpdateUser$updateUser$$User$jobRoles?>? jobRoles;

  final Mutation$UpdateUser$updateUser$$User$created created;

  final Mutation$UpdateUser$updateUser$$User$modified modified;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$employeeNumber = employeeNumber;
    _resultData['employeeNumber'] = l$employeeNumber;
    final l$jobTitle = jobTitle;
    _resultData['jobTitle'] = l$jobTitle;
    final l$territoryIds = territoryIds;
    _resultData['territoryIds'] = l$territoryIds.map((e) => e).toList();
    final l$defaultYardId = defaultYardId;
    _resultData['defaultYardId'] = l$defaultYardId;
    final l$jobRoleIds = jobRoleIds;
    _resultData['jobRoleIds'] = l$jobRoleIds.map((e) => e).toList();
    final l$territories = territories;
    _resultData['territories'] = l$territories
        ?.map((e) => e?.toJson())
        .toList();
    final l$defaultYard = defaultYard;
    _resultData['defaultYard'] = l$defaultYard?.toJson();
    final l$jobRoles = jobRoles;
    _resultData['jobRoles'] = l$jobRoles?.map((e) => e?.toJson()).toList();
    final l$created = created;
    _resultData['created'] = l$created.toJson();
    final l$modified = modified;
    _resultData['modified'] = l$modified.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$active = active;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$emailAddress = emailAddress;
    final l$employeeNumber = employeeNumber;
    final l$jobTitle = jobTitle;
    final l$territoryIds = territoryIds;
    final l$defaultYardId = defaultYardId;
    final l$jobRoleIds = jobRoleIds;
    final l$territories = territories;
    final l$defaultYard = defaultYard;
    final l$jobRoles = jobRoles;
    final l$created = created;
    final l$modified = modified;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$active,
      l$firstName,
      l$lastName,
      l$emailAddress,
      l$employeeNumber,
      l$jobTitle,
      Object.hashAll(l$territoryIds.map((v) => v)),
      l$defaultYardId,
      Object.hashAll(l$jobRoleIds.map((v) => v)),
      l$territories == null
          ? null
          : Object.hashAll(l$territories.map((v) => v)),
      l$defaultYard,
      l$jobRoles == null ? null : Object.hashAll(l$jobRoles.map((v) => v)),
      l$created,
      l$modified,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateUser$updateUser$$User ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
      return false;
    }
    final l$employeeNumber = employeeNumber;
    final lOther$employeeNumber = other.employeeNumber;
    if (l$employeeNumber != lOther$employeeNumber) {
      return false;
    }
    final l$jobTitle = jobTitle;
    final lOther$jobTitle = other.jobTitle;
    if (l$jobTitle != lOther$jobTitle) {
      return false;
    }
    final l$territoryIds = territoryIds;
    final lOther$territoryIds = other.territoryIds;
    if (l$territoryIds.length != lOther$territoryIds.length) {
      return false;
    }
    for (int i = 0; i < l$territoryIds.length; i++) {
      final l$territoryIds$entry = l$territoryIds[i];
      final lOther$territoryIds$entry = lOther$territoryIds[i];
      if (l$territoryIds$entry != lOther$territoryIds$entry) {
        return false;
      }
    }
    final l$defaultYardId = defaultYardId;
    final lOther$defaultYardId = other.defaultYardId;
    if (l$defaultYardId != lOther$defaultYardId) {
      return false;
    }
    final l$jobRoleIds = jobRoleIds;
    final lOther$jobRoleIds = other.jobRoleIds;
    if (l$jobRoleIds.length != lOther$jobRoleIds.length) {
      return false;
    }
    for (int i = 0; i < l$jobRoleIds.length; i++) {
      final l$jobRoleIds$entry = l$jobRoleIds[i];
      final lOther$jobRoleIds$entry = lOther$jobRoleIds[i];
      if (l$jobRoleIds$entry != lOther$jobRoleIds$entry) {
        return false;
      }
    }
    final l$territories = territories;
    final lOther$territories = other.territories;
    if (l$territories != null && lOther$territories != null) {
      if (l$territories.length != lOther$territories.length) {
        return false;
      }
      for (int i = 0; i < l$territories.length; i++) {
        final l$territories$entry = l$territories[i];
        final lOther$territories$entry = lOther$territories[i];
        if (l$territories$entry != lOther$territories$entry) {
          return false;
        }
      }
    } else if (l$territories != lOther$territories) {
      return false;
    }
    final l$defaultYard = defaultYard;
    final lOther$defaultYard = other.defaultYard;
    if (l$defaultYard != lOther$defaultYard) {
      return false;
    }
    final l$jobRoles = jobRoles;
    final lOther$jobRoles = other.jobRoles;
    if (l$jobRoles != null && lOther$jobRoles != null) {
      if (l$jobRoles.length != lOther$jobRoles.length) {
        return false;
      }
      for (int i = 0; i < l$jobRoles.length; i++) {
        final l$jobRoles$entry = l$jobRoles[i];
        final lOther$jobRoles$entry = lOther$jobRoles[i];
        if (l$jobRoles$entry != lOther$jobRoles$entry) {
          return false;
        }
      }
    } else if (l$jobRoles != lOther$jobRoles) {
      return false;
    }
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
      return false;
    }
    final l$modified = modified;
    final lOther$modified = other.modified;
    if (l$modified != lOther$modified) {
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

extension UtilityExtension$Mutation$UpdateUser$updateUser$$User
    on Mutation$UpdateUser$updateUser$$User {
  CopyWith$Mutation$UpdateUser$updateUser$$User<
    Mutation$UpdateUser$updateUser$$User
  >
  get copyWith => CopyWith$Mutation$UpdateUser$updateUser$$User(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateUser$updateUser$$User<TRes> {
  factory CopyWith$Mutation$UpdateUser$updateUser$$User(
    Mutation$UpdateUser$updateUser$$User instance,
    TRes Function(Mutation$UpdateUser$updateUser$$User) then,
  ) = _CopyWithImpl$Mutation$UpdateUser$updateUser$$User;

  factory CopyWith$Mutation$UpdateUser$updateUser$$User.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$User;

  TRes call({
    String? id,
    bool? active,
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? employeeNumber,
    String? jobTitle,
    List<String>? territoryIds,
    String? defaultYardId,
    List<String>? jobRoleIds,
    List<Mutation$UpdateUser$updateUser$$User$territories?>? territories,
    Mutation$UpdateUser$updateUser$$User$defaultYard? defaultYard,
    List<Mutation$UpdateUser$updateUser$$User$jobRoles?>? jobRoles,
    Mutation$UpdateUser$updateUser$$User$created? created,
    Mutation$UpdateUser$updateUser$$User$modified? modified,
    String? $__typename,
  });
  TRes territories(
    Iterable<Mutation$UpdateUser$updateUser$$User$territories?>? Function(
      Iterable<
        CopyWith$Mutation$UpdateUser$updateUser$$User$territories<
          Mutation$UpdateUser$updateUser$$User$territories
        >?
      >?,
    )
    _fn,
  );
  CopyWith$Mutation$UpdateUser$updateUser$$User$defaultYard<TRes>
  get defaultYard;
  TRes jobRoles(
    Iterable<Mutation$UpdateUser$updateUser$$User$jobRoles?>? Function(
      Iterable<
        CopyWith$Mutation$UpdateUser$updateUser$$User$jobRoles<
          Mutation$UpdateUser$updateUser$$User$jobRoles
        >?
      >?,
    )
    _fn,
  );
  CopyWith$Mutation$UpdateUser$updateUser$$User$created<TRes> get created;
  CopyWith$Mutation$UpdateUser$updateUser$$User$modified<TRes> get modified;
}

class _CopyWithImpl$Mutation$UpdateUser$updateUser$$User<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser$$User<TRes> {
  _CopyWithImpl$Mutation$UpdateUser$updateUser$$User(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUser$updateUser$$User _instance;

  final TRes Function(Mutation$UpdateUser$updateUser$$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? active = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? emailAddress = _undefined,
    Object? employeeNumber = _undefined,
    Object? jobTitle = _undefined,
    Object? territoryIds = _undefined,
    Object? defaultYardId = _undefined,
    Object? jobRoleIds = _undefined,
    Object? territories = _undefined,
    Object? defaultYard = _undefined,
    Object? jobRoles = _undefined,
    Object? created = _undefined,
    Object? modified = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateUser$updateUser$$User(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      firstName: firstName == _undefined || firstName == null
          ? _instance.firstName
          : (firstName as String),
      lastName: lastName == _undefined || lastName == null
          ? _instance.lastName
          : (lastName as String),
      emailAddress: emailAddress == _undefined || emailAddress == null
          ? _instance.emailAddress
          : (emailAddress as String),
      employeeNumber: employeeNumber == _undefined || employeeNumber == null
          ? _instance.employeeNumber
          : (employeeNumber as String),
      jobTitle: jobTitle == _undefined || jobTitle == null
          ? _instance.jobTitle
          : (jobTitle as String),
      territoryIds: territoryIds == _undefined || territoryIds == null
          ? _instance.territoryIds
          : (territoryIds as List<String>),
      defaultYardId: defaultYardId == _undefined || defaultYardId == null
          ? _instance.defaultYardId
          : (defaultYardId as String),
      jobRoleIds: jobRoleIds == _undefined || jobRoleIds == null
          ? _instance.jobRoleIds
          : (jobRoleIds as List<String>),
      territories: territories == _undefined
          ? _instance.territories
          : (territories
                as List<Mutation$UpdateUser$updateUser$$User$territories?>?),
      defaultYard: defaultYard == _undefined
          ? _instance.defaultYard
          : (defaultYard as Mutation$UpdateUser$updateUser$$User$defaultYard?),
      jobRoles: jobRoles == _undefined
          ? _instance.jobRoles
          : (jobRoles as List<Mutation$UpdateUser$updateUser$$User$jobRoles?>?),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Mutation$UpdateUser$updateUser$$User$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified as Mutation$UpdateUser$updateUser$$User$modified),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes territories(
    Iterable<Mutation$UpdateUser$updateUser$$User$territories?>? Function(
      Iterable<
        CopyWith$Mutation$UpdateUser$updateUser$$User$territories<
          Mutation$UpdateUser$updateUser$$User$territories
        >?
      >?,
    )
    _fn,
  ) => call(
    territories: _fn(
      _instance.territories?.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$UpdateUser$updateUser$$User$territories(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );

  CopyWith$Mutation$UpdateUser$updateUser$$User$defaultYard<TRes>
  get defaultYard {
    final local$defaultYard = _instance.defaultYard;
    return local$defaultYard == null
        ? CopyWith$Mutation$UpdateUser$updateUser$$User$defaultYard.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateUser$updateUser$$User$defaultYard(
            local$defaultYard,
            (e) => call(defaultYard: e),
          );
  }

  TRes jobRoles(
    Iterable<Mutation$UpdateUser$updateUser$$User$jobRoles?>? Function(
      Iterable<
        CopyWith$Mutation$UpdateUser$updateUser$$User$jobRoles<
          Mutation$UpdateUser$updateUser$$User$jobRoles
        >?
      >?,
    )
    _fn,
  ) => call(
    jobRoles: _fn(
      _instance.jobRoles?.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$UpdateUser$updateUser$$User$jobRoles(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );

  CopyWith$Mutation$UpdateUser$updateUser$$User$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Mutation$UpdateUser$updateUser$$User$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Mutation$UpdateUser$updateUser$$User$modified<TRes> get modified {
    final local$modified = _instance.modified;
    return CopyWith$Mutation$UpdateUser$updateUser$$User$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$User<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser$$User<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$User(this._res);

  TRes _res;

  call({
    String? id,
    bool? active,
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? employeeNumber,
    String? jobTitle,
    List<String>? territoryIds,
    String? defaultYardId,
    List<String>? jobRoleIds,
    List<Mutation$UpdateUser$updateUser$$User$territories?>? territories,
    Mutation$UpdateUser$updateUser$$User$defaultYard? defaultYard,
    List<Mutation$UpdateUser$updateUser$$User$jobRoles?>? jobRoles,
    Mutation$UpdateUser$updateUser$$User$created? created,
    Mutation$UpdateUser$updateUser$$User$modified? modified,
    String? $__typename,
  }) => _res;

  territories(_fn) => _res;

  CopyWith$Mutation$UpdateUser$updateUser$$User$defaultYard<TRes>
  get defaultYard =>
      CopyWith$Mutation$UpdateUser$updateUser$$User$defaultYard.stub(_res);

  jobRoles(_fn) => _res;

  CopyWith$Mutation$UpdateUser$updateUser$$User$created<TRes> get created =>
      CopyWith$Mutation$UpdateUser$updateUser$$User$created.stub(_res);

  CopyWith$Mutation$UpdateUser$updateUser$$User$modified<TRes> get modified =>
      CopyWith$Mutation$UpdateUser$updateUser$$User$modified.stub(_res);
}

class Mutation$UpdateUser$updateUser$$User$territories
    implements Fragment$UserFragment$territories {
  Mutation$UpdateUser$updateUser$$User$territories({
    required this.id,
    required this.name,
    required this.code,
    this.$__typename = 'Territory',
  });

  factory Mutation$UpdateUser$updateUser$$User$territories.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser$updateUser$$User$territories(
      id: (l$id as String),
      name: (l$name as String),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$code, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateUser$updateUser$$User$territories ||
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
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Mutation$UpdateUser$updateUser$$User$territories
    on Mutation$UpdateUser$updateUser$$User$territories {
  CopyWith$Mutation$UpdateUser$updateUser$$User$territories<
    Mutation$UpdateUser$updateUser$$User$territories
  >
  get copyWith =>
      CopyWith$Mutation$UpdateUser$updateUser$$User$territories(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateUser$updateUser$$User$territories<TRes> {
  factory CopyWith$Mutation$UpdateUser$updateUser$$User$territories(
    Mutation$UpdateUser$updateUser$$User$territories instance,
    TRes Function(Mutation$UpdateUser$updateUser$$User$territories) then,
  ) = _CopyWithImpl$Mutation$UpdateUser$updateUser$$User$territories;

  factory CopyWith$Mutation$UpdateUser$updateUser$$User$territories.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$User$territories;

  TRes call({String? id, String? name, String? code, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateUser$updateUser$$User$territories<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser$$User$territories<TRes> {
  _CopyWithImpl$Mutation$UpdateUser$updateUser$$User$territories(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUser$updateUser$$User$territories _instance;

  final TRes Function(Mutation$UpdateUser$updateUser$$User$territories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateUser$updateUser$$User$territories(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$User$territories<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser$$User$territories<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$User$territories(this._res);

  TRes _res;

  call({String? id, String? name, String? code, String? $__typename}) => _res;
}

class Mutation$UpdateUser$updateUser$$User$defaultYard
    implements Fragment$UserFragment$defaultYard {
  Mutation$UpdateUser$updateUser$$User$defaultYard({
    required this.id,
    required this.shortName,
    required this.yardCode,
    this.$__typename = 'Yard',
  });

  factory Mutation$UpdateUser$updateUser$$User$defaultYard.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$shortName = json['shortName'];
    final l$yardCode = json['yardCode'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser$updateUser$$User$defaultYard(
      id: (l$id as String),
      shortName: (l$shortName as String),
      yardCode: (l$yardCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String shortName;

  final String yardCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$shortName = shortName;
    _resultData['shortName'] = l$shortName;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$shortName = shortName;
    final l$yardCode = yardCode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$shortName, l$yardCode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateUser$updateUser$$User$defaultYard ||
        runtimeType != other.runtimeType) {
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
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
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

extension UtilityExtension$Mutation$UpdateUser$updateUser$$User$defaultYard
    on Mutation$UpdateUser$updateUser$$User$defaultYard {
  CopyWith$Mutation$UpdateUser$updateUser$$User$defaultYard<
    Mutation$UpdateUser$updateUser$$User$defaultYard
  >
  get copyWith =>
      CopyWith$Mutation$UpdateUser$updateUser$$User$defaultYard(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateUser$updateUser$$User$defaultYard<TRes> {
  factory CopyWith$Mutation$UpdateUser$updateUser$$User$defaultYard(
    Mutation$UpdateUser$updateUser$$User$defaultYard instance,
    TRes Function(Mutation$UpdateUser$updateUser$$User$defaultYard) then,
  ) = _CopyWithImpl$Mutation$UpdateUser$updateUser$$User$defaultYard;

  factory CopyWith$Mutation$UpdateUser$updateUser$$User$defaultYard.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$User$defaultYard;

  TRes call({
    String? id,
    String? shortName,
    String? yardCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateUser$updateUser$$User$defaultYard<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser$$User$defaultYard<TRes> {
  _CopyWithImpl$Mutation$UpdateUser$updateUser$$User$defaultYard(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUser$updateUser$$User$defaultYard _instance;

  final TRes Function(Mutation$UpdateUser$updateUser$$User$defaultYard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? shortName = _undefined,
    Object? yardCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateUser$updateUser$$User$defaultYard(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      shortName: shortName == _undefined || shortName == null
          ? _instance.shortName
          : (shortName as String),
      yardCode: yardCode == _undefined || yardCode == null
          ? _instance.yardCode
          : (yardCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$User$defaultYard<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser$$User$defaultYard<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$User$defaultYard(this._res);

  TRes _res;

  call({
    String? id,
    String? shortName,
    String? yardCode,
    String? $__typename,
  }) => _res;
}

class Mutation$UpdateUser$updateUser$$User$jobRoles
    implements Fragment$UserFragment$jobRoles {
  Mutation$UpdateUser$updateUser$$User$jobRoles({
    required this.id,
    required this.name,
    required this.description,
    this.$__typename = 'JobRole',
  });

  factory Mutation$UpdateUser$updateUser$$User$jobRoles.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser$updateUser$$User$jobRoles(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateUser$updateUser$$User$jobRoles ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateUser$updateUser$$User$jobRoles
    on Mutation$UpdateUser$updateUser$$User$jobRoles {
  CopyWith$Mutation$UpdateUser$updateUser$$User$jobRoles<
    Mutation$UpdateUser$updateUser$$User$jobRoles
  >
  get copyWith =>
      CopyWith$Mutation$UpdateUser$updateUser$$User$jobRoles(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateUser$updateUser$$User$jobRoles<TRes> {
  factory CopyWith$Mutation$UpdateUser$updateUser$$User$jobRoles(
    Mutation$UpdateUser$updateUser$$User$jobRoles instance,
    TRes Function(Mutation$UpdateUser$updateUser$$User$jobRoles) then,
  ) = _CopyWithImpl$Mutation$UpdateUser$updateUser$$User$jobRoles;

  factory CopyWith$Mutation$UpdateUser$updateUser$$User$jobRoles.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$User$jobRoles;

  TRes call({
    String? id,
    String? name,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateUser$updateUser$$User$jobRoles<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser$$User$jobRoles<TRes> {
  _CopyWithImpl$Mutation$UpdateUser$updateUser$$User$jobRoles(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUser$updateUser$$User$jobRoles _instance;

  final TRes Function(Mutation$UpdateUser$updateUser$$User$jobRoles) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateUser$updateUser$$User$jobRoles(
      id: id == _undefined || id == null ? _instance.id : (id as String),
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

class _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$User$jobRoles<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser$$User$jobRoles<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$User$jobRoles(this._res);

  TRes _res;

  call({String? id, String? name, String? description, String? $__typename}) =>
      _res;
}

class Mutation$UpdateUser$updateUser$$User$created
    implements Fragment$UserFragment$created {
  Mutation$UpdateUser$updateUser$$User$created({
    required this.userInfoId,
    required this.userName,
    required this.at,
    this.$__typename = 'Created',
  });

  factory Mutation$UpdateUser$updateUser$$User$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser$updateUser$$User$created(
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      at: DateTime.parse((l$at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String userInfoId;

  final String userName;

  final DateTime at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$at = at;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userInfoId, l$userName, l$at, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateUser$updateUser$$User$created ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
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

extension UtilityExtension$Mutation$UpdateUser$updateUser$$User$created
    on Mutation$UpdateUser$updateUser$$User$created {
  CopyWith$Mutation$UpdateUser$updateUser$$User$created<
    Mutation$UpdateUser$updateUser$$User$created
  >
  get copyWith =>
      CopyWith$Mutation$UpdateUser$updateUser$$User$created(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateUser$updateUser$$User$created<TRes> {
  factory CopyWith$Mutation$UpdateUser$updateUser$$User$created(
    Mutation$UpdateUser$updateUser$$User$created instance,
    TRes Function(Mutation$UpdateUser$updateUser$$User$created) then,
  ) = _CopyWithImpl$Mutation$UpdateUser$updateUser$$User$created;

  factory CopyWith$Mutation$UpdateUser$updateUser$$User$created.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$User$created;

  TRes call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateUser$updateUser$$User$created<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser$$User$created<TRes> {
  _CopyWithImpl$Mutation$UpdateUser$updateUser$$User$created(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUser$updateUser$$User$created _instance;

  final TRes Function(Mutation$UpdateUser$updateUser$$User$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? at = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateUser$updateUser$$User$created(
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$User$created<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser$$User$created<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$User$created(this._res);

  TRes _res;

  call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  }) => _res;
}

class Mutation$UpdateUser$updateUser$$User$modified
    implements Fragment$UserFragment$modified {
  Mutation$UpdateUser$updateUser$$User$modified({
    required this.userInfoId,
    required this.userName,
    required this.at,
    this.$__typename = 'Modified',
  });

  factory Mutation$UpdateUser$updateUser$$User$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser$updateUser$$User$modified(
      userInfoId: (l$userInfoId as String),
      userName: (l$userName as String),
      at: DateTime.parse((l$at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String userInfoId;

  final String userName;

  final DateTime at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userInfoId = userInfoId;
    _resultData['userInfoId'] = l$userInfoId;
    final l$userName = userName;
    _resultData['userName'] = l$userName;
    final l$at = at;
    _resultData['at'] = l$at.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userInfoId = userInfoId;
    final l$userName = userName;
    final l$at = at;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userInfoId, l$userName, l$at, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateUser$updateUser$$User$modified ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userInfoId = userInfoId;
    final lOther$userInfoId = other.userInfoId;
    if (l$userInfoId != lOther$userInfoId) {
      return false;
    }
    final l$userName = userName;
    final lOther$userName = other.userName;
    if (l$userName != lOther$userName) {
      return false;
    }
    final l$at = at;
    final lOther$at = other.at;
    if (l$at != lOther$at) {
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

extension UtilityExtension$Mutation$UpdateUser$updateUser$$User$modified
    on Mutation$UpdateUser$updateUser$$User$modified {
  CopyWith$Mutation$UpdateUser$updateUser$$User$modified<
    Mutation$UpdateUser$updateUser$$User$modified
  >
  get copyWith =>
      CopyWith$Mutation$UpdateUser$updateUser$$User$modified(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateUser$updateUser$$User$modified<TRes> {
  factory CopyWith$Mutation$UpdateUser$updateUser$$User$modified(
    Mutation$UpdateUser$updateUser$$User$modified instance,
    TRes Function(Mutation$UpdateUser$updateUser$$User$modified) then,
  ) = _CopyWithImpl$Mutation$UpdateUser$updateUser$$User$modified;

  factory CopyWith$Mutation$UpdateUser$updateUser$$User$modified.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$User$modified;

  TRes call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateUser$updateUser$$User$modified<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser$$User$modified<TRes> {
  _CopyWithImpl$Mutation$UpdateUser$updateUser$$User$modified(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUser$updateUser$$User$modified _instance;

  final TRes Function(Mutation$UpdateUser$updateUser$$User$modified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? at = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateUser$updateUser$$User$modified(
      userInfoId: userInfoId == _undefined || userInfoId == null
          ? _instance.userInfoId
          : (userInfoId as String),
      userName: userName == _undefined || userName == null
          ? _instance.userName
          : (userName as String),
      at: at == _undefined || at == null ? _instance.at : (at as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$User$modified<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUser$$User$modified<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser$updateUser$$User$modified(this._res);

  TRes _res;

  call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  }) => _res;
}
