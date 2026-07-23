import 'package:gql/ast.dart';

class Variables$Query$GetProductLines {
  factory Variables$Query$GetProductLines({String? query}) =>
      Variables$Query$GetProductLines._({if (query != null) r'query': query});

  Variables$Query$GetProductLines._(this._$data);

  factory Variables$Query$GetProductLines.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    return Variables$Query$GetProductLines._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get query => (_$data['query'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetProductLines<Variables$Query$GetProductLines>
  get copyWith => CopyWith$Variables$Query$GetProductLines(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetProductLines ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (_$data.containsKey('query') != other._$data.containsKey('query')) {
      return false;
    }
    if (l$query != lOther$query) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    return Object.hashAll([_$data.containsKey('query') ? l$query : const {}]);
  }
}

abstract class CopyWith$Variables$Query$GetProductLines<TRes> {
  factory CopyWith$Variables$Query$GetProductLines(
    Variables$Query$GetProductLines instance,
    TRes Function(Variables$Query$GetProductLines) then,
  ) = _CopyWithImpl$Variables$Query$GetProductLines;

  factory CopyWith$Variables$Query$GetProductLines.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetProductLines;

  TRes call({String? query});
}

class _CopyWithImpl$Variables$Query$GetProductLines<TRes>
    implements CopyWith$Variables$Query$GetProductLines<TRes> {
  _CopyWithImpl$Variables$Query$GetProductLines(this._instance, this._then);

  final Variables$Query$GetProductLines _instance;

  final TRes Function(Variables$Query$GetProductLines) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? query = _undefined}) => _then(
    Variables$Query$GetProductLines._({
      ..._instance._$data,
      if (query != _undefined) 'query': (query as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetProductLines<TRes>
    implements CopyWith$Variables$Query$GetProductLines<TRes> {
  _CopyWithStubImpl$Variables$Query$GetProductLines(this._res);

  TRes _res;

  call({String? query}) => _res;
}

class Query$GetProductLines {
  Query$GetProductLines({
    required this.productLines,
    this.$__typename = 'Query',
  });

  factory Query$GetProductLines.fromJson(Map<String, dynamic> json) {
    final l$productLines = json['productLines'];
    final l$$__typename = json['__typename'];
    return Query$GetProductLines(
      productLines: (l$productLines as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> productLines;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$productLines = productLines;
    _resultData['productLines'] = l$productLines.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$productLines = productLines;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$productLines.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetProductLines || runtimeType != other.runtimeType) {
      return false;
    }
    final l$productLines = productLines;
    final lOther$productLines = other.productLines;
    if (l$productLines.length != lOther$productLines.length) {
      return false;
    }
    for (int i = 0; i < l$productLines.length; i++) {
      final l$productLines$entry = l$productLines[i];
      final lOther$productLines$entry = lOther$productLines[i];
      if (l$productLines$entry != lOther$productLines$entry) {
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

extension UtilityExtension$Query$GetProductLines on Query$GetProductLines {
  CopyWith$Query$GetProductLines<Query$GetProductLines> get copyWith =>
      CopyWith$Query$GetProductLines(this, (i) => i);
}

abstract class CopyWith$Query$GetProductLines<TRes> {
  factory CopyWith$Query$GetProductLines(
    Query$GetProductLines instance,
    TRes Function(Query$GetProductLines) then,
  ) = _CopyWithImpl$Query$GetProductLines;

  factory CopyWith$Query$GetProductLines.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProductLines;

  TRes call({List<String>? productLines, String? $__typename});
}

class _CopyWithImpl$Query$GetProductLines<TRes>
    implements CopyWith$Query$GetProductLines<TRes> {
  _CopyWithImpl$Query$GetProductLines(this._instance, this._then);

  final Query$GetProductLines _instance;

  final TRes Function(Query$GetProductLines) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? productLines = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetProductLines(
      productLines: productLines == _undefined || productLines == null
          ? _instance.productLines
          : (productLines as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetProductLines<TRes>
    implements CopyWith$Query$GetProductLines<TRes> {
  _CopyWithStubImpl$Query$GetProductLines(this._res);

  TRes _res;

  call({List<String>? productLines, String? $__typename}) => _res;
}

const documentNodeQueryGetProductLines = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetProductLines'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'query')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'productLines'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'query'),
                value: VariableNode(name: NameNode(value: 'query')),
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
        ],
      ),
    ),
  ],
);
