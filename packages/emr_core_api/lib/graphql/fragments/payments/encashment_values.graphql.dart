import 'package:gql/ast.dart';

class Fragment$EncashmentValueFields {
  Fragment$EncashmentValueFields({
    required this.encashValue,
    required this.commissionValue,
    required this.baseCommissionValue,
    required this.roundingAdjustment,
    this.$__typename = 'EncashmentValues',
  });

  factory Fragment$EncashmentValueFields.fromJson(Map<String, dynamic> json) {
    final l$encashValue = json['encashValue'];
    final l$commissionValue = json['commissionValue'];
    final l$baseCommissionValue = json['baseCommissionValue'];
    final l$roundingAdjustment = json['roundingAdjustment'];
    final l$$__typename = json['__typename'];
    return Fragment$EncashmentValueFields(
      encashValue: (l$encashValue as num).toDouble(),
      commissionValue: (l$commissionValue as num).toDouble(),
      baseCommissionValue: (l$baseCommissionValue as num).toDouble(),
      roundingAdjustment: (l$roundingAdjustment as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double encashValue;

  final double commissionValue;

  final double baseCommissionValue;

  final double roundingAdjustment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$encashValue = encashValue;
    _resultData['encashValue'] = l$encashValue;
    final l$commissionValue = commissionValue;
    _resultData['commissionValue'] = l$commissionValue;
    final l$baseCommissionValue = baseCommissionValue;
    _resultData['baseCommissionValue'] = l$baseCommissionValue;
    final l$roundingAdjustment = roundingAdjustment;
    _resultData['roundingAdjustment'] = l$roundingAdjustment;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$encashValue = encashValue;
    final l$commissionValue = commissionValue;
    final l$baseCommissionValue = baseCommissionValue;
    final l$roundingAdjustment = roundingAdjustment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$encashValue,
      l$commissionValue,
      l$baseCommissionValue,
      l$roundingAdjustment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$EncashmentValueFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$encashValue = encashValue;
    final lOther$encashValue = other.encashValue;
    if (l$encashValue != lOther$encashValue) {
      return false;
    }
    final l$commissionValue = commissionValue;
    final lOther$commissionValue = other.commissionValue;
    if (l$commissionValue != lOther$commissionValue) {
      return false;
    }
    final l$baseCommissionValue = baseCommissionValue;
    final lOther$baseCommissionValue = other.baseCommissionValue;
    if (l$baseCommissionValue != lOther$baseCommissionValue) {
      return false;
    }
    final l$roundingAdjustment = roundingAdjustment;
    final lOther$roundingAdjustment = other.roundingAdjustment;
    if (l$roundingAdjustment != lOther$roundingAdjustment) {
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

extension UtilityExtension$Fragment$EncashmentValueFields
    on Fragment$EncashmentValueFields {
  CopyWith$Fragment$EncashmentValueFields<Fragment$EncashmentValueFields>
  get copyWith => CopyWith$Fragment$EncashmentValueFields(this, (i) => i);
}

abstract class CopyWith$Fragment$EncashmentValueFields<TRes> {
  factory CopyWith$Fragment$EncashmentValueFields(
    Fragment$EncashmentValueFields instance,
    TRes Function(Fragment$EncashmentValueFields) then,
  ) = _CopyWithImpl$Fragment$EncashmentValueFields;

  factory CopyWith$Fragment$EncashmentValueFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$EncashmentValueFields;

  TRes call({
    double? encashValue,
    double? commissionValue,
    double? baseCommissionValue,
    double? roundingAdjustment,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$EncashmentValueFields<TRes>
    implements CopyWith$Fragment$EncashmentValueFields<TRes> {
  _CopyWithImpl$Fragment$EncashmentValueFields(this._instance, this._then);

  final Fragment$EncashmentValueFields _instance;

  final TRes Function(Fragment$EncashmentValueFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? encashValue = _undefined,
    Object? commissionValue = _undefined,
    Object? baseCommissionValue = _undefined,
    Object? roundingAdjustment = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$EncashmentValueFields(
      encashValue: encashValue == _undefined || encashValue == null
          ? _instance.encashValue
          : (encashValue as double),
      commissionValue: commissionValue == _undefined || commissionValue == null
          ? _instance.commissionValue
          : (commissionValue as double),
      baseCommissionValue:
          baseCommissionValue == _undefined || baseCommissionValue == null
          ? _instance.baseCommissionValue
          : (baseCommissionValue as double),
      roundingAdjustment:
          roundingAdjustment == _undefined || roundingAdjustment == null
          ? _instance.roundingAdjustment
          : (roundingAdjustment as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$EncashmentValueFields<TRes>
    implements CopyWith$Fragment$EncashmentValueFields<TRes> {
  _CopyWithStubImpl$Fragment$EncashmentValueFields(this._res);

  TRes _res;

  call({
    double? encashValue,
    double? commissionValue,
    double? baseCommissionValue,
    double? roundingAdjustment,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionEncashmentValueFields = FragmentDefinitionNode(
  name: NameNode(value: 'EncashmentValueFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'EncashmentValues'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'encashValue'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'commissionValue'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'baseCommissionValue'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'roundingAdjustment'),
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
const documentNodeFragmentEncashmentValueFields = DocumentNode(
  definitions: [fragmentDefinitionEncashmentValueFields],
);
