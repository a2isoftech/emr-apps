import 'package:gql/ast.dart';

class Query$GetLifeCycleStates {
  Query$GetLifeCycleStates({
    required this.lifeCycleStates,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetLifeCycleStates.fromJson(Map<String, dynamic> json) {
    final l$lifeCycleStates = json['lifeCycleStates'];
    final l$$__typename = json['__typename'];
    return Query$GetLifeCycleStates(
      lifeCycleStates: (l$lifeCycleStates as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> lifeCycleStates;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lifeCycleStates = lifeCycleStates;
    _resultData['lifeCycleStates'] = l$lifeCycleStates.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lifeCycleStates = lifeCycleStates;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$lifeCycleStates.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetLifeCycleStates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lifeCycleStates = lifeCycleStates;
    final lOther$lifeCycleStates = other.lifeCycleStates;
    if (l$lifeCycleStates.length != lOther$lifeCycleStates.length) {
      return false;
    }
    for (int i = 0; i < l$lifeCycleStates.length; i++) {
      final l$lifeCycleStates$entry = l$lifeCycleStates[i];
      final lOther$lifeCycleStates$entry = lOther$lifeCycleStates[i];
      if (l$lifeCycleStates$entry != lOther$lifeCycleStates$entry) {
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

extension UtilityExtension$Query$GetLifeCycleStates
    on Query$GetLifeCycleStates {
  CopyWith$Query$GetLifeCycleStates<Query$GetLifeCycleStates> get copyWith =>
      CopyWith$Query$GetLifeCycleStates(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetLifeCycleStates<TRes> {
  factory CopyWith$Query$GetLifeCycleStates(
    Query$GetLifeCycleStates instance,
    TRes Function(Query$GetLifeCycleStates) then,
  ) = _CopyWithImpl$Query$GetLifeCycleStates;

  factory CopyWith$Query$GetLifeCycleStates.stub(TRes res) =
      _CopyWithStubImpl$Query$GetLifeCycleStates;

  TRes call({
    List<String>? lifeCycleStates,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetLifeCycleStates<TRes>
    implements CopyWith$Query$GetLifeCycleStates<TRes> {
  _CopyWithImpl$Query$GetLifeCycleStates(
    this._instance,
    this._then,
  );

  final Query$GetLifeCycleStates _instance;

  final TRes Function(Query$GetLifeCycleStates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lifeCycleStates = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetLifeCycleStates(
        lifeCycleStates:
            lifeCycleStates == _undefined || lifeCycleStates == null
                ? _instance.lifeCycleStates
                : (lifeCycleStates as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetLifeCycleStates<TRes>
    implements CopyWith$Query$GetLifeCycleStates<TRes> {
  _CopyWithStubImpl$Query$GetLifeCycleStates(this._res);

  TRes _res;

  call({
    List<String>? lifeCycleStates,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryGetLifeCycleStates = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetLifeCycleStates'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'lifeCycleStates'),
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
