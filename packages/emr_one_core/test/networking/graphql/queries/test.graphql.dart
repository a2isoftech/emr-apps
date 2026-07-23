import 'package:gql/ast.dart';

class Query$Test {
  Query$Test({
    this.$get,
    this.$__typename = 'Query',
  });

  factory Query$Test.fromJson(Map<String, dynamic> json) {
    final l$$get = json['get'];
    final l$$__typename = json['__typename'];
    return Query$Test(
      $get: (l$$get as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? $get;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$get = $get;
    _resultData['get'] = l$$get;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$get = $get;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$$get,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Test || runtimeType != other.runtimeType) {
      return false;
    }
    final l$$get = $get;
    final lOther$$get = other.$get;
    if (l$$get != lOther$$get) {
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

extension UtilityExtension$Query$Test on Query$Test {
  CopyWith$Query$Test<Query$Test> get copyWith => CopyWith$Query$Test(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Test<TRes> {
  factory CopyWith$Query$Test(
    Query$Test instance,
    TRes Function(Query$Test) then,
  ) = _CopyWithImpl$Query$Test;

  factory CopyWith$Query$Test.stub(TRes res) = _CopyWithStubImpl$Query$Test;

  TRes call({
    String? $get,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Test<TRes> implements CopyWith$Query$Test<TRes> {
  _CopyWithImpl$Query$Test(
    this._instance,
    this._then,
  );

  final Query$Test _instance;

  final TRes Function(Query$Test) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $get = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Test(
        $get: $get == _undefined ? _instance.$get : ($get as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Test<TRes> implements CopyWith$Query$Test<TRes> {
  _CopyWithStubImpl$Query$Test(this._res);

  TRes _res;

  call({
    String? $get,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryTest = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Test'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'get'),
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
]);
