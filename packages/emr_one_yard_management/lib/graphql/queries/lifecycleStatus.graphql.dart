import 'package:gql/ast.dart';

class Query$lifecycleStatus {
  Query$lifecycleStatus({
    this.lifecycleStatus,
    this.$__typename = 'Query',
  });

  factory Query$lifecycleStatus.fromJson(Map<String, dynamic> json) {
    final l$lifecycleStatus = json['lifecycleStatus'];
    final l$$__typename = json['__typename'];
    return Query$lifecycleStatus(
      lifecycleStatus: (l$lifecycleStatus as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String?>? lifecycleStatus;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lifecycleStatus = lifecycleStatus;
    _resultData['lifecycleStatus'] = l$lifecycleStatus?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lifecycleStatus = lifecycleStatus;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lifecycleStatus == null
          ? null
          : Object.hashAll(l$lifecycleStatus.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$lifecycleStatus) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$lifecycleStatus = lifecycleStatus;
    final lOther$lifecycleStatus = other.lifecycleStatus;
    if (l$lifecycleStatus != null && lOther$lifecycleStatus != null) {
      if (l$lifecycleStatus.length != lOther$lifecycleStatus.length) {
        return false;
      }
      for (int i = 0; i < l$lifecycleStatus.length; i++) {
        final l$lifecycleStatus$entry = l$lifecycleStatus[i];
        final lOther$lifecycleStatus$entry = lOther$lifecycleStatus[i];
        if (l$lifecycleStatus$entry != lOther$lifecycleStatus$entry) {
          return false;
        }
      }
    } else if (l$lifecycleStatus != lOther$lifecycleStatus) {
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

extension UtilityExtension$Query$lifecycleStatus on Query$lifecycleStatus {
  CopyWith$Query$lifecycleStatus<Query$lifecycleStatus> get copyWith =>
      CopyWith$Query$lifecycleStatus(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$lifecycleStatus<TRes> {
  factory CopyWith$Query$lifecycleStatus(
    Query$lifecycleStatus instance,
    TRes Function(Query$lifecycleStatus) then,
  ) = _CopyWithImpl$Query$lifecycleStatus;

  factory CopyWith$Query$lifecycleStatus.stub(TRes res) =
      _CopyWithStubImpl$Query$lifecycleStatus;

  TRes call({
    List<String?>? lifecycleStatus,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$lifecycleStatus<TRes>
    implements CopyWith$Query$lifecycleStatus<TRes> {
  _CopyWithImpl$Query$lifecycleStatus(
    this._instance,
    this._then,
  );

  final Query$lifecycleStatus _instance;

  final TRes Function(Query$lifecycleStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lifecycleStatus = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$lifecycleStatus(
        lifecycleStatus: lifecycleStatus == _undefined
            ? _instance.lifecycleStatus
            : (lifecycleStatus as List<String?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$lifecycleStatus<TRes>
    implements CopyWith$Query$lifecycleStatus<TRes> {
  _CopyWithStubImpl$Query$lifecycleStatus(this._res);

  TRes _res;

  call({
    List<String?>? lifecycleStatus,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQuerylifecycleStatus = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'lifecycleStatus'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'lifecycleStatus'),
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
