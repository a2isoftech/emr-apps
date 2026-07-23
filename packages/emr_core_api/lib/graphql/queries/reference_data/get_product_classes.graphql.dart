import 'package:gql/ast.dart';

class Variables$Query$GetProductClasses {
  factory Variables$Query$GetProductClasses({String? query}) =>
      Variables$Query$GetProductClasses._({if (query != null) r'query': query});

  Variables$Query$GetProductClasses._(this._$data);

  factory Variables$Query$GetProductClasses.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    return Variables$Query$GetProductClasses._(result$data);
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

  CopyWith$Variables$Query$GetProductClasses<Variables$Query$GetProductClasses>
  get copyWith => CopyWith$Variables$Query$GetProductClasses(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetProductClasses ||
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

abstract class CopyWith$Variables$Query$GetProductClasses<TRes> {
  factory CopyWith$Variables$Query$GetProductClasses(
    Variables$Query$GetProductClasses instance,
    TRes Function(Variables$Query$GetProductClasses) then,
  ) = _CopyWithImpl$Variables$Query$GetProductClasses;

  factory CopyWith$Variables$Query$GetProductClasses.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetProductClasses;

  TRes call({String? query});
}

class _CopyWithImpl$Variables$Query$GetProductClasses<TRes>
    implements CopyWith$Variables$Query$GetProductClasses<TRes> {
  _CopyWithImpl$Variables$Query$GetProductClasses(this._instance, this._then);

  final Variables$Query$GetProductClasses _instance;

  final TRes Function(Variables$Query$GetProductClasses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? query = _undefined}) => _then(
    Variables$Query$GetProductClasses._({
      ..._instance._$data,
      if (query != _undefined) 'query': (query as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetProductClasses<TRes>
    implements CopyWith$Variables$Query$GetProductClasses<TRes> {
  _CopyWithStubImpl$Variables$Query$GetProductClasses(this._res);

  TRes _res;

  call({String? query}) => _res;
}

class Query$GetProductClasses {
  Query$GetProductClasses({
    required this.productClasses,
    this.$__typename = 'Query',
  });

  factory Query$GetProductClasses.fromJson(Map<String, dynamic> json) {
    final l$productClasses = json['productClasses'];
    final l$$__typename = json['__typename'];
    return Query$GetProductClasses(
      productClasses: (l$productClasses as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> productClasses;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$productClasses = productClasses;
    _resultData['productClasses'] = l$productClasses.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$productClasses = productClasses;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$productClasses.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetProductClasses || runtimeType != other.runtimeType) {
      return false;
    }
    final l$productClasses = productClasses;
    final lOther$productClasses = other.productClasses;
    if (l$productClasses.length != lOther$productClasses.length) {
      return false;
    }
    for (int i = 0; i < l$productClasses.length; i++) {
      final l$productClasses$entry = l$productClasses[i];
      final lOther$productClasses$entry = lOther$productClasses[i];
      if (l$productClasses$entry != lOther$productClasses$entry) {
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

extension UtilityExtension$Query$GetProductClasses on Query$GetProductClasses {
  CopyWith$Query$GetProductClasses<Query$GetProductClasses> get copyWith =>
      CopyWith$Query$GetProductClasses(this, (i) => i);
}

abstract class CopyWith$Query$GetProductClasses<TRes> {
  factory CopyWith$Query$GetProductClasses(
    Query$GetProductClasses instance,
    TRes Function(Query$GetProductClasses) then,
  ) = _CopyWithImpl$Query$GetProductClasses;

  factory CopyWith$Query$GetProductClasses.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProductClasses;

  TRes call({List<String>? productClasses, String? $__typename});
}

class _CopyWithImpl$Query$GetProductClasses<TRes>
    implements CopyWith$Query$GetProductClasses<TRes> {
  _CopyWithImpl$Query$GetProductClasses(this._instance, this._then);

  final Query$GetProductClasses _instance;

  final TRes Function(Query$GetProductClasses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? productClasses = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetProductClasses(
      productClasses: productClasses == _undefined || productClasses == null
          ? _instance.productClasses
          : (productClasses as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetProductClasses<TRes>
    implements CopyWith$Query$GetProductClasses<TRes> {
  _CopyWithStubImpl$Query$GetProductClasses(this._res);

  TRes _res;

  call({List<String>? productClasses, String? $__typename}) => _res;
}

const documentNodeQueryGetProductClasses = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetProductClasses'),
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
            name: NameNode(value: 'productClasses'),
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
