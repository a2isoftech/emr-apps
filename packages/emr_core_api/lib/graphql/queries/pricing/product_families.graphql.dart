import 'package:gql/ast.dart';

class Query$ProductFamilies {
  Query$ProductFamilies({
    required this.productFamilies,
    this.$__typename = 'Query',
  });

  factory Query$ProductFamilies.fromJson(Map<String, dynamic> json) {
    final l$productFamilies = json['productFamilies'];
    final l$$__typename = json['__typename'];
    return Query$ProductFamilies(
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
    if (other is! Query$ProductFamilies || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$ProductFamilies on Query$ProductFamilies {
  CopyWith$Query$ProductFamilies<Query$ProductFamilies> get copyWith =>
      CopyWith$Query$ProductFamilies(this, (i) => i);
}

abstract class CopyWith$Query$ProductFamilies<TRes> {
  factory CopyWith$Query$ProductFamilies(
    Query$ProductFamilies instance,
    TRes Function(Query$ProductFamilies) then,
  ) = _CopyWithImpl$Query$ProductFamilies;

  factory CopyWith$Query$ProductFamilies.stub(TRes res) =
      _CopyWithStubImpl$Query$ProductFamilies;

  TRes call({List<String>? productFamilies, String? $__typename});
}

class _CopyWithImpl$Query$ProductFamilies<TRes>
    implements CopyWith$Query$ProductFamilies<TRes> {
  _CopyWithImpl$Query$ProductFamilies(this._instance, this._then);

  final Query$ProductFamilies _instance;

  final TRes Function(Query$ProductFamilies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? productFamilies = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ProductFamilies(
      productFamilies: productFamilies == _undefined || productFamilies == null
          ? _instance.productFamilies
          : (productFamilies as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ProductFamilies<TRes>
    implements CopyWith$Query$ProductFamilies<TRes> {
  _CopyWithStubImpl$Query$ProductFamilies(this._res);

  TRes _res;

  call({List<String>? productFamilies, String? $__typename}) => _res;
}

const documentNodeQueryProductFamilies = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ProductFamilies'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'productFamilies'),
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
        ],
      ),
    ),
  ],
);
