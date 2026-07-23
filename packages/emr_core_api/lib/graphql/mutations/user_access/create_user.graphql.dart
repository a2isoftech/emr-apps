import '../../fragments/user_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateUser {
  factory Variables$Mutation$CreateUser({
    required String id,
    required String firstName,
    required String lastName,
    required String emailAddress,
    required String employeeNumber,
    required String jobTitle,
    required List<String> territoryIds,
    required String defaultYardId,
    required List<String> jobRoleIds,
  }) => Variables$Mutation$CreateUser._({
    r'id': id,
    r'firstName': firstName,
    r'lastName': lastName,
    r'emailAddress': emailAddress,
    r'employeeNumber': employeeNumber,
    r'jobTitle': jobTitle,
    r'territoryIds': territoryIds,
    r'defaultYardId': defaultYardId,
    r'jobRoleIds': jobRoleIds,
  });

  Variables$Mutation$CreateUser._(this._$data);

  factory Variables$Mutation$CreateUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
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
    return Variables$Mutation$CreateUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

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

  CopyWith$Variables$Mutation$CreateUser<Variables$Mutation$CreateUser>
  get copyWith => CopyWith$Variables$Mutation$CreateUser(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

abstract class CopyWith$Variables$Mutation$CreateUser<TRes> {
  factory CopyWith$Variables$Mutation$CreateUser(
    Variables$Mutation$CreateUser instance,
    TRes Function(Variables$Mutation$CreateUser) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateUser;

  factory CopyWith$Variables$Mutation$CreateUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateUser;

  TRes call({
    String? id,
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

class _CopyWithImpl$Variables$Mutation$CreateUser<TRes>
    implements CopyWith$Variables$Mutation$CreateUser<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateUser(this._instance, this._then);

  final Variables$Mutation$CreateUser _instance;

  final TRes Function(Variables$Mutation$CreateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? emailAddress = _undefined,
    Object? employeeNumber = _undefined,
    Object? jobTitle = _undefined,
    Object? territoryIds = _undefined,
    Object? defaultYardId = _undefined,
    Object? jobRoleIds = _undefined,
  }) => _then(
    Variables$Mutation$CreateUser._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
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

class _CopyWithStubImpl$Variables$Mutation$CreateUser<TRes>
    implements CopyWith$Variables$Mutation$CreateUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateUser(this._res);

  TRes _res;

  call({
    String? id,
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

class Mutation$CreateUser {
  Mutation$CreateUser({this.createUser, this.$__typename = 'Mutation'});

  factory Mutation$CreateUser.fromJson(Map<String, dynamic> json) {
    final l$createUser = json['createUser'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateUser(
      createUser: l$createUser == null
          ? null
          : Mutation$CreateUser$createUser.fromJson(
              (l$createUser as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateUser$createUser? createUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createUser = createUser;
    _resultData['createUser'] = l$createUser?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createUser = createUser;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createUser, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createUser = createUser;
    final lOther$createUser = other.createUser;
    if (l$createUser != lOther$createUser) {
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

extension UtilityExtension$Mutation$CreateUser on Mutation$CreateUser {
  CopyWith$Mutation$CreateUser<Mutation$CreateUser> get copyWith =>
      CopyWith$Mutation$CreateUser(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateUser<TRes> {
  factory CopyWith$Mutation$CreateUser(
    Mutation$CreateUser instance,
    TRes Function(Mutation$CreateUser) then,
  ) = _CopyWithImpl$Mutation$CreateUser;

  factory CopyWith$Mutation$CreateUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateUser;

  TRes call({Mutation$CreateUser$createUser? createUser, String? $__typename});
  CopyWith$Mutation$CreateUser$createUser<TRes> get createUser;
}

class _CopyWithImpl$Mutation$CreateUser<TRes>
    implements CopyWith$Mutation$CreateUser<TRes> {
  _CopyWithImpl$Mutation$CreateUser(this._instance, this._then);

  final Mutation$CreateUser _instance;

  final TRes Function(Mutation$CreateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createUser = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateUser(
      createUser: createUser == _undefined
          ? _instance.createUser
          : (createUser as Mutation$CreateUser$createUser?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateUser$createUser<TRes> get createUser {
    final local$createUser = _instance.createUser;
    return local$createUser == null
        ? CopyWith$Mutation$CreateUser$createUser.stub(_then(_instance))
        : CopyWith$Mutation$CreateUser$createUser(
            local$createUser,
            (e) => call(createUser: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CreateUser<TRes>
    implements CopyWith$Mutation$CreateUser<TRes> {
  _CopyWithStubImpl$Mutation$CreateUser(this._res);

  TRes _res;

  call({Mutation$CreateUser$createUser? createUser, String? $__typename}) =>
      _res;

  CopyWith$Mutation$CreateUser$createUser<TRes> get createUser =>
      CopyWith$Mutation$CreateUser$createUser.stub(_res);
}

const documentNodeMutationCreateUser = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateUser'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
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
            name: NameNode(value: 'createUser'),
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
                    ObjectFieldNode(
                      name: NameNode(value: 'externalIds'),
                      value: ListValueNode(values: []),
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
                      name: NameNode(value: 'CreateUserError'),
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

class Mutation$CreateUser$createUser {
  Mutation$CreateUser$createUser({required this.$__typename});

  factory Mutation$CreateUser$createUser.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "CreateUserError":
        return Mutation$CreateUser$createUser$$CreateUserError.fromJson(json);

      case "User":
        return Mutation$CreateUser$createUser$$User.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$CreateUser$createUser(
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
    if (other is! Mutation$CreateUser$createUser ||
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

extension UtilityExtension$Mutation$CreateUser$createUser
    on Mutation$CreateUser$createUser {
  CopyWith$Mutation$CreateUser$createUser<Mutation$CreateUser$createUser>
  get copyWith => CopyWith$Mutation$CreateUser$createUser(this, (i) => i);

  _T when<_T>({
    required _T Function(Mutation$CreateUser$createUser$$CreateUserError)
    createUserError,
    required _T Function(Mutation$CreateUser$createUser$$User) user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "CreateUserError":
        return createUserError(
          this as Mutation$CreateUser$createUser$$CreateUserError,
        );

      case "User":
        return user(this as Mutation$CreateUser$createUser$$User);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$CreateUser$createUser$$CreateUserError)?
    createUserError,
    _T Function(Mutation$CreateUser$createUser$$User)? user,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "CreateUserError":
        if (createUserError != null) {
          return createUserError(
            this as Mutation$CreateUser$createUser$$CreateUserError,
          );
        } else {
          return orElse();
        }

      case "User":
        if (user != null) {
          return user(this as Mutation$CreateUser$createUser$$User);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$CreateUser$createUser<TRes> {
  factory CopyWith$Mutation$CreateUser$createUser(
    Mutation$CreateUser$createUser instance,
    TRes Function(Mutation$CreateUser$createUser) then,
  ) = _CopyWithImpl$Mutation$CreateUser$createUser;

  factory CopyWith$Mutation$CreateUser$createUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateUser$createUser;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$CreateUser$createUser<TRes>
    implements CopyWith$Mutation$CreateUser$createUser<TRes> {
  _CopyWithImpl$Mutation$CreateUser$createUser(this._instance, this._then);

  final Mutation$CreateUser$createUser _instance;

  final TRes Function(Mutation$CreateUser$createUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$CreateUser$createUser(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateUser$createUser<TRes>
    implements CopyWith$Mutation$CreateUser$createUser<TRes> {
  _CopyWithStubImpl$Mutation$CreateUser$createUser(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$CreateUser$createUser$$CreateUserError
    implements Mutation$CreateUser$createUser {
  Mutation$CreateUser$createUser$$CreateUserError({
    required this.message,
    this.$__typename = 'CreateUserError',
  });

  factory Mutation$CreateUser$createUser$$CreateUserError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateUser$createUser$$CreateUserError(
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
    if (other is! Mutation$CreateUser$createUser$$CreateUserError ||
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

extension UtilityExtension$Mutation$CreateUser$createUser$$CreateUserError
    on Mutation$CreateUser$createUser$$CreateUserError {
  CopyWith$Mutation$CreateUser$createUser$$CreateUserError<
    Mutation$CreateUser$createUser$$CreateUserError
  >
  get copyWith =>
      CopyWith$Mutation$CreateUser$createUser$$CreateUserError(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateUser$createUser$$CreateUserError<TRes> {
  factory CopyWith$Mutation$CreateUser$createUser$$CreateUserError(
    Mutation$CreateUser$createUser$$CreateUserError instance,
    TRes Function(Mutation$CreateUser$createUser$$CreateUserError) then,
  ) = _CopyWithImpl$Mutation$CreateUser$createUser$$CreateUserError;

  factory CopyWith$Mutation$CreateUser$createUser$$CreateUserError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateUser$createUser$$CreateUserError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateUser$createUser$$CreateUserError<TRes>
    implements CopyWith$Mutation$CreateUser$createUser$$CreateUserError<TRes> {
  _CopyWithImpl$Mutation$CreateUser$createUser$$CreateUserError(
    this._instance,
    this._then,
  );

  final Mutation$CreateUser$createUser$$CreateUserError _instance;

  final TRes Function(Mutation$CreateUser$createUser$$CreateUserError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$CreateUser$createUser$$CreateUserError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$CreateUser$createUser$$CreateUserError<TRes>
    implements CopyWith$Mutation$CreateUser$createUser$$CreateUserError<TRes> {
  _CopyWithStubImpl$Mutation$CreateUser$createUser$$CreateUserError(this._res);

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Mutation$CreateUser$createUser$$User
    implements Fragment$UserFragment, Mutation$CreateUser$createUser {
  Mutation$CreateUser$createUser$$User({
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

  factory Mutation$CreateUser$createUser$$User.fromJson(
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
    return Mutation$CreateUser$createUser$$User(
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
                : Mutation$CreateUser$createUser$$User$territories.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      defaultYard: l$defaultYard == null
          ? null
          : Mutation$CreateUser$createUser$$User$defaultYard.fromJson(
              (l$defaultYard as Map<String, dynamic>),
            ),
      jobRoles: (l$jobRoles as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Mutation$CreateUser$createUser$$User$jobRoles.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      created: Mutation$CreateUser$createUser$$User$created.fromJson(
        (l$created as Map<String, dynamic>),
      ),
      modified: Mutation$CreateUser$createUser$$User$modified.fromJson(
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

  final List<Mutation$CreateUser$createUser$$User$territories?>? territories;

  final Mutation$CreateUser$createUser$$User$defaultYard? defaultYard;

  final List<Mutation$CreateUser$createUser$$User$jobRoles?>? jobRoles;

  final Mutation$CreateUser$createUser$$User$created created;

  final Mutation$CreateUser$createUser$$User$modified modified;

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
    if (other is! Mutation$CreateUser$createUser$$User ||
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

extension UtilityExtension$Mutation$CreateUser$createUser$$User
    on Mutation$CreateUser$createUser$$User {
  CopyWith$Mutation$CreateUser$createUser$$User<
    Mutation$CreateUser$createUser$$User
  >
  get copyWith => CopyWith$Mutation$CreateUser$createUser$$User(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateUser$createUser$$User<TRes> {
  factory CopyWith$Mutation$CreateUser$createUser$$User(
    Mutation$CreateUser$createUser$$User instance,
    TRes Function(Mutation$CreateUser$createUser$$User) then,
  ) = _CopyWithImpl$Mutation$CreateUser$createUser$$User;

  factory CopyWith$Mutation$CreateUser$createUser$$User.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateUser$createUser$$User;

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
    List<Mutation$CreateUser$createUser$$User$territories?>? territories,
    Mutation$CreateUser$createUser$$User$defaultYard? defaultYard,
    List<Mutation$CreateUser$createUser$$User$jobRoles?>? jobRoles,
    Mutation$CreateUser$createUser$$User$created? created,
    Mutation$CreateUser$createUser$$User$modified? modified,
    String? $__typename,
  });
  TRes territories(
    Iterable<Mutation$CreateUser$createUser$$User$territories?>? Function(
      Iterable<
        CopyWith$Mutation$CreateUser$createUser$$User$territories<
          Mutation$CreateUser$createUser$$User$territories
        >?
      >?,
    )
    _fn,
  );
  CopyWith$Mutation$CreateUser$createUser$$User$defaultYard<TRes>
  get defaultYard;
  TRes jobRoles(
    Iterable<Mutation$CreateUser$createUser$$User$jobRoles?>? Function(
      Iterable<
        CopyWith$Mutation$CreateUser$createUser$$User$jobRoles<
          Mutation$CreateUser$createUser$$User$jobRoles
        >?
      >?,
    )
    _fn,
  );
  CopyWith$Mutation$CreateUser$createUser$$User$created<TRes> get created;
  CopyWith$Mutation$CreateUser$createUser$$User$modified<TRes> get modified;
}

class _CopyWithImpl$Mutation$CreateUser$createUser$$User<TRes>
    implements CopyWith$Mutation$CreateUser$createUser$$User<TRes> {
  _CopyWithImpl$Mutation$CreateUser$createUser$$User(
    this._instance,
    this._then,
  );

  final Mutation$CreateUser$createUser$$User _instance;

  final TRes Function(Mutation$CreateUser$createUser$$User) _then;

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
    Mutation$CreateUser$createUser$$User(
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
                as List<Mutation$CreateUser$createUser$$User$territories?>?),
      defaultYard: defaultYard == _undefined
          ? _instance.defaultYard
          : (defaultYard as Mutation$CreateUser$createUser$$User$defaultYard?),
      jobRoles: jobRoles == _undefined
          ? _instance.jobRoles
          : (jobRoles as List<Mutation$CreateUser$createUser$$User$jobRoles?>?),
      created: created == _undefined || created == null
          ? _instance.created
          : (created as Mutation$CreateUser$createUser$$User$created),
      modified: modified == _undefined || modified == null
          ? _instance.modified
          : (modified as Mutation$CreateUser$createUser$$User$modified),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes territories(
    Iterable<Mutation$CreateUser$createUser$$User$territories?>? Function(
      Iterable<
        CopyWith$Mutation$CreateUser$createUser$$User$territories<
          Mutation$CreateUser$createUser$$User$territories
        >?
      >?,
    )
    _fn,
  ) => call(
    territories: _fn(
      _instance.territories?.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$CreateUser$createUser$$User$territories(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );

  CopyWith$Mutation$CreateUser$createUser$$User$defaultYard<TRes>
  get defaultYard {
    final local$defaultYard = _instance.defaultYard;
    return local$defaultYard == null
        ? CopyWith$Mutation$CreateUser$createUser$$User$defaultYard.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CreateUser$createUser$$User$defaultYard(
            local$defaultYard,
            (e) => call(defaultYard: e),
          );
  }

  TRes jobRoles(
    Iterable<Mutation$CreateUser$createUser$$User$jobRoles?>? Function(
      Iterable<
        CopyWith$Mutation$CreateUser$createUser$$User$jobRoles<
          Mutation$CreateUser$createUser$$User$jobRoles
        >?
      >?,
    )
    _fn,
  ) => call(
    jobRoles: _fn(
      _instance.jobRoles?.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$CreateUser$createUser$$User$jobRoles(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );

  CopyWith$Mutation$CreateUser$createUser$$User$created<TRes> get created {
    final local$created = _instance.created;
    return CopyWith$Mutation$CreateUser$createUser$$User$created(
      local$created,
      (e) => call(created: e),
    );
  }

  CopyWith$Mutation$CreateUser$createUser$$User$modified<TRes> get modified {
    final local$modified = _instance.modified;
    return CopyWith$Mutation$CreateUser$createUser$$User$modified(
      local$modified,
      (e) => call(modified: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CreateUser$createUser$$User<TRes>
    implements CopyWith$Mutation$CreateUser$createUser$$User<TRes> {
  _CopyWithStubImpl$Mutation$CreateUser$createUser$$User(this._res);

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
    List<Mutation$CreateUser$createUser$$User$territories?>? territories,
    Mutation$CreateUser$createUser$$User$defaultYard? defaultYard,
    List<Mutation$CreateUser$createUser$$User$jobRoles?>? jobRoles,
    Mutation$CreateUser$createUser$$User$created? created,
    Mutation$CreateUser$createUser$$User$modified? modified,
    String? $__typename,
  }) => _res;

  territories(_fn) => _res;

  CopyWith$Mutation$CreateUser$createUser$$User$defaultYard<TRes>
  get defaultYard =>
      CopyWith$Mutation$CreateUser$createUser$$User$defaultYard.stub(_res);

  jobRoles(_fn) => _res;

  CopyWith$Mutation$CreateUser$createUser$$User$created<TRes> get created =>
      CopyWith$Mutation$CreateUser$createUser$$User$created.stub(_res);

  CopyWith$Mutation$CreateUser$createUser$$User$modified<TRes> get modified =>
      CopyWith$Mutation$CreateUser$createUser$$User$modified.stub(_res);
}

class Mutation$CreateUser$createUser$$User$territories
    implements Fragment$UserFragment$territories {
  Mutation$CreateUser$createUser$$User$territories({
    required this.id,
    required this.name,
    required this.code,
    this.$__typename = 'Territory',
  });

  factory Mutation$CreateUser$createUser$$User$territories.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateUser$createUser$$User$territories(
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
    if (other is! Mutation$CreateUser$createUser$$User$territories ||
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

extension UtilityExtension$Mutation$CreateUser$createUser$$User$territories
    on Mutation$CreateUser$createUser$$User$territories {
  CopyWith$Mutation$CreateUser$createUser$$User$territories<
    Mutation$CreateUser$createUser$$User$territories
  >
  get copyWith =>
      CopyWith$Mutation$CreateUser$createUser$$User$territories(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateUser$createUser$$User$territories<TRes> {
  factory CopyWith$Mutation$CreateUser$createUser$$User$territories(
    Mutation$CreateUser$createUser$$User$territories instance,
    TRes Function(Mutation$CreateUser$createUser$$User$territories) then,
  ) = _CopyWithImpl$Mutation$CreateUser$createUser$$User$territories;

  factory CopyWith$Mutation$CreateUser$createUser$$User$territories.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateUser$createUser$$User$territories;

  TRes call({String? id, String? name, String? code, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateUser$createUser$$User$territories<TRes>
    implements CopyWith$Mutation$CreateUser$createUser$$User$territories<TRes> {
  _CopyWithImpl$Mutation$CreateUser$createUser$$User$territories(
    this._instance,
    this._then,
  );

  final Mutation$CreateUser$createUser$$User$territories _instance;

  final TRes Function(Mutation$CreateUser$createUser$$User$territories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateUser$createUser$$User$territories(
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

class _CopyWithStubImpl$Mutation$CreateUser$createUser$$User$territories<TRes>
    implements CopyWith$Mutation$CreateUser$createUser$$User$territories<TRes> {
  _CopyWithStubImpl$Mutation$CreateUser$createUser$$User$territories(this._res);

  TRes _res;

  call({String? id, String? name, String? code, String? $__typename}) => _res;
}

class Mutation$CreateUser$createUser$$User$defaultYard
    implements Fragment$UserFragment$defaultYard {
  Mutation$CreateUser$createUser$$User$defaultYard({
    required this.id,
    required this.shortName,
    required this.yardCode,
    this.$__typename = 'Yard',
  });

  factory Mutation$CreateUser$createUser$$User$defaultYard.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$shortName = json['shortName'];
    final l$yardCode = json['yardCode'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateUser$createUser$$User$defaultYard(
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
    if (other is! Mutation$CreateUser$createUser$$User$defaultYard ||
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

extension UtilityExtension$Mutation$CreateUser$createUser$$User$defaultYard
    on Mutation$CreateUser$createUser$$User$defaultYard {
  CopyWith$Mutation$CreateUser$createUser$$User$defaultYard<
    Mutation$CreateUser$createUser$$User$defaultYard
  >
  get copyWith =>
      CopyWith$Mutation$CreateUser$createUser$$User$defaultYard(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateUser$createUser$$User$defaultYard<TRes> {
  factory CopyWith$Mutation$CreateUser$createUser$$User$defaultYard(
    Mutation$CreateUser$createUser$$User$defaultYard instance,
    TRes Function(Mutation$CreateUser$createUser$$User$defaultYard) then,
  ) = _CopyWithImpl$Mutation$CreateUser$createUser$$User$defaultYard;

  factory CopyWith$Mutation$CreateUser$createUser$$User$defaultYard.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateUser$createUser$$User$defaultYard;

  TRes call({
    String? id,
    String? shortName,
    String? yardCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateUser$createUser$$User$defaultYard<TRes>
    implements CopyWith$Mutation$CreateUser$createUser$$User$defaultYard<TRes> {
  _CopyWithImpl$Mutation$CreateUser$createUser$$User$defaultYard(
    this._instance,
    this._then,
  );

  final Mutation$CreateUser$createUser$$User$defaultYard _instance;

  final TRes Function(Mutation$CreateUser$createUser$$User$defaultYard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? shortName = _undefined,
    Object? yardCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateUser$createUser$$User$defaultYard(
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

class _CopyWithStubImpl$Mutation$CreateUser$createUser$$User$defaultYard<TRes>
    implements CopyWith$Mutation$CreateUser$createUser$$User$defaultYard<TRes> {
  _CopyWithStubImpl$Mutation$CreateUser$createUser$$User$defaultYard(this._res);

  TRes _res;

  call({
    String? id,
    String? shortName,
    String? yardCode,
    String? $__typename,
  }) => _res;
}

class Mutation$CreateUser$createUser$$User$jobRoles
    implements Fragment$UserFragment$jobRoles {
  Mutation$CreateUser$createUser$$User$jobRoles({
    required this.id,
    required this.name,
    required this.description,
    this.$__typename = 'JobRole',
  });

  factory Mutation$CreateUser$createUser$$User$jobRoles.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateUser$createUser$$User$jobRoles(
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
    if (other is! Mutation$CreateUser$createUser$$User$jobRoles ||
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

extension UtilityExtension$Mutation$CreateUser$createUser$$User$jobRoles
    on Mutation$CreateUser$createUser$$User$jobRoles {
  CopyWith$Mutation$CreateUser$createUser$$User$jobRoles<
    Mutation$CreateUser$createUser$$User$jobRoles
  >
  get copyWith =>
      CopyWith$Mutation$CreateUser$createUser$$User$jobRoles(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateUser$createUser$$User$jobRoles<TRes> {
  factory CopyWith$Mutation$CreateUser$createUser$$User$jobRoles(
    Mutation$CreateUser$createUser$$User$jobRoles instance,
    TRes Function(Mutation$CreateUser$createUser$$User$jobRoles) then,
  ) = _CopyWithImpl$Mutation$CreateUser$createUser$$User$jobRoles;

  factory CopyWith$Mutation$CreateUser$createUser$$User$jobRoles.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateUser$createUser$$User$jobRoles;

  TRes call({
    String? id,
    String? name,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateUser$createUser$$User$jobRoles<TRes>
    implements CopyWith$Mutation$CreateUser$createUser$$User$jobRoles<TRes> {
  _CopyWithImpl$Mutation$CreateUser$createUser$$User$jobRoles(
    this._instance,
    this._then,
  );

  final Mutation$CreateUser$createUser$$User$jobRoles _instance;

  final TRes Function(Mutation$CreateUser$createUser$$User$jobRoles) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateUser$createUser$$User$jobRoles(
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

class _CopyWithStubImpl$Mutation$CreateUser$createUser$$User$jobRoles<TRes>
    implements CopyWith$Mutation$CreateUser$createUser$$User$jobRoles<TRes> {
  _CopyWithStubImpl$Mutation$CreateUser$createUser$$User$jobRoles(this._res);

  TRes _res;

  call({String? id, String? name, String? description, String? $__typename}) =>
      _res;
}

class Mutation$CreateUser$createUser$$User$created
    implements Fragment$UserFragment$created {
  Mutation$CreateUser$createUser$$User$created({
    required this.userInfoId,
    required this.userName,
    required this.at,
    this.$__typename = 'Created',
  });

  factory Mutation$CreateUser$createUser$$User$created.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateUser$createUser$$User$created(
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
    if (other is! Mutation$CreateUser$createUser$$User$created ||
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

extension UtilityExtension$Mutation$CreateUser$createUser$$User$created
    on Mutation$CreateUser$createUser$$User$created {
  CopyWith$Mutation$CreateUser$createUser$$User$created<
    Mutation$CreateUser$createUser$$User$created
  >
  get copyWith =>
      CopyWith$Mutation$CreateUser$createUser$$User$created(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateUser$createUser$$User$created<TRes> {
  factory CopyWith$Mutation$CreateUser$createUser$$User$created(
    Mutation$CreateUser$createUser$$User$created instance,
    TRes Function(Mutation$CreateUser$createUser$$User$created) then,
  ) = _CopyWithImpl$Mutation$CreateUser$createUser$$User$created;

  factory CopyWith$Mutation$CreateUser$createUser$$User$created.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateUser$createUser$$User$created;

  TRes call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateUser$createUser$$User$created<TRes>
    implements CopyWith$Mutation$CreateUser$createUser$$User$created<TRes> {
  _CopyWithImpl$Mutation$CreateUser$createUser$$User$created(
    this._instance,
    this._then,
  );

  final Mutation$CreateUser$createUser$$User$created _instance;

  final TRes Function(Mutation$CreateUser$createUser$$User$created) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? at = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateUser$createUser$$User$created(
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

class _CopyWithStubImpl$Mutation$CreateUser$createUser$$User$created<TRes>
    implements CopyWith$Mutation$CreateUser$createUser$$User$created<TRes> {
  _CopyWithStubImpl$Mutation$CreateUser$createUser$$User$created(this._res);

  TRes _res;

  call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  }) => _res;
}

class Mutation$CreateUser$createUser$$User$modified
    implements Fragment$UserFragment$modified {
  Mutation$CreateUser$createUser$$User$modified({
    required this.userInfoId,
    required this.userName,
    required this.at,
    this.$__typename = 'Modified',
  });

  factory Mutation$CreateUser$createUser$$User$modified.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$userInfoId = json['userInfoId'];
    final l$userName = json['userName'];
    final l$at = json['at'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateUser$createUser$$User$modified(
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
    if (other is! Mutation$CreateUser$createUser$$User$modified ||
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

extension UtilityExtension$Mutation$CreateUser$createUser$$User$modified
    on Mutation$CreateUser$createUser$$User$modified {
  CopyWith$Mutation$CreateUser$createUser$$User$modified<
    Mutation$CreateUser$createUser$$User$modified
  >
  get copyWith =>
      CopyWith$Mutation$CreateUser$createUser$$User$modified(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateUser$createUser$$User$modified<TRes> {
  factory CopyWith$Mutation$CreateUser$createUser$$User$modified(
    Mutation$CreateUser$createUser$$User$modified instance,
    TRes Function(Mutation$CreateUser$createUser$$User$modified) then,
  ) = _CopyWithImpl$Mutation$CreateUser$createUser$$User$modified;

  factory CopyWith$Mutation$CreateUser$createUser$$User$modified.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateUser$createUser$$User$modified;

  TRes call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateUser$createUser$$User$modified<TRes>
    implements CopyWith$Mutation$CreateUser$createUser$$User$modified<TRes> {
  _CopyWithImpl$Mutation$CreateUser$createUser$$User$modified(
    this._instance,
    this._then,
  );

  final Mutation$CreateUser$createUser$$User$modified _instance;

  final TRes Function(Mutation$CreateUser$createUser$$User$modified) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userInfoId = _undefined,
    Object? userName = _undefined,
    Object? at = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateUser$createUser$$User$modified(
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

class _CopyWithStubImpl$Mutation$CreateUser$createUser$$User$modified<TRes>
    implements CopyWith$Mutation$CreateUser$createUser$$User$modified<TRes> {
  _CopyWithStubImpl$Mutation$CreateUser$createUser$$User$modified(this._res);

  TRes _res;

  call({
    String? userInfoId,
    String? userName,
    DateTime? at,
    String? $__typename,
  }) => _res;
}
