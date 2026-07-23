import 'package:gql/ast.dart';

class Query$GetAllCompanies {
  Query$GetAllCompanies({
    required this.allCompanies,
    this.$__typename = 'FormsQuery',
  });

  factory Query$GetAllCompanies.fromJson(Map<String, dynamic> json) {
    final l$allCompanies = json['allCompanies'];
    final l$$__typename = json['__typename'];
    return Query$GetAllCompanies(
      allCompanies:
          (l$allCompanies as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> allCompanies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allCompanies = allCompanies;
    _resultData['allCompanies'] = l$allCompanies.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allCompanies = allCompanies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$allCompanies.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllCompanies) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allCompanies = allCompanies;
    final lOther$allCompanies = other.allCompanies;
    if (l$allCompanies.length != lOther$allCompanies.length) {
      return false;
    }
    for (int i = 0; i < l$allCompanies.length; i++) {
      final l$allCompanies$entry = l$allCompanies[i];
      final lOther$allCompanies$entry = lOther$allCompanies[i];
      if (l$allCompanies$entry != lOther$allCompanies$entry) {
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

extension UtilityExtension$Query$GetAllCompanies on Query$GetAllCompanies {
  CopyWith$Query$GetAllCompanies<Query$GetAllCompanies> get copyWith =>
      CopyWith$Query$GetAllCompanies(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAllCompanies<TRes> {
  factory CopyWith$Query$GetAllCompanies(
    Query$GetAllCompanies instance,
    TRes Function(Query$GetAllCompanies) then,
  ) = _CopyWithImpl$Query$GetAllCompanies;

  factory CopyWith$Query$GetAllCompanies.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllCompanies;

  TRes call({
    List<String>? allCompanies,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllCompanies<TRes>
    implements CopyWith$Query$GetAllCompanies<TRes> {
  _CopyWithImpl$Query$GetAllCompanies(
    this._instance,
    this._then,
  );

  final Query$GetAllCompanies _instance;

  final TRes Function(Query$GetAllCompanies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allCompanies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllCompanies(
        allCompanies: allCompanies == _undefined || allCompanies == null
            ? _instance.allCompanies
            : (allCompanies as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAllCompanies<TRes>
    implements CopyWith$Query$GetAllCompanies<TRes> {
  _CopyWithStubImpl$Query$GetAllCompanies(this._res);

  TRes _res;

  call({
    List<String>? allCompanies,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryGetAllCompanies = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllCompanies'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'allCompanies'),
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
