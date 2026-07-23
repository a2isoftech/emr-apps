import 'package:gql/ast.dart';

class Variables$Mutation$deleteDirectQuery {
  factory Variables$Mutation$deleteDirectQuery({required String id}) =>
      Variables$Mutation$deleteDirectQuery._({
        r'id': id,
      });

  Variables$Mutation$deleteDirectQuery._(this._$data);

  factory Variables$Mutation$deleteDirectQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$deleteDirectQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$deleteDirectQuery<
          Variables$Mutation$deleteDirectQuery>
      get copyWith => CopyWith$Variables$Mutation$deleteDirectQuery(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$deleteDirectQuery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Mutation$deleteDirectQuery<TRes> {
  factory CopyWith$Variables$Mutation$deleteDirectQuery(
    Variables$Mutation$deleteDirectQuery instance,
    TRes Function(Variables$Mutation$deleteDirectQuery) then,
  ) = _CopyWithImpl$Variables$Mutation$deleteDirectQuery;

  factory CopyWith$Variables$Mutation$deleteDirectQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$deleteDirectQuery;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$deleteDirectQuery<TRes>
    implements CopyWith$Variables$Mutation$deleteDirectQuery<TRes> {
  _CopyWithImpl$Variables$Mutation$deleteDirectQuery(
    this._instance,
    this._then,
  );

  final Variables$Mutation$deleteDirectQuery _instance;

  final TRes Function(Variables$Mutation$deleteDirectQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$deleteDirectQuery._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$deleteDirectQuery<TRes>
    implements CopyWith$Variables$Mutation$deleteDirectQuery<TRes> {
  _CopyWithStubImpl$Variables$Mutation$deleteDirectQuery(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$deleteDirectQuery {
  Mutation$deleteDirectQuery({
    required this.deleteDirectQuery,
    this.$__typename = 'Mutation',
  });

  factory Mutation$deleteDirectQuery.fromJson(Map<String, dynamic> json) {
    final l$deleteDirectQuery = json['deleteDirectQuery'];
    final l$$__typename = json['__typename'];
    return Mutation$deleteDirectQuery(
      deleteDirectQuery: (l$deleteDirectQuery as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool deleteDirectQuery;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteDirectQuery = deleteDirectQuery;
    _resultData['deleteDirectQuery'] = l$deleteDirectQuery;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteDirectQuery = deleteDirectQuery;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteDirectQuery,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$deleteDirectQuery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteDirectQuery = deleteDirectQuery;
    final lOther$deleteDirectQuery = other.deleteDirectQuery;
    if (l$deleteDirectQuery != lOther$deleteDirectQuery) {
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

extension UtilityExtension$Mutation$deleteDirectQuery
    on Mutation$deleteDirectQuery {
  CopyWith$Mutation$deleteDirectQuery<Mutation$deleteDirectQuery>
      get copyWith => CopyWith$Mutation$deleteDirectQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$deleteDirectQuery<TRes> {
  factory CopyWith$Mutation$deleteDirectQuery(
    Mutation$deleteDirectQuery instance,
    TRes Function(Mutation$deleteDirectQuery) then,
  ) = _CopyWithImpl$Mutation$deleteDirectQuery;

  factory CopyWith$Mutation$deleteDirectQuery.stub(TRes res) =
      _CopyWithStubImpl$Mutation$deleteDirectQuery;

  TRes call({
    bool? deleteDirectQuery,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$deleteDirectQuery<TRes>
    implements CopyWith$Mutation$deleteDirectQuery<TRes> {
  _CopyWithImpl$Mutation$deleteDirectQuery(
    this._instance,
    this._then,
  );

  final Mutation$deleteDirectQuery _instance;

  final TRes Function(Mutation$deleteDirectQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteDirectQuery = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$deleteDirectQuery(
        deleteDirectQuery:
            deleteDirectQuery == _undefined || deleteDirectQuery == null
                ? _instance.deleteDirectQuery
                : (deleteDirectQuery as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$deleteDirectQuery<TRes>
    implements CopyWith$Mutation$deleteDirectQuery<TRes> {
  _CopyWithStubImpl$Mutation$deleteDirectQuery(this._res);

  TRes _res;

  call({
    bool? deleteDirectQuery,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationdeleteDirectQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'deleteDirectQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
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
        name: NameNode(value: 'deleteDirectQuery'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
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
