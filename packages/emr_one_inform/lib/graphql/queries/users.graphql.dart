import 'package:gql/ast.dart';

class Variables$Query$Users {
  factory Variables$Query$Users({required String filter}) =>
      Variables$Query$Users._({
        r'filter': filter,
      });

  Variables$Query$Users._(this._$data);

  factory Variables$Query$Users.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$filter = data['filter'];
    result$data['filter'] = (l$filter as String);
    return Variables$Query$Users._(result$data);
  }

  Map<String, dynamic> _$data;

  String get filter => (_$data['filter'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$filter = filter;
    result$data['filter'] = l$filter;
    return result$data;
  }

  CopyWith$Variables$Query$Users<Variables$Query$Users> get copyWith =>
      CopyWith$Variables$Query$Users(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Users) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (l$filter != lOther$filter) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    return Object.hashAll([l$filter]);
  }
}

abstract class CopyWith$Variables$Query$Users<TRes> {
  factory CopyWith$Variables$Query$Users(
    Variables$Query$Users instance,
    TRes Function(Variables$Query$Users) then,
  ) = _CopyWithImpl$Variables$Query$Users;

  factory CopyWith$Variables$Query$Users.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Users;

  TRes call({String? filter});
}

class _CopyWithImpl$Variables$Query$Users<TRes>
    implements CopyWith$Variables$Query$Users<TRes> {
  _CopyWithImpl$Variables$Query$Users(
    this._instance,
    this._then,
  );

  final Variables$Query$Users _instance;

  final TRes Function(Variables$Query$Users) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? filter = _undefined}) => _then(Variables$Query$Users._({
        ..._instance._$data,
        if (filter != _undefined && filter != null)
          'filter': (filter as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$Users<TRes>
    implements CopyWith$Variables$Query$Users<TRes> {
  _CopyWithStubImpl$Variables$Query$Users(this._res);

  TRes _res;

  call({String? filter}) => _res;
}

class Query$Users {
  Query$Users({
    required this.users,
    this.$__typename = 'FormsQuery',
  });

  factory Query$Users.fromJson(Map<String, dynamic> json) {
    final l$users = json['users'];
    final l$$__typename = json['__typename'];
    return Query$Users(
      users: (l$users as List<dynamic>)
          .map((e) => Query$Users$users.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Users$users> users;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$users = users;
    _resultData['users'] = l$users.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$users = users;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$users.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Users) || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Users on Query$Users {
  CopyWith$Query$Users<Query$Users> get copyWith => CopyWith$Query$Users(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Users<TRes> {
  factory CopyWith$Query$Users(
    Query$Users instance,
    TRes Function(Query$Users) then,
  ) = _CopyWithImpl$Query$Users;

  factory CopyWith$Query$Users.stub(TRes res) = _CopyWithStubImpl$Query$Users;

  TRes call({
    List<Query$Users$users>? users,
    String? $__typename,
  });
  TRes users(
      Iterable<Query$Users$users> Function(
              Iterable<CopyWith$Query$Users$users<Query$Users$users>>)
          _fn);
}

class _CopyWithImpl$Query$Users<TRes> implements CopyWith$Query$Users<TRes> {
  _CopyWithImpl$Query$Users(
    this._instance,
    this._then,
  );

  final Query$Users _instance;

  final TRes Function(Query$Users) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? users = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Users(
        users: users == _undefined || users == null
            ? _instance.users
            : (users as List<Query$Users$users>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes users(
          Iterable<Query$Users$users> Function(
                  Iterable<CopyWith$Query$Users$users<Query$Users$users>>)
              _fn) =>
      call(
          users: _fn(_instance.users.map((e) => CopyWith$Query$Users$users(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$Users<TRes>
    implements CopyWith$Query$Users<TRes> {
  _CopyWithStubImpl$Query$Users(this._res);

  TRes _res;

  call({
    List<Query$Users$users>? users,
    String? $__typename,
  }) =>
      _res;

  users(_fn) => _res;
}

const documentNodeQueryUsers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Users'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'users'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'firstName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'surname'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
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

class Query$Users$users {
  Query$Users$users({
    required this.id,
    this.firstName,
    this.surname,
    this.email,
    this.$__typename = 'EMRUsers',
  });

  factory Query$Users$users.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$surname = json['surname'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Query$Users$users(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      surname: (l$surname as String?),
      email: (l$email as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? firstName;

  final String? surname;

  final String? email;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$surname = surname;
    _resultData['surname'] = l$surname;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$surname = surname;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$surname,
      l$email,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Users$users) || runtimeType != other.runtimeType) {
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
    final l$surname = surname;
    final lOther$surname = other.surname;
    if (l$surname != lOther$surname) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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

extension UtilityExtension$Query$Users$users on Query$Users$users {
  CopyWith$Query$Users$users<Query$Users$users> get copyWith =>
      CopyWith$Query$Users$users(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Users$users<TRes> {
  factory CopyWith$Query$Users$users(
    Query$Users$users instance,
    TRes Function(Query$Users$users) then,
  ) = _CopyWithImpl$Query$Users$users;

  factory CopyWith$Query$Users$users.stub(TRes res) =
      _CopyWithStubImpl$Query$Users$users;

  TRes call({
    String? id,
    String? firstName,
    String? surname,
    String? email,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Users$users<TRes>
    implements CopyWith$Query$Users$users<TRes> {
  _CopyWithImpl$Query$Users$users(
    this._instance,
    this._then,
  );

  final Query$Users$users _instance;

  final TRes Function(Query$Users$users) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? surname = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Users$users(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        surname:
            surname == _undefined ? _instance.surname : (surname as String?),
        email: email == _undefined ? _instance.email : (email as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Users$users<TRes>
    implements CopyWith$Query$Users$users<TRes> {
  _CopyWithStubImpl$Query$Users$users(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? surname,
    String? email,
    String? $__typename,
  }) =>
      _res;
}
