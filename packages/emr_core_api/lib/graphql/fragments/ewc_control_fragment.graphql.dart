import 'commodity_source_types/commodity_source_types.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$EwcControlFragment {
  Fragment$EwcControlFragment({
    required this.enabled,
    this.commoditySourceTypeId,
    required this.enablePartyWasteStream,
    this.commoditySourceType,
    this.$__typename = 'EwcControl',
  });

  factory Fragment$EwcControlFragment.fromJson(Map<String, dynamic> json) {
    final l$enabled = json['enabled'];
    final l$commoditySourceTypeId = json['commoditySourceTypeId'];
    final l$enablePartyWasteStream = json['enablePartyWasteStream'];
    final l$commoditySourceType = json['commoditySourceType'];
    final l$$__typename = json['__typename'];
    return Fragment$EwcControlFragment(
      enabled: (l$enabled as bool),
      commoditySourceTypeId: (l$commoditySourceTypeId as String?),
      enablePartyWasteStream: (l$enablePartyWasteStream as bool),
      commoditySourceType: l$commoditySourceType == null
          ? null
          : Fragment$CommoditySourceTypesFragment.fromJson(
              (l$commoditySourceType as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final String? commoditySourceTypeId;

  final bool enablePartyWasteStream;

  final Fragment$CommoditySourceTypesFragment? commoditySourceType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$commoditySourceTypeId = commoditySourceTypeId;
    _resultData['commoditySourceTypeId'] = l$commoditySourceTypeId;
    final l$enablePartyWasteStream = enablePartyWasteStream;
    _resultData['enablePartyWasteStream'] = l$enablePartyWasteStream;
    final l$commoditySourceType = commoditySourceType;
    _resultData['commoditySourceType'] = l$commoditySourceType?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$commoditySourceTypeId = commoditySourceTypeId;
    final l$enablePartyWasteStream = enablePartyWasteStream;
    final l$commoditySourceType = commoditySourceType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$enabled,
      l$commoditySourceTypeId,
      l$enablePartyWasteStream,
      l$commoditySourceType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$EwcControlFragment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$commoditySourceTypeId = commoditySourceTypeId;
    final lOther$commoditySourceTypeId = other.commoditySourceTypeId;
    if (l$commoditySourceTypeId != lOther$commoditySourceTypeId) {
      return false;
    }
    final l$enablePartyWasteStream = enablePartyWasteStream;
    final lOther$enablePartyWasteStream = other.enablePartyWasteStream;
    if (l$enablePartyWasteStream != lOther$enablePartyWasteStream) {
      return false;
    }
    final l$commoditySourceType = commoditySourceType;
    final lOther$commoditySourceType = other.commoditySourceType;
    if (l$commoditySourceType != lOther$commoditySourceType) {
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

extension UtilityExtension$Fragment$EwcControlFragment
    on Fragment$EwcControlFragment {
  CopyWith$Fragment$EwcControlFragment<Fragment$EwcControlFragment>
  get copyWith => CopyWith$Fragment$EwcControlFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$EwcControlFragment<TRes> {
  factory CopyWith$Fragment$EwcControlFragment(
    Fragment$EwcControlFragment instance,
    TRes Function(Fragment$EwcControlFragment) then,
  ) = _CopyWithImpl$Fragment$EwcControlFragment;

  factory CopyWith$Fragment$EwcControlFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$EwcControlFragment;

  TRes call({
    bool? enabled,
    String? commoditySourceTypeId,
    bool? enablePartyWasteStream,
    Fragment$CommoditySourceTypesFragment? commoditySourceType,
    String? $__typename,
  });
  CopyWith$Fragment$CommoditySourceTypesFragment<TRes> get commoditySourceType;
}

class _CopyWithImpl$Fragment$EwcControlFragment<TRes>
    implements CopyWith$Fragment$EwcControlFragment<TRes> {
  _CopyWithImpl$Fragment$EwcControlFragment(this._instance, this._then);

  final Fragment$EwcControlFragment _instance;

  final TRes Function(Fragment$EwcControlFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? commoditySourceTypeId = _undefined,
    Object? enablePartyWasteStream = _undefined,
    Object? commoditySourceType = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$EwcControlFragment(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      commoditySourceTypeId: commoditySourceTypeId == _undefined
          ? _instance.commoditySourceTypeId
          : (commoditySourceTypeId as String?),
      enablePartyWasteStream:
          enablePartyWasteStream == _undefined || enablePartyWasteStream == null
          ? _instance.enablePartyWasteStream
          : (enablePartyWasteStream as bool),
      commoditySourceType: commoditySourceType == _undefined
          ? _instance.commoditySourceType
          : (commoditySourceType as Fragment$CommoditySourceTypesFragment?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$CommoditySourceTypesFragment<TRes> get commoditySourceType {
    final local$commoditySourceType = _instance.commoditySourceType;
    return local$commoditySourceType == null
        ? CopyWith$Fragment$CommoditySourceTypesFragment.stub(_then(_instance))
        : CopyWith$Fragment$CommoditySourceTypesFragment(
            local$commoditySourceType,
            (e) => call(commoditySourceType: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$EwcControlFragment<TRes>
    implements CopyWith$Fragment$EwcControlFragment<TRes> {
  _CopyWithStubImpl$Fragment$EwcControlFragment(this._res);

  TRes _res;

  call({
    bool? enabled,
    String? commoditySourceTypeId,
    bool? enablePartyWasteStream,
    Fragment$CommoditySourceTypesFragment? commoditySourceType,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$CommoditySourceTypesFragment<TRes>
  get commoditySourceType =>
      CopyWith$Fragment$CommoditySourceTypesFragment.stub(_res);
}

const fragmentDefinitionEwcControlFragment = FragmentDefinitionNode(
  name: NameNode(value: 'EwcControlFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'EwcControl'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'enabled'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'commoditySourceTypeId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'enablePartyWasteStream'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'commoditySourceType'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'CommoditySourceTypesFragment'),
              directives: [],
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
const documentNodeFragmentEwcControlFragment = DocumentNode(
  definitions: [
    fragmentDefinitionEwcControlFragment,
    fragmentDefinitionCommoditySourceTypesFragment,
  ],
);
