import 'package:gql/ast.dart';

class Fragment$LocationFragment {
  Fragment$LocationFragment({
    required this.id,
    required this.code,
    required this.description,
    this.productId,
    this.productCode,
    this.depotId,
    this.$__typename = 'InventoryLocation',
  });

  factory Fragment$LocationFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$description = json['description'];
    final l$productId = json['productId'];
    final l$productCode = json['productCode'];
    final l$depotId = json['depotId'];
    final l$$__typename = json['__typename'];
    return Fragment$LocationFragment(
      id: (l$id as String),
      code: (l$code as String),
      description: (l$description as String),
      productId: (l$productId as String?),
      productCode: (l$productCode as String?),
      depotId: (l$depotId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String description;

  final String? productId;

  final String? productCode;

  final String? depotId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$productId = productId;
    _resultData['productId'] = l$productId;
    final l$productCode = productCode;
    _resultData['productCode'] = l$productCode;
    final l$depotId = depotId;
    _resultData['depotId'] = l$depotId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$description = description;
    final l$productId = productId;
    final l$productCode = productCode;
    final l$depotId = depotId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$description,
      l$productId,
      l$productCode,
      l$depotId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$LocationFragment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
      return false;
    }
    final l$productCode = productCode;
    final lOther$productCode = other.productCode;
    if (l$productCode != lOther$productCode) {
      return false;
    }
    final l$depotId = depotId;
    final lOther$depotId = other.depotId;
    if (l$depotId != lOther$depotId) {
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

extension UtilityExtension$Fragment$LocationFragment
    on Fragment$LocationFragment {
  CopyWith$Fragment$LocationFragment<Fragment$LocationFragment> get copyWith =>
      CopyWith$Fragment$LocationFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$LocationFragment<TRes> {
  factory CopyWith$Fragment$LocationFragment(
    Fragment$LocationFragment instance,
    TRes Function(Fragment$LocationFragment) then,
  ) = _CopyWithImpl$Fragment$LocationFragment;

  factory CopyWith$Fragment$LocationFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$LocationFragment;

  TRes call({
    String? id,
    String? code,
    String? description,
    String? productId,
    String? productCode,
    String? depotId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$LocationFragment<TRes>
    implements CopyWith$Fragment$LocationFragment<TRes> {
  _CopyWithImpl$Fragment$LocationFragment(this._instance, this._then);

  final Fragment$LocationFragment _instance;

  final TRes Function(Fragment$LocationFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? description = _undefined,
    Object? productId = _undefined,
    Object? productCode = _undefined,
    Object? depotId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$LocationFragment(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      productId: productId == _undefined
          ? _instance.productId
          : (productId as String?),
      productCode: productCode == _undefined
          ? _instance.productCode
          : (productCode as String?),
      depotId: depotId == _undefined ? _instance.depotId : (depotId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$LocationFragment<TRes>
    implements CopyWith$Fragment$LocationFragment<TRes> {
  _CopyWithStubImpl$Fragment$LocationFragment(this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    String? description,
    String? productId,
    String? productCode,
    String? depotId,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionLocationFragment = FragmentDefinitionNode(
  name: NameNode(value: 'LocationFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'InventoryLocation'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'code'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'description'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'productId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'productCode'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'depotId'),
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
);
const documentNodeFragmentLocationFragment = DocumentNode(
  definitions: [fragmentDefinitionLocationFragment],
);
