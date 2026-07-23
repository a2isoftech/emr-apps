import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$execDirectQuery {
  factory Variables$Query$execDirectQuery({
    required String queryId,
    List<Input$KeyValuePairOfStringAndStringInput>? params,
  }) =>
      Variables$Query$execDirectQuery._({
        r'queryId': queryId,
        if (params != null) r'params': params,
      });

  Variables$Query$execDirectQuery._(this._$data);

  factory Variables$Query$execDirectQuery.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$queryId = data['queryId'];
    result$data['queryId'] = (l$queryId as String);
    if (data.containsKey('params')) {
      final l$params = data['params'];
      result$data['params'] = (l$params as List<dynamic>?)
          ?.map((e) => Input$KeyValuePairOfStringAndStringInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$execDirectQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  String get queryId => (_$data['queryId'] as String);

  List<Input$KeyValuePairOfStringAndStringInput>? get params =>
      (_$data['params'] as List<Input$KeyValuePairOfStringAndStringInput>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$queryId = queryId;
    result$data['queryId'] = l$queryId;
    if (_$data.containsKey('params')) {
      final l$params = params;
      result$data['params'] = l$params?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$execDirectQuery<Variables$Query$execDirectQuery>
      get copyWith => CopyWith$Variables$Query$execDirectQuery(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$execDirectQuery ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$queryId = queryId;
    final lOther$queryId = other.queryId;
    if (l$queryId != lOther$queryId) {
      return false;
    }
    final l$params = params;
    final lOther$params = other.params;
    if (_$data.containsKey('params') != other._$data.containsKey('params')) {
      return false;
    }
    if (l$params != null && lOther$params != null) {
      if (l$params.length != lOther$params.length) {
        return false;
      }
      for (int i = 0; i < l$params.length; i++) {
        final l$params$entry = l$params[i];
        final lOther$params$entry = lOther$params[i];
        if (l$params$entry != lOther$params$entry) {
          return false;
        }
      }
    } else if (l$params != lOther$params) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$queryId = queryId;
    final l$params = params;
    return Object.hashAll([
      l$queryId,
      _$data.containsKey('params')
          ? l$params == null
              ? null
              : Object.hashAll(l$params.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$execDirectQuery<TRes> {
  factory CopyWith$Variables$Query$execDirectQuery(
    Variables$Query$execDirectQuery instance,
    TRes Function(Variables$Query$execDirectQuery) then,
  ) = _CopyWithImpl$Variables$Query$execDirectQuery;

  factory CopyWith$Variables$Query$execDirectQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$execDirectQuery;

  TRes call({
    String? queryId,
    List<Input$KeyValuePairOfStringAndStringInput>? params,
  });
}

class _CopyWithImpl$Variables$Query$execDirectQuery<TRes>
    implements CopyWith$Variables$Query$execDirectQuery<TRes> {
  _CopyWithImpl$Variables$Query$execDirectQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$execDirectQuery _instance;

  final TRes Function(Variables$Query$execDirectQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? queryId = _undefined,
    Object? params = _undefined,
  }) =>
      _then(Variables$Query$execDirectQuery._({
        ..._instance._$data,
        if (queryId != _undefined && queryId != null)
          'queryId': (queryId as String),
        if (params != _undefined)
          'params': (params as List<Input$KeyValuePairOfStringAndStringInput>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$execDirectQuery<TRes>
    implements CopyWith$Variables$Query$execDirectQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$execDirectQuery(this._res);

  TRes _res;

  call({
    String? queryId,
    List<Input$KeyValuePairOfStringAndStringInput>? params,
  }) =>
      _res;
}

class Query$execDirectQuery {
  Query$execDirectQuery({
    this.directQuery,
    this.$__typename = 'Query',
  });

  factory Query$execDirectQuery.fromJson(Map<String, dynamic> json) {
    final l$directQuery = json['directQuery'];
    final l$$__typename = json['__typename'];
    return Query$execDirectQuery(
      directQuery: (l$directQuery as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? directQuery;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$directQuery = directQuery;
    _resultData['directQuery'] = l$directQuery;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$directQuery = directQuery;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$directQuery,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$execDirectQuery || runtimeType != other.runtimeType) {
      return false;
    }
    final l$directQuery = directQuery;
    final lOther$directQuery = other.directQuery;
    if (l$directQuery != lOther$directQuery) {
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

extension UtilityExtension$Query$execDirectQuery on Query$execDirectQuery {
  CopyWith$Query$execDirectQuery<Query$execDirectQuery> get copyWith =>
      CopyWith$Query$execDirectQuery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$execDirectQuery<TRes> {
  factory CopyWith$Query$execDirectQuery(
    Query$execDirectQuery instance,
    TRes Function(Query$execDirectQuery) then,
  ) = _CopyWithImpl$Query$execDirectQuery;

  factory CopyWith$Query$execDirectQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$execDirectQuery;

  TRes call({
    String? directQuery,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$execDirectQuery<TRes>
    implements CopyWith$Query$execDirectQuery<TRes> {
  _CopyWithImpl$Query$execDirectQuery(
    this._instance,
    this._then,
  );

  final Query$execDirectQuery _instance;

  final TRes Function(Query$execDirectQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? directQuery = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$execDirectQuery(
        directQuery: directQuery == _undefined
            ? _instance.directQuery
            : (directQuery as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$execDirectQuery<TRes>
    implements CopyWith$Query$execDirectQuery<TRes> {
  _CopyWithStubImpl$Query$execDirectQuery(this._res);

  TRes _res;

  call({
    String? directQuery,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryexecDirectQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'execDirectQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'queryId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'params')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'KeyValuePairOfStringAndStringInput'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'directQuery'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'queryId'),
            value: VariableNode(name: NameNode(value: 'queryId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'parameters'),
            value: VariableNode(name: NameNode(value: 'params')),
          ),
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
