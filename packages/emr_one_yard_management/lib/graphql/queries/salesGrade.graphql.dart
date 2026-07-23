import 'package:gql/ast.dart';

class Variables$Query$salesGrade {
  factory Variables$Query$salesGrade({required String searchTerm}) =>
      Variables$Query$salesGrade._({
        r'searchTerm': searchTerm,
      });

  Variables$Query$salesGrade._(this._$data);

  factory Variables$Query$salesGrade.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$searchTerm = data['searchTerm'];
    result$data['searchTerm'] = (l$searchTerm as String);
    return Variables$Query$salesGrade._(result$data);
  }

  Map<String, dynamic> _$data;

  String get searchTerm => (_$data['searchTerm'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$searchTerm = searchTerm;
    result$data['searchTerm'] = l$searchTerm;
    return result$data;
  }

  CopyWith$Variables$Query$salesGrade<Variables$Query$salesGrade>
      get copyWith => CopyWith$Variables$Query$salesGrade(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$salesGrade) ||
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

abstract class CopyWith$Variables$Query$salesGrade<TRes> {
  factory CopyWith$Variables$Query$salesGrade(
    Variables$Query$salesGrade instance,
    TRes Function(Variables$Query$salesGrade) then,
  ) = _CopyWithImpl$Variables$Query$salesGrade;

  factory CopyWith$Variables$Query$salesGrade.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$salesGrade;

  TRes call({String? searchTerm});
}

class _CopyWithImpl$Variables$Query$salesGrade<TRes>
    implements CopyWith$Variables$Query$salesGrade<TRes> {
  _CopyWithImpl$Variables$Query$salesGrade(
    this._instance,
    this._then,
  );

  final Variables$Query$salesGrade _instance;

  final TRes Function(Variables$Query$salesGrade) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? searchTerm = _undefined}) =>
      _then(Variables$Query$salesGrade._({
        ..._instance._$data,
        if (searchTerm != _undefined && searchTerm != null)
          'searchTerm': (searchTerm as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$salesGrade<TRes>
    implements CopyWith$Variables$Query$salesGrade<TRes> {
  _CopyWithStubImpl$Variables$Query$salesGrade(this._res);

  TRes _res;

  call({String? searchTerm}) => _res;
}

class Query$salesGrade {
  Query$salesGrade({
    this.salesGrade,
    this.$__typename = 'Query',
  });

  factory Query$salesGrade.fromJson(Map<String, dynamic> json) {
    final l$salesGrade = json['salesGrade'];
    final l$$__typename = json['__typename'];
    return Query$salesGrade(
      salesGrade:
          (l$salesGrade as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String?>? salesGrade;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$salesGrade = salesGrade;
    _resultData['salesGrade'] = l$salesGrade?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$salesGrade = salesGrade;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$salesGrade == null ? null : Object.hashAll(l$salesGrade.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$salesGrade) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$salesGrade = salesGrade;
    final lOther$salesGrade = other.salesGrade;
    if (l$salesGrade != null && lOther$salesGrade != null) {
      if (l$salesGrade.length != lOther$salesGrade.length) {
        return false;
      }
      for (int i = 0; i < l$salesGrade.length; i++) {
        final l$salesGrade$entry = l$salesGrade[i];
        final lOther$salesGrade$entry = lOther$salesGrade[i];
        if (l$salesGrade$entry != lOther$salesGrade$entry) {
          return false;
        }
      }
    } else if (l$salesGrade != lOther$salesGrade) {
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

extension UtilityExtension$Query$salesGrade on Query$salesGrade {
  CopyWith$Query$salesGrade<Query$salesGrade> get copyWith =>
      CopyWith$Query$salesGrade(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$salesGrade<TRes> {
  factory CopyWith$Query$salesGrade(
    Query$salesGrade instance,
    TRes Function(Query$salesGrade) then,
  ) = _CopyWithImpl$Query$salesGrade;

  factory CopyWith$Query$salesGrade.stub(TRes res) =
      _CopyWithStubImpl$Query$salesGrade;

  TRes call({
    List<String?>? salesGrade,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$salesGrade<TRes>
    implements CopyWith$Query$salesGrade<TRes> {
  _CopyWithImpl$Query$salesGrade(
    this._instance,
    this._then,
  );

  final Query$salesGrade _instance;

  final TRes Function(Query$salesGrade) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? salesGrade = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$salesGrade(
        salesGrade: salesGrade == _undefined
            ? _instance.salesGrade
            : (salesGrade as List<String?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$salesGrade<TRes>
    implements CopyWith$Query$salesGrade<TRes> {
  _CopyWithStubImpl$Query$salesGrade(this._res);

  TRes _res;

  call({
    List<String?>? salesGrade,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQuerysalesGrade = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'salesGrade'),
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
        name: NameNode(value: 'salesGrade'),
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
