import 'package:gql/ast.dart';

class Query$GetAllTerritoryCodes {
  Query$GetAllTerritoryCodes({
    required this.allTerritoryCodes,
    this.$__typename = 'Query',
  });

  factory Query$GetAllTerritoryCodes.fromJson(Map<String, dynamic> json) {
    final l$allTerritoryCodes = json['allTerritoryCodes'];
    final l$$__typename = json['__typename'];
    return Query$GetAllTerritoryCodes(
      allTerritoryCodes: (l$allTerritoryCodes as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> allTerritoryCodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allTerritoryCodes = allTerritoryCodes;
    _resultData['allTerritoryCodes'] =
        l$allTerritoryCodes.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allTerritoryCodes = allTerritoryCodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$allTerritoryCodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllTerritoryCodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allTerritoryCodes = allTerritoryCodes;
    final lOther$allTerritoryCodes = other.allTerritoryCodes;
    if (l$allTerritoryCodes.length != lOther$allTerritoryCodes.length) {
      return false;
    }
    for (int i = 0; i < l$allTerritoryCodes.length; i++) {
      final l$allTerritoryCodes$entry = l$allTerritoryCodes[i];
      final lOther$allTerritoryCodes$entry = lOther$allTerritoryCodes[i];
      if (l$allTerritoryCodes$entry != lOther$allTerritoryCodes$entry) {
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

extension UtilityExtension$Query$GetAllTerritoryCodes
    on Query$GetAllTerritoryCodes {
  CopyWith$Query$GetAllTerritoryCodes<Query$GetAllTerritoryCodes>
      get copyWith => CopyWith$Query$GetAllTerritoryCodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllTerritoryCodes<TRes> {
  factory CopyWith$Query$GetAllTerritoryCodes(
    Query$GetAllTerritoryCodes instance,
    TRes Function(Query$GetAllTerritoryCodes) then,
  ) = _CopyWithImpl$Query$GetAllTerritoryCodes;

  factory CopyWith$Query$GetAllTerritoryCodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllTerritoryCodes;

  TRes call({
    List<String>? allTerritoryCodes,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllTerritoryCodes<TRes>
    implements CopyWith$Query$GetAllTerritoryCodes<TRes> {
  _CopyWithImpl$Query$GetAllTerritoryCodes(
    this._instance,
    this._then,
  );

  final Query$GetAllTerritoryCodes _instance;

  final TRes Function(Query$GetAllTerritoryCodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allTerritoryCodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllTerritoryCodes(
        allTerritoryCodes:
            allTerritoryCodes == _undefined || allTerritoryCodes == null
                ? _instance.allTerritoryCodes
                : (allTerritoryCodes as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAllTerritoryCodes<TRes>
    implements CopyWith$Query$GetAllTerritoryCodes<TRes> {
  _CopyWithStubImpl$Query$GetAllTerritoryCodes(this._res);

  TRes _res;

  call({
    List<String>? allTerritoryCodes,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryGetAllTerritoryCodes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllTerritoryCodes'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'allTerritoryCodes'),
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
