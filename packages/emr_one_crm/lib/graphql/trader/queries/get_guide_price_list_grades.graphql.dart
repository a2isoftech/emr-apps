import 'package:gql/ast.dart';

class Query$GetGuidePriceListGrades {
  Query$GetGuidePriceListGrades({
    required this.gradesForUser,
    this.$__typename = 'Query',
  });

  factory Query$GetGuidePriceListGrades.fromJson(Map<String, dynamic> json) {
    final l$gradesForUser = json['gradesForUser'];
    final l$$__typename = json['__typename'];
    return Query$GetGuidePriceListGrades(
      gradesForUser: (l$gradesForUser as List<dynamic>)
          .map((e) => Query$GetGuidePriceListGrades$gradesForUser.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetGuidePriceListGrades$gradesForUser> gradesForUser;

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
    if (other is! Query$GetGuidePriceListGrades ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetGuidePriceListGrades
    on Query$GetGuidePriceListGrades {
  CopyWith$Query$GetGuidePriceListGrades<Query$GetGuidePriceListGrades>
      get copyWith => CopyWith$Query$GetGuidePriceListGrades(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetGuidePriceListGrades<TRes> {
  factory CopyWith$Query$GetGuidePriceListGrades(
    Query$GetGuidePriceListGrades instance,
    TRes Function(Query$GetGuidePriceListGrades) then,
  ) = _CopyWithImpl$Query$GetGuidePriceListGrades;

  factory CopyWith$Query$GetGuidePriceListGrades.stub(TRes res) =
      _CopyWithStubImpl$Query$GetGuidePriceListGrades;

  TRes call({
    List<Query$GetGuidePriceListGrades$gradesForUser>? gradesForUser,
    String? $__typename,
  });
  TRes gradesForUser(
      Iterable<Query$GetGuidePriceListGrades$gradesForUser> Function(
              Iterable<
                  CopyWith$Query$GetGuidePriceListGrades$gradesForUser<
                      Query$GetGuidePriceListGrades$gradesForUser>>)
          _fn);
}

class _CopyWithImpl$Query$GetGuidePriceListGrades<TRes>
    implements CopyWith$Query$GetGuidePriceListGrades<TRes> {
  _CopyWithImpl$Query$GetGuidePriceListGrades(
    this._instance,
    this._then,
  );

  final Query$GetGuidePriceListGrades _instance;

  final TRes Function(Query$GetGuidePriceListGrades) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? gradesForUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetGuidePriceListGrades(
        gradesForUser: gradesForUser == _undefined || gradesForUser == null
            ? _instance.gradesForUser
            : (gradesForUser
                as List<Query$GetGuidePriceListGrades$gradesForUser>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes gradesForUser(
          Iterable<Query$GetGuidePriceListGrades$gradesForUser> Function(
                  Iterable<
                      CopyWith$Query$GetGuidePriceListGrades$gradesForUser<
                          Query$GetGuidePriceListGrades$gradesForUser>>)
              _fn) =>
      call(
          gradesForUser: _fn(_instance.gradesForUser
              .map((e) => CopyWith$Query$GetGuidePriceListGrades$gradesForUser(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetGuidePriceListGrades<TRes>
    implements CopyWith$Query$GetGuidePriceListGrades<TRes> {
  _CopyWithStubImpl$Query$GetGuidePriceListGrades(this._res);

  TRes _res;

  call({
    List<Query$GetGuidePriceListGrades$gradesForUser>? gradesForUser,
    String? $__typename,
  }) =>
      _res;

  gradesForUser(_fn) => _res;
}

const documentNodeQueryGetGuidePriceListGrades = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetGuidePriceListGrades'),
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

class Query$GetGuidePriceListGrades$gradesForUser {
  Query$GetGuidePriceListGrades$gradesForUser({
    required this.gradeCode,
    required this.comment,
    this.$__typename = 'Grade',
  });

  factory Query$GetGuidePriceListGrades$gradesForUser.fromJson(
      Map<String, dynamic> json) {
    final l$gradeCode = json['gradeCode'];
    final l$comment = json['comment'];
    final l$$__typename = json['__typename'];
    return Query$GetGuidePriceListGrades$gradesForUser(
      gradeCode: (l$gradeCode as String),
      comment: (l$comment as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String gradeCode;

  final String comment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$gradeCode = gradeCode;
    _resultData['gradeCode'] = l$gradeCode;
    final l$comment = comment;
    _resultData['comment'] = l$comment;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$gradeCode = gradeCode;
    final l$comment = comment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$gradeCode,
      l$comment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetGuidePriceListGrades$gradesForUser ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gradeCode = gradeCode;
    final lOther$gradeCode = other.gradeCode;
    if (l$gradeCode != lOther$gradeCode) {
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

extension UtilityExtension$Query$GetGuidePriceListGrades$gradesForUser
    on Query$GetGuidePriceListGrades$gradesForUser {
  CopyWith$Query$GetGuidePriceListGrades$gradesForUser<
          Query$GetGuidePriceListGrades$gradesForUser>
      get copyWith => CopyWith$Query$GetGuidePriceListGrades$gradesForUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetGuidePriceListGrades$gradesForUser<TRes> {
  factory CopyWith$Query$GetGuidePriceListGrades$gradesForUser(
    Query$GetGuidePriceListGrades$gradesForUser instance,
    TRes Function(Query$GetGuidePriceListGrades$gradesForUser) then,
  ) = _CopyWithImpl$Query$GetGuidePriceListGrades$gradesForUser;

  factory CopyWith$Query$GetGuidePriceListGrades$gradesForUser.stub(TRes res) =
      _CopyWithStubImpl$Query$GetGuidePriceListGrades$gradesForUser;

  TRes call({
    String? gradeCode,
    String? comment,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetGuidePriceListGrades$gradesForUser<TRes>
    implements CopyWith$Query$GetGuidePriceListGrades$gradesForUser<TRes> {
  _CopyWithImpl$Query$GetGuidePriceListGrades$gradesForUser(
    this._instance,
    this._then,
  );

  final Query$GetGuidePriceListGrades$gradesForUser _instance;

  final TRes Function(Query$GetGuidePriceListGrades$gradesForUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? gradeCode = _undefined,
    Object? comment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetGuidePriceListGrades$gradesForUser(
        gradeCode: gradeCode == _undefined || gradeCode == null
            ? _instance.gradeCode
            : (gradeCode as String),
        comment: comment == _undefined || comment == null
            ? _instance.comment
            : (comment as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetGuidePriceListGrades$gradesForUser<TRes>
    implements CopyWith$Query$GetGuidePriceListGrades$gradesForUser<TRes> {
  _CopyWithStubImpl$Query$GetGuidePriceListGrades$gradesForUser(this._res);

  TRes _res;

  call({
    String? gradeCode,
    String? comment,
    String? $__typename,
  }) =>
      _res;
}
