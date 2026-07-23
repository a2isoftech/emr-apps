import 'package:gql/ast.dart';

class Variables$Query$GetProductFamilies {
  factory Variables$Query$GetProductFamilies({
    String? query,
    List<String>? productClasses,
    List<String>? productCodes,
    List<String>? productLines,
  }) => Variables$Query$GetProductFamilies._({
    if (query != null) r'query': query,
    if (productClasses != null) r'productClasses': productClasses,
    if (productCodes != null) r'productCodes': productCodes,
    if (productLines != null) r'productLines': productLines,
  });

  Variables$Query$GetProductFamilies._(this._$data);

  factory Variables$Query$GetProductFamilies.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    if (data.containsKey('productClasses')) {
      final l$productClasses = data['productClasses'];
      result$data['productClasses'] = (l$productClasses as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('productCodes')) {
      final l$productCodes = data['productCodes'];
      result$data['productCodes'] = (l$productCodes as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('productLines')) {
      final l$productLines = data['productLines'];
      result$data['productLines'] = (l$productLines as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    return Variables$Query$GetProductFamilies._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get query => (_$data['query'] as String?);

  List<String>? get productClasses =>
      (_$data['productClasses'] as List<String>?);

  List<String>? get productCodes => (_$data['productCodes'] as List<String>?);

  List<String>? get productLines => (_$data['productLines'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    if (_$data.containsKey('productClasses')) {
      final l$productClasses = productClasses;
      result$data['productClasses'] = l$productClasses?.map((e) => e).toList();
    }
    if (_$data.containsKey('productCodes')) {
      final l$productCodes = productCodes;
      result$data['productCodes'] = l$productCodes?.map((e) => e).toList();
    }
    if (_$data.containsKey('productLines')) {
      final l$productLines = productLines;
      result$data['productLines'] = l$productLines?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetProductFamilies<
    Variables$Query$GetProductFamilies
  >
  get copyWith => CopyWith$Variables$Query$GetProductFamilies(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetProductFamilies ||
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
    final l$productClasses = productClasses;
    final lOther$productClasses = other.productClasses;
    if (_$data.containsKey('productClasses') !=
        other._$data.containsKey('productClasses')) {
      return false;
    }
    if (l$productClasses != null && lOther$productClasses != null) {
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
    } else if (l$productClasses != lOther$productClasses) {
      return false;
    }
    final l$productCodes = productCodes;
    final lOther$productCodes = other.productCodes;
    if (_$data.containsKey('productCodes') !=
        other._$data.containsKey('productCodes')) {
      return false;
    }
    if (l$productCodes != null && lOther$productCodes != null) {
      if (l$productCodes.length != lOther$productCodes.length) {
        return false;
      }
      for (int i = 0; i < l$productCodes.length; i++) {
        final l$productCodes$entry = l$productCodes[i];
        final lOther$productCodes$entry = lOther$productCodes[i];
        if (l$productCodes$entry != lOther$productCodes$entry) {
          return false;
        }
      }
    } else if (l$productCodes != lOther$productCodes) {
      return false;
    }
    final l$productLines = productLines;
    final lOther$productLines = other.productLines;
    if (_$data.containsKey('productLines') !=
        other._$data.containsKey('productLines')) {
      return false;
    }
    if (l$productLines != null && lOther$productLines != null) {
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
    } else if (l$productLines != lOther$productLines) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    final l$productClasses = productClasses;
    final l$productCodes = productCodes;
    final l$productLines = productLines;
    return Object.hashAll([
      _$data.containsKey('query') ? l$query : const {},
      _$data.containsKey('productClasses')
          ? l$productClasses == null
                ? null
                : Object.hashAll(l$productClasses.map((v) => v))
          : const {},
      _$data.containsKey('productCodes')
          ? l$productCodes == null
                ? null
                : Object.hashAll(l$productCodes.map((v) => v))
          : const {},
      _$data.containsKey('productLines')
          ? l$productLines == null
                ? null
                : Object.hashAll(l$productLines.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetProductFamilies<TRes> {
  factory CopyWith$Variables$Query$GetProductFamilies(
    Variables$Query$GetProductFamilies instance,
    TRes Function(Variables$Query$GetProductFamilies) then,
  ) = _CopyWithImpl$Variables$Query$GetProductFamilies;

  factory CopyWith$Variables$Query$GetProductFamilies.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetProductFamilies;

  TRes call({
    String? query,
    List<String>? productClasses,
    List<String>? productCodes,
    List<String>? productLines,
  });
}

class _CopyWithImpl$Variables$Query$GetProductFamilies<TRes>
    implements CopyWith$Variables$Query$GetProductFamilies<TRes> {
  _CopyWithImpl$Variables$Query$GetProductFamilies(this._instance, this._then);

  final Variables$Query$GetProductFamilies _instance;

  final TRes Function(Variables$Query$GetProductFamilies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? query = _undefined,
    Object? productClasses = _undefined,
    Object? productCodes = _undefined,
    Object? productLines = _undefined,
  }) => _then(
    Variables$Query$GetProductFamilies._({
      ..._instance._$data,
      if (query != _undefined) 'query': (query as String?),
      if (productClasses != _undefined)
        'productClasses': (productClasses as List<String>?),
      if (productCodes != _undefined)
        'productCodes': (productCodes as List<String>?),
      if (productLines != _undefined)
        'productLines': (productLines as List<String>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetProductFamilies<TRes>
    implements CopyWith$Variables$Query$GetProductFamilies<TRes> {
  _CopyWithStubImpl$Variables$Query$GetProductFamilies(this._res);

  TRes _res;

  call({
    String? query,
    List<String>? productClasses,
    List<String>? productCodes,
    List<String>? productLines,
  }) => _res;
}

class Query$GetProductFamilies {
  Query$GetProductFamilies({
    required this.productFamilies,
    this.$__typename = 'Query',
  });

  factory Query$GetProductFamilies.fromJson(Map<String, dynamic> json) {
    final l$productFamilies = json['productFamilies'];
    final l$$__typename = json['__typename'];
    return Query$GetProductFamilies(
      productFamilies: (l$productFamilies as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> productFamilies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$productFamilies = productFamilies;
    _resultData['productFamilies'] = l$productFamilies.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$productFamilies = productFamilies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$productFamilies.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetProductFamilies ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$productFamilies = productFamilies;
    final lOther$productFamilies = other.productFamilies;
    if (l$productFamilies.length != lOther$productFamilies.length) {
      return false;
    }
    for (int i = 0; i < l$productFamilies.length; i++) {
      final l$productFamilies$entry = l$productFamilies[i];
      final lOther$productFamilies$entry = lOther$productFamilies[i];
      if (l$productFamilies$entry != lOther$productFamilies$entry) {
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

extension UtilityExtension$Query$GetProductFamilies
    on Query$GetProductFamilies {
  CopyWith$Query$GetProductFamilies<Query$GetProductFamilies> get copyWith =>
      CopyWith$Query$GetProductFamilies(this, (i) => i);
}

abstract class CopyWith$Query$GetProductFamilies<TRes> {
  factory CopyWith$Query$GetProductFamilies(
    Query$GetProductFamilies instance,
    TRes Function(Query$GetProductFamilies) then,
  ) = _CopyWithImpl$Query$GetProductFamilies;

  factory CopyWith$Query$GetProductFamilies.stub(TRes res) =
      _CopyWithStubImpl$Query$GetProductFamilies;

  TRes call({List<String>? productFamilies, String? $__typename});
}

class _CopyWithImpl$Query$GetProductFamilies<TRes>
    implements CopyWith$Query$GetProductFamilies<TRes> {
  _CopyWithImpl$Query$GetProductFamilies(this._instance, this._then);

  final Query$GetProductFamilies _instance;

  final TRes Function(Query$GetProductFamilies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? productFamilies = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetProductFamilies(
      productFamilies: productFamilies == _undefined || productFamilies == null
          ? _instance.productFamilies
          : (productFamilies as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetProductFamilies<TRes>
    implements CopyWith$Query$GetProductFamilies<TRes> {
  _CopyWithStubImpl$Query$GetProductFamilies(this._res);

  TRes _res;

  call({List<String>? productFamilies, String? $__typename}) => _res;
}

const documentNodeQueryGetProductFamilies = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetProductFamilies'),
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
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'productClasses')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'String'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'productCodes')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'String'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'productLines')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'String'),
              isNonNull: true,
            ),
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
            name: NameNode(value: 'productFamilies'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'query'),
                value: VariableNode(name: NameNode(value: 'query')),
              ),
              ArgumentNode(
                name: NameNode(value: 'productClasses'),
                value: VariableNode(name: NameNode(value: 'productClasses')),
              ),
              ArgumentNode(
                name: NameNode(value: 'productCodes'),
                value: VariableNode(name: NameNode(value: 'productCodes')),
              ),
              ArgumentNode(
                name: NameNode(value: 'productLines'),
                value: VariableNode(name: NameNode(value: 'productLines')),
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
