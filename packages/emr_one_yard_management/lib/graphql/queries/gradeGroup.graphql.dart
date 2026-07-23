import 'package:gql/ast.dart';

class Variables$Query$gradeGroup {
  factory Variables$Query$gradeGroup({required String searchTerm}) =>
      Variables$Query$gradeGroup._({
        r'searchTerm': searchTerm,
      });

  Variables$Query$gradeGroup._(this._$data);

  factory Variables$Query$gradeGroup.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$searchTerm = data['searchTerm'];
    result$data['searchTerm'] = (l$searchTerm as String);
    return Variables$Query$gradeGroup._(result$data);
  }

  Map<String, dynamic> _$data;

  String get searchTerm => (_$data['searchTerm'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$searchTerm = searchTerm;
    result$data['searchTerm'] = l$searchTerm;
    return result$data;
  }

  CopyWith$Variables$Query$gradeGroup<Variables$Query$gradeGroup>
      get copyWith => CopyWith$Variables$Query$gradeGroup(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$gradeGroup) ||
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

abstract class CopyWith$Variables$Query$gradeGroup<TRes> {
  factory CopyWith$Variables$Query$gradeGroup(
    Variables$Query$gradeGroup instance,
    TRes Function(Variables$Query$gradeGroup) then,
  ) = _CopyWithImpl$Variables$Query$gradeGroup;

  factory CopyWith$Variables$Query$gradeGroup.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$gradeGroup;

  TRes call({String? searchTerm});
}

class _CopyWithImpl$Variables$Query$gradeGroup<TRes>
    implements CopyWith$Variables$Query$gradeGroup<TRes> {
  _CopyWithImpl$Variables$Query$gradeGroup(
    this._instance,
    this._then,
  );

  final Variables$Query$gradeGroup _instance;

  final TRes Function(Variables$Query$gradeGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? searchTerm = _undefined}) =>
      _then(Variables$Query$gradeGroup._({
        ..._instance._$data,
        if (searchTerm != _undefined && searchTerm != null)
          'searchTerm': (searchTerm as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$gradeGroup<TRes>
    implements CopyWith$Variables$Query$gradeGroup<TRes> {
  _CopyWithStubImpl$Variables$Query$gradeGroup(this._res);

  TRes _res;

  call({String? searchTerm}) => _res;
}

class Query$gradeGroup {
  Query$gradeGroup({
    this.gradeGroup,
    this.$__typename = 'Query',
  });

  factory Query$gradeGroup.fromJson(Map<String, dynamic> json) {
    final l$gradeGroup = json['gradeGroup'];
    final l$$__typename = json['__typename'];
    return Query$gradeGroup(
      gradeGroup:
          (l$gradeGroup as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String?>? gradeGroup;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$gradeGroup = gradeGroup;
    _resultData['gradeGroup'] = l$gradeGroup?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$gradeGroup = gradeGroup;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$gradeGroup == null ? null : Object.hashAll(l$gradeGroup.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$gradeGroup) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$gradeGroup = gradeGroup;
    final lOther$gradeGroup = other.gradeGroup;
    if (l$gradeGroup != null && lOther$gradeGroup != null) {
      if (l$gradeGroup.length != lOther$gradeGroup.length) {
        return false;
      }
      for (int i = 0; i < l$gradeGroup.length; i++) {
        final l$gradeGroup$entry = l$gradeGroup[i];
        final lOther$gradeGroup$entry = lOther$gradeGroup[i];
        if (l$gradeGroup$entry != lOther$gradeGroup$entry) {
          return false;
        }
      }
    } else if (l$gradeGroup != lOther$gradeGroup) {
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

extension UtilityExtension$Query$gradeGroup on Query$gradeGroup {
  CopyWith$Query$gradeGroup<Query$gradeGroup> get copyWith =>
      CopyWith$Query$gradeGroup(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$gradeGroup<TRes> {
  factory CopyWith$Query$gradeGroup(
    Query$gradeGroup instance,
    TRes Function(Query$gradeGroup) then,
  ) = _CopyWithImpl$Query$gradeGroup;

  factory CopyWith$Query$gradeGroup.stub(TRes res) =
      _CopyWithStubImpl$Query$gradeGroup;

  TRes call({
    List<String?>? gradeGroup,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$gradeGroup<TRes>
    implements CopyWith$Query$gradeGroup<TRes> {
  _CopyWithImpl$Query$gradeGroup(
    this._instance,
    this._then,
  );

  final Query$gradeGroup _instance;

  final TRes Function(Query$gradeGroup) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? gradeGroup = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$gradeGroup(
        gradeGroup: gradeGroup == _undefined
            ? _instance.gradeGroup
            : (gradeGroup as List<String?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$gradeGroup<TRes>
    implements CopyWith$Query$gradeGroup<TRes> {
  _CopyWithStubImpl$Query$gradeGroup(this._res);

  TRes _res;

  call({
    List<String?>? gradeGroup,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQuerygradeGroup = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'gradeGroup'),
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
        name: NameNode(value: 'gradeGroup'),
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
