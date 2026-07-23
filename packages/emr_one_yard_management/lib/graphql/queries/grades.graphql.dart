import 'package:gql/ast.dart';

class Variables$Query$grades {
  factory Variables$Query$grades({required String searchTerm}) =>
      Variables$Query$grades._({
        r'searchTerm': searchTerm,
      });

  Variables$Query$grades._(this._$data);

  factory Variables$Query$grades.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$searchTerm = data['searchTerm'];
    result$data['searchTerm'] = (l$searchTerm as String);
    return Variables$Query$grades._(result$data);
  }

  Map<String, dynamic> _$data;

  String get searchTerm => (_$data['searchTerm'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$searchTerm = searchTerm;
    result$data['searchTerm'] = l$searchTerm;
    return result$data;
  }

  CopyWith$Variables$Query$grades<Variables$Query$grades> get copyWith =>
      CopyWith$Variables$Query$grades(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$grades) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$searchTerm = searchTerm;
    final lOther$searchTerm = other.searchTerm;
    if (l$searchTerm != lOther$searchTerm) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$searchTerm = searchTerm;
    return Object.hashAll([l$searchTerm]);
  }
}

abstract class CopyWith$Variables$Query$grades<TRes> {
  factory CopyWith$Variables$Query$grades(
    Variables$Query$grades instance,
    TRes Function(Variables$Query$grades) then,
  ) = _CopyWithImpl$Variables$Query$grades;

  factory CopyWith$Variables$Query$grades.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$grades;

  TRes call({String? searchTerm});
}

class _CopyWithImpl$Variables$Query$grades<TRes>
    implements CopyWith$Variables$Query$grades<TRes> {
  _CopyWithImpl$Variables$Query$grades(
    this._instance,
    this._then,
  );

  final Variables$Query$grades _instance;

  final TRes Function(Variables$Query$grades) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? searchTerm = _undefined}) =>
      _then(Variables$Query$grades._({
        ..._instance._$data,
        if (searchTerm != _undefined && searchTerm != null)
          'searchTerm': (searchTerm as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$grades<TRes>
    implements CopyWith$Variables$Query$grades<TRes> {
  _CopyWithStubImpl$Variables$Query$grades(this._res);

  TRes _res;

  call({String? searchTerm}) => _res;
}

class Query$grades {
  Query$grades({
    this.grades,
    this.$__typename = 'Query',
  });

  factory Query$grades.fromJson(Map<String, dynamic> json) {
    final l$grades = json['grades'];
    final l$$__typename = json['__typename'];
    return Query$grades(
      grades: (l$grades as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String?>? grades;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$grades = grades;
    _resultData['grades'] = l$grades?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$grades = grades;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$grades == null ? null : Object.hashAll(l$grades.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$grades) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$grades = grades;
    final lOther$grades = other.grades;
    if (l$grades != null && lOther$grades != null) {
      if (l$grades.length != lOther$grades.length) {
        return false;
      }
      for (int i = 0; i < l$grades.length; i++) {
        final l$grades$entry = l$grades[i];
        final lOther$grades$entry = lOther$grades[i];
        if (l$grades$entry != lOther$grades$entry) {
          return false;
        }
      }
    } else if (l$grades != lOther$grades) {
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

extension UtilityExtension$Query$grades on Query$grades {
  CopyWith$Query$grades<Query$grades> get copyWith => CopyWith$Query$grades(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$grades<TRes> {
  factory CopyWith$Query$grades(
    Query$grades instance,
    TRes Function(Query$grades) then,
  ) = _CopyWithImpl$Query$grades;

  factory CopyWith$Query$grades.stub(TRes res) = _CopyWithStubImpl$Query$grades;

  TRes call({
    List<String?>? grades,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$grades<TRes> implements CopyWith$Query$grades<TRes> {
  _CopyWithImpl$Query$grades(
    this._instance,
    this._then,
  );

  final Query$grades _instance;

  final TRes Function(Query$grades) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? grades = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$grades(
        grades: grades == _undefined
            ? _instance.grades
            : (grades as List<String?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$grades<TRes>
    implements CopyWith$Query$grades<TRes> {
  _CopyWithStubImpl$Query$grades(this._res);

  TRes _res;

  call({
    List<String?>? grades,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQuerygrades = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'grades'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'searchTerm')),
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
        name: NameNode(value: 'grades'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'searchTerm'),
            value: VariableNode(name: NameNode(value: 'searchTerm')),
          )
        ],
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
]);
