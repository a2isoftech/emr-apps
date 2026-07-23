import 'package:gql/ast.dart';

class Query$GetStocktakeProductFamilyFilterValues {
  Query$GetStocktakeProductFamilyFilterValues({
    required this.stocktakeProductFamilyFilterValues,
    this.$__typename = 'Query',
  });

  factory Query$GetStocktakeProductFamilyFilterValues.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$stocktakeProductFamilyFilterValues =
        json['stocktakeProductFamilyFilterValues'];
    final l$$__typename = json['__typename'];
    return Query$GetStocktakeProductFamilyFilterValues(
      stocktakeProductFamilyFilterValues:
          (l$stocktakeProductFamilyFilterValues as List<dynamic>)
              .map((e) => (e as String))
              .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String> stocktakeProductFamilyFilterValues;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stocktakeProductFamilyFilterValues =
        stocktakeProductFamilyFilterValues;
    _resultData['stocktakeProductFamilyFilterValues'] =
        l$stocktakeProductFamilyFilterValues.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stocktakeProductFamilyFilterValues =
        stocktakeProductFamilyFilterValues;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$stocktakeProductFamilyFilterValues.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetStocktakeProductFamilyFilterValues ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$stocktakeProductFamilyFilterValues =
        stocktakeProductFamilyFilterValues;
    final lOther$stocktakeProductFamilyFilterValues =
        other.stocktakeProductFamilyFilterValues;
    if (l$stocktakeProductFamilyFilterValues.length !=
        lOther$stocktakeProductFamilyFilterValues.length) {
      return false;
    }
    for (int i = 0; i < l$stocktakeProductFamilyFilterValues.length; i++) {
      final l$stocktakeProductFamilyFilterValues$entry =
          l$stocktakeProductFamilyFilterValues[i];
      final lOther$stocktakeProductFamilyFilterValues$entry =
          lOther$stocktakeProductFamilyFilterValues[i];
      if (l$stocktakeProductFamilyFilterValues$entry !=
          lOther$stocktakeProductFamilyFilterValues$entry) {
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

extension UtilityExtension$Query$GetStocktakeProductFamilyFilterValues
    on Query$GetStocktakeProductFamilyFilterValues {
  CopyWith$Query$GetStocktakeProductFamilyFilterValues<
    Query$GetStocktakeProductFamilyFilterValues
  >
  get copyWith =>
      CopyWith$Query$GetStocktakeProductFamilyFilterValues(this, (i) => i);
}

abstract class CopyWith$Query$GetStocktakeProductFamilyFilterValues<TRes> {
  factory CopyWith$Query$GetStocktakeProductFamilyFilterValues(
    Query$GetStocktakeProductFamilyFilterValues instance,
    TRes Function(Query$GetStocktakeProductFamilyFilterValues) then,
  ) = _CopyWithImpl$Query$GetStocktakeProductFamilyFilterValues;

  factory CopyWith$Query$GetStocktakeProductFamilyFilterValues.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStocktakeProductFamilyFilterValues;

  TRes call({
    List<String>? stocktakeProductFamilyFilterValues,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetStocktakeProductFamilyFilterValues<TRes>
    implements CopyWith$Query$GetStocktakeProductFamilyFilterValues<TRes> {
  _CopyWithImpl$Query$GetStocktakeProductFamilyFilterValues(
    this._instance,
    this._then,
  );

  final Query$GetStocktakeProductFamilyFilterValues _instance;

  final TRes Function(Query$GetStocktakeProductFamilyFilterValues) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? stocktakeProductFamilyFilterValues = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetStocktakeProductFamilyFilterValues(
      stocktakeProductFamilyFilterValues:
          stocktakeProductFamilyFilterValues == _undefined ||
              stocktakeProductFamilyFilterValues == null
          ? _instance.stocktakeProductFamilyFilterValues
          : (stocktakeProductFamilyFilterValues as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetStocktakeProductFamilyFilterValues<TRes>
    implements CopyWith$Query$GetStocktakeProductFamilyFilterValues<TRes> {
  _CopyWithStubImpl$Query$GetStocktakeProductFamilyFilterValues(this._res);

  TRes _res;

  call({
    List<String>? stocktakeProductFamilyFilterValues,
    String? $__typename,
  }) => _res;
}

const documentNodeQueryGetStocktakeProductFamilyFilterValues = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetStocktakeProductFamilyFilterValues'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'stocktakeProductFamilyFilterValues'),
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
