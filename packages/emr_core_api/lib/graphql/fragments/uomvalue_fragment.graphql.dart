import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$UomValueFragment {
  Fragment$UomValueFragment({
    required this.uom,
    required this.value,
    required this.isRate,
    required this.id,
    required this.mtValue,
    this.$__typename = 'UomValue',
  });

  factory Fragment$UomValueFragment.fromJson(Map<String, dynamic> json) {
    final l$uom = json['uom'];
    final l$value = json['value'];
    final l$isRate = json['isRate'];
    final l$id = json['id'];
    final l$mtValue = json['mtValue'];
    final l$$__typename = json['__typename'];
    return Fragment$UomValueFragment(
      uom: fromJson$Enum$Uom((l$uom as String)),
      value: (l$value as num).toDouble(),
      isRate: (l$isRate as bool),
      id: (l$id as int),
      mtValue: (l$mtValue as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$Uom uom;

  final double value;

  final bool isRate;

  final int id;

  final double mtValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom = uom;
    _resultData['uom'] = toJson$Enum$Uom(l$uom);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$isRate = isRate;
    _resultData['isRate'] = l$isRate;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$mtValue = mtValue;
    _resultData['mtValue'] = l$mtValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom = uom;
    final l$value = value;
    final l$isRate = isRate;
    final l$id = id;
    final l$mtValue = mtValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom,
      l$value,
      l$isRate,
      l$id,
      l$mtValue,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UomValueFragment ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$isRate = isRate;
    final lOther$isRate = other.isRate;
    if (l$isRate != lOther$isRate) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$mtValue = mtValue;
    final lOther$mtValue = other.mtValue;
    if (l$mtValue != lOther$mtValue) {
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

extension UtilityExtension$Fragment$UomValueFragment
    on Fragment$UomValueFragment {
  CopyWith$Fragment$UomValueFragment<Fragment$UomValueFragment> get copyWith =>
      CopyWith$Fragment$UomValueFragment(this, (i) => i);
}

abstract class CopyWith$Fragment$UomValueFragment<TRes> {
  factory CopyWith$Fragment$UomValueFragment(
    Fragment$UomValueFragment instance,
    TRes Function(Fragment$UomValueFragment) then,
  ) = _CopyWithImpl$Fragment$UomValueFragment;

  factory CopyWith$Fragment$UomValueFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UomValueFragment;

  TRes call({
    Enum$Uom? uom,
    double? value,
    bool? isRate,
    int? id,
    double? mtValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UomValueFragment<TRes>
    implements CopyWith$Fragment$UomValueFragment<TRes> {
  _CopyWithImpl$Fragment$UomValueFragment(this._instance, this._then);

  final Fragment$UomValueFragment _instance;

  final TRes Function(Fragment$UomValueFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom = _undefined,
    Object? value = _undefined,
    Object? isRate = _undefined,
    Object? id = _undefined,
    Object? mtValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$UomValueFragment(
      uom: uom == _undefined || uom == null ? _instance.uom : (uom as Enum$Uom),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as double),
      isRate: isRate == _undefined || isRate == null
          ? _instance.isRate
          : (isRate as bool),
      id: id == _undefined || id == null ? _instance.id : (id as int),
      mtValue: mtValue == _undefined || mtValue == null
          ? _instance.mtValue
          : (mtValue as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$UomValueFragment<TRes>
    implements CopyWith$Fragment$UomValueFragment<TRes> {
  _CopyWithStubImpl$Fragment$UomValueFragment(this._res);

  TRes _res;

  call({
    Enum$Uom? uom,
    double? value,
    bool? isRate,
    int? id,
    double? mtValue,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionUomValueFragment = FragmentDefinitionNode(
  name: NameNode(value: 'UomValueFragment'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'UomValue'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'uom'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'value'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'isRate'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'mtValue'),
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
const documentNodeFragmentUomValueFragment = DocumentNode(
  definitions: [fragmentDefinitionUomValueFragment],
);
