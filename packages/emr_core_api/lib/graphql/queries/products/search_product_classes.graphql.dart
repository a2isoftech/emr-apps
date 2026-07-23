import 'package:gql/ast.dart';

class Variables$Query$SearchProductClasses {
  factory Variables$Query$SearchProductClasses({
    required String query,
    List<String>? productFamilies,
    List<String>? productLines,
    List<String>? productCodes,
  }) => Variables$Query$SearchProductClasses._({
    r'query': query,
    if (productFamilies != null) r'productFamilies': productFamilies,
    if (productLines != null) r'productLines': productLines,
    if (productCodes != null) r'productCodes': productCodes,
  });

  Variables$Query$SearchProductClasses._(this._$data);

  factory Variables$Query$SearchProductClasses.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$query = data['query'];
    result$data['query'] = (l$query as String);
    if (data.containsKey('productFamilies')) {
      final l$productFamilies = data['productFamilies'];
      result$data['productFamilies'] = (l$productFamilies as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('productLines')) {
      final l$productLines = data['productLines'];
      result$data['productLines'] = (l$productLines as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('productCodes')) {
      final l$productCodes = data['productCodes'];
      result$data['productCodes'] = (l$productCodes as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    return Variables$Query$SearchProductClasses._(result$data);
  }

  Map<String, dynamic> _$data;

  String get query => (_$data['query'] as String);

  List<String>? get productFamilies =>
      (_$data['productFamilies'] as List<String>?);

  List<String>? get productLines => (_$data['productLines'] as List<String>?);

  List<String>? get productCodes => (_$data['productCodes'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$query = query;
    result$data['query'] = l$query;
    if (_$data.containsKey('productFamilies')) {
      final l$productFamilies = productFamilies;
      result$data['productFamilies'] = l$productFamilies
          ?.map((e) => e)
          .toList();
    }
    if (_$data.containsKey('productLines')) {
      final l$productLines = productLines;
      result$data['productLines'] = l$productLines?.map((e) => e).toList();
    }
    if (_$data.containsKey('productCodes')) {
      final l$productCodes = productCodes;
      result$data['productCodes'] = l$productCodes?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$SearchProductClasses<
    Variables$Query$SearchProductClasses
  >
  get copyWith => CopyWith$Variables$Query$SearchProductClasses(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchProductClasses ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) {
      return false;
    }
    final l$productFamilies = productFamilies;
    final lOther$productFamilies = other.productFamilies;
    if (_$data.containsKey('productFamilies') !=
        other._$data.containsKey('productFamilies')) {
      return false;
    }
    if (l$productFamilies != null && lOther$productFamilies != null) {
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
    } else if (l$productFamilies != lOther$productFamilies) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    final l$productFamilies = productFamilies;
    final l$productLines = productLines;
    final l$productCodes = productCodes;
    return Object.hashAll([
      l$query,
      _$data.containsKey('productFamilies')
          ? l$productFamilies == null
                ? null
                : Object.hashAll(l$productFamilies.map((v) => v))
          : const {},
      _$data.containsKey('productLines')
          ? l$productLines == null
                ? null
                : Object.hashAll(l$productLines.map((v) => v))
          : const {},
      _$data.containsKey('productCodes')
          ? l$productCodes == null
                ? null
                : Object.hashAll(l$productCodes.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchProductClasses<TRes> {
  factory CopyWith$Variables$Query$SearchProductClasses(
    Variables$Query$SearchProductClasses instance,
    TRes Function(Variables$Query$SearchProductClasses) then,
  ) = _CopyWithImpl$Variables$Query$SearchProductClasses;

  factory CopyWith$Variables$Query$SearchProductClasses.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchProductClasses;

  TRes call({
    String? query,
    List<String>? productFamilies,
    List<String>? productLines,
    List<String>? productCodes,
  });
}

class _CopyWithImpl$Variables$Query$SearchProductClasses<TRes>
    implements CopyWith$Variables$Query$SearchProductClasses<TRes> {
  _CopyWithImpl$Variables$Query$SearchProductClasses(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchProductClasses _instance;

  final TRes Function(Variables$Query$SearchProductClasses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? query = _undefined,
    Object? productFamilies = _undefined,
    Object? productLines = _undefined,
    Object? productCodes = _undefined,
  }) => _then(
    Variables$Query$SearchProductClasses._({
      ..._instance._$data,
      if (query != _undefined && query != null) 'query': (query as String),
      if (productFamilies != _undefined)
        'productFamilies': (productFamilies as List<String>?),
      if (productLines != _undefined)
        'productLines': (productLines as List<String>?),
      if (productCodes != _undefined)
        'productCodes': (productCodes as List<String>?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SearchProductClasses<TRes>
    implements CopyWith$Variables$Query$SearchProductClasses<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchProductClasses(this._res);

  TRes _res;

  call({
    String? query,
    List<String>? productFamilies,
    List<String>? productLines,
    List<String>? productCodes,
  }) => _res;
}

class Query$SearchProductClasses {
  Query$SearchProductClasses({
    required this.productClasses,
    this.$__typename = 'Query',
  });

  factory Query$SearchProductClasses.fromJson(Map<String, dynamic> json) {
    final l$productClasses = json['productClasses'];
    final l$$__typename = json['__typename'];
    return Query$SearchProductClasses(
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
    if (other is! Query$SearchProductClasses ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$SearchProductClasses
    on Query$SearchProductClasses {
  CopyWith$Query$SearchProductClasses<Query$SearchProductClasses>
  get copyWith => CopyWith$Query$SearchProductClasses(this, (i) => i);
}

abstract class CopyWith$Query$SearchProductClasses<TRes> {
  factory CopyWith$Query$SearchProductClasses(
    Query$SearchProductClasses instance,
    TRes Function(Query$SearchProductClasses) then,
  ) = _CopyWithImpl$Query$SearchProductClasses;

  factory CopyWith$Query$SearchProductClasses.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchProductClasses;

  TRes call({List<String>? productClasses, String? $__typename});
}

class _CopyWithImpl$Query$SearchProductClasses<TRes>
    implements CopyWith$Query$SearchProductClasses<TRes> {
  _CopyWithImpl$Query$SearchProductClasses(this._instance, this._then);

  final Query$SearchProductClasses _instance;

  final TRes Function(Query$SearchProductClasses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? productClasses = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SearchProductClasses(
      productClasses: productClasses == _undefined || productClasses == null
          ? _instance.productClasses
          : (productClasses as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SearchProductClasses<TRes>
    implements CopyWith$Query$SearchProductClasses<TRes> {
  _CopyWithStubImpl$Query$SearchProductClasses(this._res);

  TRes _res;

  call({List<String>? productClasses, String? $__typename}) => _res;
}

const documentNodeQuerySearchProductClasses = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SearchProductClasses'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'query')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'productFamilies')),
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
              ArgumentNode(
                name: NameNode(value: 'productFamilies'),
                value: VariableNode(name: NameNode(value: 'productFamilies')),
              ),
              ArgumentNode(
                name: NameNode(value: 'productLines'),
                value: VariableNode(name: NameNode(value: 'productLines')),
              ),
              ArgumentNode(
                name: NameNode(value: 'productCodes'),
                value: VariableNode(name: NameNode(value: 'productCodes')),
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
