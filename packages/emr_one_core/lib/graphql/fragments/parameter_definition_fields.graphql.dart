import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$DirectQueryParameterFields {
  Fragment$DirectQueryParameterFields({
    required this.name,
    required this.parameterType,
    this.defaultValue,
    this.$__typename = 'DirectQueryParameter',
  });

  factory Fragment$DirectQueryParameterFields.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$parameterType = json['parameterType'];
    final l$defaultValue = json['defaultValue'];
    final l$$__typename = json['__typename'];
    return Fragment$DirectQueryParameterFields(
      name: (l$name as String),
      parameterType:
          fromJson$Enum$DirectQueryParameterType((l$parameterType as String)),
      defaultValue: (l$defaultValue as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final Enum$DirectQueryParameterType parameterType;

  final String? defaultValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$parameterType = parameterType;
    _resultData['parameterType'] =
        toJson$Enum$DirectQueryParameterType(l$parameterType);
    final l$defaultValue = defaultValue;
    _resultData['defaultValue'] = l$defaultValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$parameterType = parameterType;
    final l$defaultValue = defaultValue;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$parameterType,
      l$defaultValue,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$DirectQueryParameterFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$parameterType = parameterType;
    final lOther$parameterType = other.parameterType;
    if (l$parameterType != lOther$parameterType) {
      return false;
    }
    final l$defaultValue = defaultValue;
    final lOther$defaultValue = other.defaultValue;
    if (l$defaultValue != lOther$defaultValue) {
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

extension UtilityExtension$Fragment$DirectQueryParameterFields
    on Fragment$DirectQueryParameterFields {
  CopyWith$Fragment$DirectQueryParameterFields<
          Fragment$DirectQueryParameterFields>
      get copyWith => CopyWith$Fragment$DirectQueryParameterFields(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$DirectQueryParameterFields<TRes> {
  factory CopyWith$Fragment$DirectQueryParameterFields(
    Fragment$DirectQueryParameterFields instance,
    TRes Function(Fragment$DirectQueryParameterFields) then,
  ) = _CopyWithImpl$Fragment$DirectQueryParameterFields;

  factory CopyWith$Fragment$DirectQueryParameterFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$DirectQueryParameterFields;

  TRes call({
    String? name,
    Enum$DirectQueryParameterType? parameterType,
    String? defaultValue,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$DirectQueryParameterFields<TRes>
    implements CopyWith$Fragment$DirectQueryParameterFields<TRes> {
  _CopyWithImpl$Fragment$DirectQueryParameterFields(
    this._instance,
    this._then,
  );

  final Fragment$DirectQueryParameterFields _instance;

  final TRes Function(Fragment$DirectQueryParameterFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? parameterType = _undefined,
    Object? defaultValue = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$DirectQueryParameterFields(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        parameterType: parameterType == _undefined || parameterType == null
            ? _instance.parameterType
            : (parameterType as Enum$DirectQueryParameterType),
        defaultValue: defaultValue == _undefined
            ? _instance.defaultValue
            : (defaultValue as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$DirectQueryParameterFields<TRes>
    implements CopyWith$Fragment$DirectQueryParameterFields<TRes> {
  _CopyWithStubImpl$Fragment$DirectQueryParameterFields(this._res);

  TRes _res;

  call({
    String? name,
    Enum$DirectQueryParameterType? parameterType,
    String? defaultValue,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionDirectQueryParameterFields = FragmentDefinitionNode(
  name: NameNode(value: 'DirectQueryParameterFields'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'DirectQueryParameter'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'parameterType'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'defaultValue'),
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
  ]),
);
const documentNodeFragmentDirectQueryParameterFields =
    DocumentNode(definitions: [
  fragmentDefinitionDirectQueryParameterFields,
]);
