import 'package:gql/ast.dart';

class Query$Territories {
  Query$Territories({
    required this.territories,
    this.$__typename = 'FormsQuery',
  });

  factory Query$Territories.fromJson(Map<String, dynamic> json) {
    final l$territories = json['territories'];
    final l$$__typename = json['__typename'];
    return Query$Territories(
      territories:
          (l$territories as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> territories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$territories = territories;
    _resultData['territories'] = l$territories.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$territories = territories;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$territories.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Territories) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$territories = territories;
    final lOther$territories = other.territories;
    if (l$territories.length != lOther$territories.length) {
      return false;
    }
    for (int i = 0; i < l$territories.length; i++) {
      final l$territories$entry = l$territories[i];
      final lOther$territories$entry = lOther$territories[i];
      if (l$territories$entry != lOther$territories$entry) {
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

extension UtilityExtension$Query$Territories on Query$Territories {
  CopyWith$Query$Territories<Query$Territories> get copyWith =>
      CopyWith$Query$Territories(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Territories<TRes> {
  factory CopyWith$Query$Territories(
    Query$Territories instance,
    TRes Function(Query$Territories) then,
  ) = _CopyWithImpl$Query$Territories;

  factory CopyWith$Query$Territories.stub(TRes res) =
      _CopyWithStubImpl$Query$Territories;

  TRes call({
    List<String>? territories,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Territories<TRes>
    implements CopyWith$Query$Territories<TRes> {
  _CopyWithImpl$Query$Territories(
    this._instance,
    this._then,
  );

  final Query$Territories _instance;

  final TRes Function(Query$Territories) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? territories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Territories(
        territories: territories == _undefined || territories == null
            ? _instance.territories
            : (territories as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Territories<TRes>
    implements CopyWith$Query$Territories<TRes> {
  _CopyWithStubImpl$Query$Territories(this._res);

  TRes _res;

  call({
    List<String>? territories,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryTerritories = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Territories'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'territories'),
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
