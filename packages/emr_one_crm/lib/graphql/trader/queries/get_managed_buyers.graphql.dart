import 'package:gql/ast.dart';

class Query$GetManagedBuyers {
  Query$GetManagedBuyers({
    required this.managedBuyers,
    this.$__typename = 'Query',
  });

  factory Query$GetManagedBuyers.fromJson(Map<String, dynamic> json) {
    final l$managedBuyers = json['managedBuyers'];
    final l$$__typename = json['__typename'];
    return Query$GetManagedBuyers(
      managedBuyers: (l$managedBuyers as List<dynamic>)
          .map((e) => Query$GetManagedBuyers$managedBuyers.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetManagedBuyers$managedBuyers> managedBuyers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$managedBuyers = managedBuyers;
    _resultData['managedBuyers'] =
        l$managedBuyers.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$managedBuyers = managedBuyers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$managedBuyers.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetManagedBuyers || runtimeType != other.runtimeType) {
      return false;
    }
    final l$managedBuyers = managedBuyers;
    final lOther$managedBuyers = other.managedBuyers;
    if (l$managedBuyers.length != lOther$managedBuyers.length) {
      return false;
    }
    for (int i = 0; i < l$managedBuyers.length; i++) {
      final l$managedBuyers$entry = l$managedBuyers[i];
      final lOther$managedBuyers$entry = lOther$managedBuyers[i];
      if (l$managedBuyers$entry != lOther$managedBuyers$entry) {
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

extension UtilityExtension$Query$GetManagedBuyers on Query$GetManagedBuyers {
  CopyWith$Query$GetManagedBuyers<Query$GetManagedBuyers> get copyWith =>
      CopyWith$Query$GetManagedBuyers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetManagedBuyers<TRes> {
  factory CopyWith$Query$GetManagedBuyers(
    Query$GetManagedBuyers instance,
    TRes Function(Query$GetManagedBuyers) then,
  ) = _CopyWithImpl$Query$GetManagedBuyers;

  factory CopyWith$Query$GetManagedBuyers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetManagedBuyers;

  TRes call({
    List<Query$GetManagedBuyers$managedBuyers>? managedBuyers,
    String? $__typename,
  });
  TRes managedBuyers(
      Iterable<Query$GetManagedBuyers$managedBuyers> Function(
              Iterable<
                  CopyWith$Query$GetManagedBuyers$managedBuyers<
                      Query$GetManagedBuyers$managedBuyers>>)
          _fn);
}

class _CopyWithImpl$Query$GetManagedBuyers<TRes>
    implements CopyWith$Query$GetManagedBuyers<TRes> {
  _CopyWithImpl$Query$GetManagedBuyers(
    this._instance,
    this._then,
  );

  final Query$GetManagedBuyers _instance;

  final TRes Function(Query$GetManagedBuyers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? managedBuyers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetManagedBuyers(
        managedBuyers: managedBuyers == _undefined || managedBuyers == null
            ? _instance.managedBuyers
            : (managedBuyers as List<Query$GetManagedBuyers$managedBuyers>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes managedBuyers(
          Iterable<Query$GetManagedBuyers$managedBuyers> Function(
                  Iterable<
                      CopyWith$Query$GetManagedBuyers$managedBuyers<
                          Query$GetManagedBuyers$managedBuyers>>)
              _fn) =>
      call(
          managedBuyers: _fn(_instance.managedBuyers
              .map((e) => CopyWith$Query$GetManagedBuyers$managedBuyers(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetManagedBuyers<TRes>
    implements CopyWith$Query$GetManagedBuyers<TRes> {
  _CopyWithStubImpl$Query$GetManagedBuyers(this._res);

  TRes _res;

  call({
    List<Query$GetManagedBuyers$managedBuyers>? managedBuyers,
    String? $__typename,
  }) =>
      _res;

  managedBuyers(_fn) => _res;
}

const documentNodeQueryGetManagedBuyers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetManagedBuyers'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'managedBuyers'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'username'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'azureId'),
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

class Query$GetManagedBuyers$managedBuyers {
  Query$GetManagedBuyers$managedBuyers({
    required this.username,
    required this.azureId,
    this.$__typename = 'BuyerInfo',
  });

  factory Query$GetManagedBuyers$managedBuyers.fromJson(
      Map<String, dynamic> json) {
    final l$username = json['username'];
    final l$azureId = json['azureId'];
    final l$$__typename = json['__typename'];
    return Query$GetManagedBuyers$managedBuyers(
      username: (l$username as String),
      azureId: (l$azureId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String username;

  final String azureId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$username = username;
    _resultData['username'] = l$username;
    final l$azureId = azureId;
    _resultData['azureId'] = l$azureId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$username = username;
    final l$azureId = azureId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$username,
      l$azureId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetManagedBuyers$managedBuyers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$azureId = azureId;
    final lOther$azureId = other.azureId;
    if (l$azureId != lOther$azureId) {
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

extension UtilityExtension$Query$GetManagedBuyers$managedBuyers
    on Query$GetManagedBuyers$managedBuyers {
  CopyWith$Query$GetManagedBuyers$managedBuyers<
          Query$GetManagedBuyers$managedBuyers>
      get copyWith => CopyWith$Query$GetManagedBuyers$managedBuyers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetManagedBuyers$managedBuyers<TRes> {
  factory CopyWith$Query$GetManagedBuyers$managedBuyers(
    Query$GetManagedBuyers$managedBuyers instance,
    TRes Function(Query$GetManagedBuyers$managedBuyers) then,
  ) = _CopyWithImpl$Query$GetManagedBuyers$managedBuyers;

  factory CopyWith$Query$GetManagedBuyers$managedBuyers.stub(TRes res) =
      _CopyWithStubImpl$Query$GetManagedBuyers$managedBuyers;

  TRes call({
    String? username,
    String? azureId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetManagedBuyers$managedBuyers<TRes>
    implements CopyWith$Query$GetManagedBuyers$managedBuyers<TRes> {
  _CopyWithImpl$Query$GetManagedBuyers$managedBuyers(
    this._instance,
    this._then,
  );

  final Query$GetManagedBuyers$managedBuyers _instance;

  final TRes Function(Query$GetManagedBuyers$managedBuyers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? username = _undefined,
    Object? azureId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetManagedBuyers$managedBuyers(
        username: username == _undefined || username == null
            ? _instance.username
            : (username as String),
        azureId: azureId == _undefined || azureId == null
            ? _instance.azureId
            : (azureId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetManagedBuyers$managedBuyers<TRes>
    implements CopyWith$Query$GetManagedBuyers$managedBuyers<TRes> {
  _CopyWithStubImpl$Query$GetManagedBuyers$managedBuyers(this._res);

  TRes _res;

  call({
    String? username,
    String? azureId,
    String? $__typename,
  }) =>
      _res;
}
