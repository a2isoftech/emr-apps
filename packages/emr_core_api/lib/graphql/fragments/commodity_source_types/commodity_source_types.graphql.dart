import 'package:gql/ast.dart';

class Fragment$CommoditySourceTypesFragment {
  Fragment$CommoditySourceTypesFragment({
    required this.id,
    required this.commoditySourceTypeName,
    required this.commoditySourceTypeDescription,
    this.$__typename = 'CommoditySourceTypes',
  });

  factory Fragment$CommoditySourceTypesFragment.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$commoditySourceTypeName = json['commoditySourceTypeName'];
    final l$commoditySourceTypeDescription =
        json['commoditySourceTypeDescription'];
    final l$$__typename = json['__typename'];
    return Fragment$CommoditySourceTypesFragment(
      id: (l$id as String),
      commoditySourceTypeName: (l$commoditySourceTypeName as String),
      commoditySourceTypeDescription:
          (l$commoditySourceTypeDescription as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String commoditySourceTypeName;

  final String commoditySourceTypeDescription;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$commoditySourceTypeName = commoditySourceTypeName;
    _resultData['commoditySourceTypeName'] = l$commoditySourceTypeName;
    final l$commoditySourceTypeDescription = commoditySourceTypeDescription;
    _resultData['commoditySourceTypeDescription'] =
        l$commoditySourceTypeDescription;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$commoditySourceTypeName = commoditySourceTypeName;
    final l$commoditySourceTypeDescription = commoditySourceTypeDescription;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$commoditySourceTypeName,
      l$commoditySourceTypeDescription,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CommoditySourceTypesFragment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$commoditySourceTypeName = commoditySourceTypeName;
    final lOther$commoditySourceTypeName = other.commoditySourceTypeName;
    if (l$commoditySourceTypeName != lOther$commoditySourceTypeName) {
      return false;
    }
    final l$commoditySourceTypeDescription = commoditySourceTypeDescription;
    final lOther$commoditySourceTypeDescription =
        other.commoditySourceTypeDescription;
    if (l$commoditySourceTypeDescription !=
        lOther$commoditySourceTypeDescription) {
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

extension UtilityExtension$Fragment$CommoditySourceTypesFragment
    on Fragment$CommoditySourceTypesFragment {
  CopyWith$Fragment$CommoditySourceTypesFragment<
    Fragment$CommoditySourceTypesFragment
  >
  get copyWith =>
      CopyWith$Fragment$CommoditySourceTypesFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$CommoditySourceTypesFragment<TRes> {
  factory CopyWith$Fragment$CommoditySourceTypesFragment(
    Fragment$CommoditySourceTypesFragment instance,
    TRes Function(Fragment$CommoditySourceTypesFragment) then,
  ) = _CopyWithImpl$Fragment$CommoditySourceTypesFragment;

  factory CopyWith$Fragment$CommoditySourceTypesFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CommoditySourceTypesFragment;

  TRes call({
    String? id,
    String? commoditySourceTypeName,
    String? commoditySourceTypeDescription,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CommoditySourceTypesFragment<TRes>
    implements CopyWith$Fragment$CommoditySourceTypesFragment<TRes> {
  _CopyWithImpl$Fragment$CommoditySourceTypesFragment(
    this._instance,
    this._then,
  );

  final Fragment$CommoditySourceTypesFragment _instance;

  final TRes Function(Fragment$CommoditySourceTypesFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? commoditySourceTypeName = _undefined,
    Object? commoditySourceTypeDescription = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$CommoditySourceTypesFragment(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      commoditySourceTypeName:
          commoditySourceTypeName == _undefined ||
              commoditySourceTypeName == null
          ? _instance.commoditySourceTypeName
          : (commoditySourceTypeName as String),
      commoditySourceTypeDescription:
          commoditySourceTypeDescription == _undefined ||
              commoditySourceTypeDescription == null
          ? _instance.commoditySourceTypeDescription
          : (commoditySourceTypeDescription as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$CommoditySourceTypesFragment<TRes>
    implements CopyWith$Fragment$CommoditySourceTypesFragment<TRes> {
  _CopyWithStubImpl$Fragment$CommoditySourceTypesFragment(this._res);

  TRes _res;

  call({
    String? id,
    String? commoditySourceTypeName,
    String? commoditySourceTypeDescription,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionCommoditySourceTypesFragment = FragmentDefinitionNode(
  name: NameNode(value: 'CommoditySourceTypesFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'CommoditySourceTypes'),
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
        name: NameNode(value: 'commoditySourceTypeName'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'commoditySourceTypeDescription'),
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
const documentNodeFragmentCommoditySourceTypesFragment = DocumentNode(
  definitions: [fragmentDefinitionCommoditySourceTypesFragment],
);
