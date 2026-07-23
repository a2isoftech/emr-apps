import 'package:gql/ast.dart';

class Query$GetGradesForUser {
  Query$GetGradesForUser({
    required this.gradesForUser,
    this.$__typename = 'Query',
  });

  factory Query$GetGradesForUser.fromJson(Map<String, dynamic> json) {
    final l$gradesForUser = json['gradesForUser'];
    final l$$__typename = json['__typename'];
    return Query$GetGradesForUser(
      gradesForUser: (l$gradesForUser as List<dynamic>)
          .map((e) => Query$GetGradesForUser$gradesForUser.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetGradesForUser$gradesForUser> gradesForUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$gradesForUser = gradesForUser;
    _resultData['gradesForUser'] =
        l$gradesForUser.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$gradesForUser = gradesForUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$gradesForUser.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetGradesForUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$gradesForUser = gradesForUser;
    final lOther$gradesForUser = other.gradesForUser;
    if (l$gradesForUser.length != lOther$gradesForUser.length) {
      return false;
    }
    for (int i = 0; i < l$gradesForUser.length; i++) {
      final l$gradesForUser$entry = l$gradesForUser[i];
      final lOther$gradesForUser$entry = lOther$gradesForUser[i];
      if (l$gradesForUser$entry != lOther$gradesForUser$entry) {
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

extension UtilityExtension$Query$GetGradesForUser on Query$GetGradesForUser {
  CopyWith$Query$GetGradesForUser<Query$GetGradesForUser> get copyWith =>
      CopyWith$Query$GetGradesForUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetGradesForUser<TRes> {
  factory CopyWith$Query$GetGradesForUser(
    Query$GetGradesForUser instance,
    TRes Function(Query$GetGradesForUser) then,
  ) = _CopyWithImpl$Query$GetGradesForUser;

  factory CopyWith$Query$GetGradesForUser.stub(TRes res) =
      _CopyWithStubImpl$Query$GetGradesForUser;

  TRes call({
    List<Query$GetGradesForUser$gradesForUser>? gradesForUser,
    String? $__typename,
  });
  TRes gradesForUser(
      Iterable<Query$GetGradesForUser$gradesForUser> Function(
              Iterable<
                  CopyWith$Query$GetGradesForUser$gradesForUser<
                      Query$GetGradesForUser$gradesForUser>>)
          _fn);
}

class _CopyWithImpl$Query$GetGradesForUser<TRes>
    implements CopyWith$Query$GetGradesForUser<TRes> {
  _CopyWithImpl$Query$GetGradesForUser(
    this._instance,
    this._then,
  );

  final Query$GetGradesForUser _instance;

  final TRes Function(Query$GetGradesForUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? gradesForUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetGradesForUser(
        gradesForUser: gradesForUser == _undefined || gradesForUser == null
            ? _instance.gradesForUser
            : (gradesForUser as List<Query$GetGradesForUser$gradesForUser>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes gradesForUser(
          Iterable<Query$GetGradesForUser$gradesForUser> Function(
                  Iterable<
                      CopyWith$Query$GetGradesForUser$gradesForUser<
                          Query$GetGradesForUser$gradesForUser>>)
              _fn) =>
      call(
          gradesForUser: _fn(_instance.gradesForUser
              .map((e) => CopyWith$Query$GetGradesForUser$gradesForUser(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetGradesForUser<TRes>
    implements CopyWith$Query$GetGradesForUser<TRes> {
  _CopyWithStubImpl$Query$GetGradesForUser(this._res);

  TRes _res;

  call({
    List<Query$GetGradesForUser$gradesForUser>? gradesForUser,
    String? $__typename,
  }) =>
      _res;

  gradesForUser(_fn) => _res;
}

const documentNodeQueryGetGradesForUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetGradesForUser'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'gradesForUser'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'gradeCode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gradeGroup'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gradeType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'comment'),
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

class Query$GetGradesForUser$gradesForUser {
  Query$GetGradesForUser$gradesForUser({
    required this.gradeCode,
    required this.gradeGroup,
    required this.gradeType,
    required this.comment,
    this.$__typename = 'Grade',
  });

  factory Query$GetGradesForUser$gradesForUser.fromJson(
      Map<String, dynamic> json) {
    final l$gradeCode = json['gradeCode'];
    final l$gradeGroup = json['gradeGroup'];
    final l$gradeType = json['gradeType'];
    final l$comment = json['comment'];
    final l$$__typename = json['__typename'];
    return Query$GetGradesForUser$gradesForUser(
      gradeCode: (l$gradeCode as String),
      gradeGroup: (l$gradeGroup as String),
      gradeType: (l$gradeType as String),
      comment: (l$comment as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String gradeCode;

  final String gradeGroup;

  final String gradeType;

  final String comment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$gradeCode = gradeCode;
    _resultData['gradeCode'] = l$gradeCode;
    final l$gradeGroup = gradeGroup;
    _resultData['gradeGroup'] = l$gradeGroup;
    final l$gradeType = gradeType;
    _resultData['gradeType'] = l$gradeType;
    final l$comment = comment;
    _resultData['comment'] = l$comment;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$gradeCode = gradeCode;
    final l$gradeGroup = gradeGroup;
    final l$gradeType = gradeType;
    final l$comment = comment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$gradeCode,
      l$gradeGroup,
      l$gradeType,
      l$comment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetGradesForUser$gradesForUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gradeCode = gradeCode;
    final lOther$gradeCode = other.gradeCode;
    if (l$gradeCode != lOther$gradeCode) {
      return false;
    }
    final l$gradeGroup = gradeGroup;
    final lOther$gradeGroup = other.gradeGroup;
    if (l$gradeGroup != lOther$gradeGroup) {
      return false;
    }
    final l$gradeType = gradeType;
    final lOther$gradeType = other.gradeType;
    if (l$gradeType != lOther$gradeType) {
      return false;
    }
    final l$comment = comment;
    final lOther$comment = other.comment;
    if (l$comment != lOther$comment) {
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

extension UtilityExtension$Query$GetGradesForUser$gradesForUser
    on Query$GetGradesForUser$gradesForUser {
  CopyWith$Query$GetGradesForUser$gradesForUser<
          Query$GetGradesForUser$gradesForUser>
      get copyWith => CopyWith$Query$GetGradesForUser$gradesForUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetGradesForUser$gradesForUser<TRes> {
  factory CopyWith$Query$GetGradesForUser$gradesForUser(
    Query$GetGradesForUser$gradesForUser instance,
    TRes Function(Query$GetGradesForUser$gradesForUser) then,
  ) = _CopyWithImpl$Query$GetGradesForUser$gradesForUser;

  factory CopyWith$Query$GetGradesForUser$gradesForUser.stub(TRes res) =
      _CopyWithStubImpl$Query$GetGradesForUser$gradesForUser;

  TRes call({
    String? gradeCode,
    String? gradeGroup,
    String? gradeType,
    String? comment,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetGradesForUser$gradesForUser<TRes>
    implements CopyWith$Query$GetGradesForUser$gradesForUser<TRes> {
  _CopyWithImpl$Query$GetGradesForUser$gradesForUser(
    this._instance,
    this._then,
  );

  final Query$GetGradesForUser$gradesForUser _instance;

  final TRes Function(Query$GetGradesForUser$gradesForUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? gradeCode = _undefined,
    Object? gradeGroup = _undefined,
    Object? gradeType = _undefined,
    Object? comment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetGradesForUser$gradesForUser(
        gradeCode: gradeCode == _undefined || gradeCode == null
            ? _instance.gradeCode
            : (gradeCode as String),
        gradeGroup: gradeGroup == _undefined || gradeGroup == null
            ? _instance.gradeGroup
            : (gradeGroup as String),
        gradeType: gradeType == _undefined || gradeType == null
            ? _instance.gradeType
            : (gradeType as String),
        comment: comment == _undefined || comment == null
            ? _instance.comment
            : (comment as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetGradesForUser$gradesForUser<TRes>
    implements CopyWith$Query$GetGradesForUser$gradesForUser<TRes> {
  _CopyWithStubImpl$Query$GetGradesForUser$gradesForUser(this._res);

  TRes _res;

  call({
    String? gradeCode,
    String? gradeGroup,
    String? gradeType,
    String? comment,
    String? $__typename,
  }) =>
      _res;
}
