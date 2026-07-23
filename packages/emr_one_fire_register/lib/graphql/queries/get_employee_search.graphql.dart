import 'package:gql/ast.dart';

class Variables$Query$SearchEmployee {
  factory Variables$Query$SearchEmployee({required String pattern}) =>
      Variables$Query$SearchEmployee._({
        r'pattern': pattern,
      });

  Variables$Query$SearchEmployee._(this._$data);

  factory Variables$Query$SearchEmployee.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$pattern = data['pattern'];
    result$data['pattern'] = (l$pattern as String);
    return Variables$Query$SearchEmployee._(result$data);
  }

  Map<String, dynamic> _$data;

  String get pattern => (_$data['pattern'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$pattern = pattern;
    result$data['pattern'] = l$pattern;
    return result$data;
  }

  CopyWith$Variables$Query$SearchEmployee<Variables$Query$SearchEmployee>
      get copyWith => CopyWith$Variables$Query$SearchEmployee(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$SearchEmployee) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pattern = pattern;
    final lOther$pattern = other.pattern;
    if (l$pattern != lOther$pattern) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$pattern = pattern;
    return Object.hashAll([l$pattern]);
  }
}

abstract class CopyWith$Variables$Query$SearchEmployee<TRes> {
  factory CopyWith$Variables$Query$SearchEmployee(
    Variables$Query$SearchEmployee instance,
    TRes Function(Variables$Query$SearchEmployee) then,
  ) = _CopyWithImpl$Variables$Query$SearchEmployee;

  factory CopyWith$Variables$Query$SearchEmployee.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchEmployee;

  TRes call({String? pattern});
}

class _CopyWithImpl$Variables$Query$SearchEmployee<TRes>
    implements CopyWith$Variables$Query$SearchEmployee<TRes> {
  _CopyWithImpl$Variables$Query$SearchEmployee(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchEmployee _instance;

  final TRes Function(Variables$Query$SearchEmployee) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? pattern = _undefined}) =>
      _then(Variables$Query$SearchEmployee._({
        ..._instance._$data,
        if (pattern != _undefined && pattern != null)
          'pattern': (pattern as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchEmployee<TRes>
    implements CopyWith$Variables$Query$SearchEmployee<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchEmployee(this._res);

  TRes _res;

  call({String? pattern}) => _res;
}

class Query$SearchEmployee {
  Query$SearchEmployee({
    this.searchEmployee,
    this.$__typename = 'Query',
  });

  factory Query$SearchEmployee.fromJson(Map<String, dynamic> json) {
    final l$searchEmployee = json['searchEmployee'];
    final l$$__typename = json['__typename'];
    return Query$SearchEmployee(
      searchEmployee: (l$searchEmployee as List<dynamic>?)
          ?.map((e) => Query$SearchEmployee$searchEmployee.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SearchEmployee$searchEmployee>? searchEmployee;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$searchEmployee = searchEmployee;
    _resultData['searchEmployee'] =
        l$searchEmployee?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$searchEmployee = searchEmployee;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$searchEmployee == null
          ? null
          : Object.hashAll(l$searchEmployee.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchEmployee) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchEmployee = searchEmployee;
    final lOther$searchEmployee = other.searchEmployee;
    if (l$searchEmployee != null && lOther$searchEmployee != null) {
      if (l$searchEmployee.length != lOther$searchEmployee.length) {
        return false;
      }
      for (int i = 0; i < l$searchEmployee.length; i++) {
        final l$searchEmployee$entry = l$searchEmployee[i];
        final lOther$searchEmployee$entry = lOther$searchEmployee[i];
        if (l$searchEmployee$entry != lOther$searchEmployee$entry) {
          return false;
        }
      }
    } else if (l$searchEmployee != lOther$searchEmployee) {
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

extension UtilityExtension$Query$SearchEmployee on Query$SearchEmployee {
  CopyWith$Query$SearchEmployee<Query$SearchEmployee> get copyWith =>
      CopyWith$Query$SearchEmployee(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchEmployee<TRes> {
  factory CopyWith$Query$SearchEmployee(
    Query$SearchEmployee instance,
    TRes Function(Query$SearchEmployee) then,
  ) = _CopyWithImpl$Query$SearchEmployee;

  factory CopyWith$Query$SearchEmployee.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchEmployee;

  TRes call({
    List<Query$SearchEmployee$searchEmployee>? searchEmployee,
    String? $__typename,
  });
  TRes searchEmployee(
      Iterable<Query$SearchEmployee$searchEmployee>? Function(
              Iterable<
                  CopyWith$Query$SearchEmployee$searchEmployee<
                      Query$SearchEmployee$searchEmployee>>?)
          _fn);
}

class _CopyWithImpl$Query$SearchEmployee<TRes>
    implements CopyWith$Query$SearchEmployee<TRes> {
  _CopyWithImpl$Query$SearchEmployee(
    this._instance,
    this._then,
  );

  final Query$SearchEmployee _instance;

  final TRes Function(Query$SearchEmployee) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? searchEmployee = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchEmployee(
        searchEmployee: searchEmployee == _undefined
            ? _instance.searchEmployee
            : (searchEmployee as List<Query$SearchEmployee$searchEmployee>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes searchEmployee(
          Iterable<Query$SearchEmployee$searchEmployee>? Function(
                  Iterable<
                      CopyWith$Query$SearchEmployee$searchEmployee<
                          Query$SearchEmployee$searchEmployee>>?)
              _fn) =>
      call(
          searchEmployee: _fn(_instance.searchEmployee
              ?.map((e) => CopyWith$Query$SearchEmployee$searchEmployee(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$SearchEmployee<TRes>
    implements CopyWith$Query$SearchEmployee<TRes> {
  _CopyWithStubImpl$Query$SearchEmployee(this._res);

  TRes _res;

  call({
    List<Query$SearchEmployee$searchEmployee>? searchEmployee,
    String? $__typename,
  }) =>
      _res;

  searchEmployee(_fn) => _res;
}

const documentNodeQuerySearchEmployee = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchEmployee'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'pattern')),
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
        name: NameNode(value: 'searchEmployee'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'pattern'),
            value: VariableNode(name: NameNode(value: 'pattern')),
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
            name: NameNode(value: 'cardId'),
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

class Query$SearchEmployee$searchEmployee {
  Query$SearchEmployee$searchEmployee({
    required this.id,
    required this.firstName,
    required this.surname,
    this.cardId,
    required this.email,
    this.$__typename = 'GraphUser',
  });

  factory Query$SearchEmployee$searchEmployee.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$surname = json['surname'];
    final l$cardId = json['cardId'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Query$SearchEmployee$searchEmployee(
      id: (l$id as String),
      firstName: (l$firstName as String),
      surname: (l$surname as String),
      cardId: (l$cardId as String?),
      email: (l$email as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String firstName;

  final String surname;

  final String? cardId;

  final String email;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$surname = surname;
    _resultData['surname'] = l$surname;
    final l$cardId = cardId;
    _resultData['cardId'] = l$cardId;
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
    final l$cardId = cardId;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$surname,
      l$cardId,
      l$email,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchEmployee$searchEmployee) ||
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
    final l$surname = surname;
    final lOther$surname = other.surname;
    if (l$surname != lOther$surname) {
      return false;
    }
    final l$cardId = cardId;
    final lOther$cardId = other.cardId;
    if (l$cardId != lOther$cardId) {
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

extension UtilityExtension$Query$SearchEmployee$searchEmployee
    on Query$SearchEmployee$searchEmployee {
  CopyWith$Query$SearchEmployee$searchEmployee<
          Query$SearchEmployee$searchEmployee>
      get copyWith => CopyWith$Query$SearchEmployee$searchEmployee(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchEmployee$searchEmployee<TRes> {
  factory CopyWith$Query$SearchEmployee$searchEmployee(
    Query$SearchEmployee$searchEmployee instance,
    TRes Function(Query$SearchEmployee$searchEmployee) then,
  ) = _CopyWithImpl$Query$SearchEmployee$searchEmployee;

  factory CopyWith$Query$SearchEmployee$searchEmployee.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchEmployee$searchEmployee;

  TRes call({
    String? id,
    String? firstName,
    String? surname,
    String? cardId,
    String? email,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchEmployee$searchEmployee<TRes>
    implements CopyWith$Query$SearchEmployee$searchEmployee<TRes> {
  _CopyWithImpl$Query$SearchEmployee$searchEmployee(
    this._instance,
    this._then,
  );

  final Query$SearchEmployee$searchEmployee _instance;

  final TRes Function(Query$SearchEmployee$searchEmployee) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? surname = _undefined,
    Object? cardId = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchEmployee$searchEmployee(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        surname: surname == _undefined || surname == null
            ? _instance.surname
            : (surname as String),
        cardId: cardId == _undefined ? _instance.cardId : (cardId as String?),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchEmployee$searchEmployee<TRes>
    implements CopyWith$Query$SearchEmployee$searchEmployee<TRes> {
  _CopyWithStubImpl$Query$SearchEmployee$searchEmployee(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? surname,
    String? cardId,
    String? email,
    String? $__typename,
  }) =>
      _res;
}
