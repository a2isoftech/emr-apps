import 'package:gql/ast.dart';

class Fragment$InspectionErrorFields {
  Fragment$InspectionErrorFields({
    required this.message,
    this.$__typename = 'ElvInspectionError',
  });

  factory Fragment$InspectionErrorFields.fromJson(Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Fragment$InspectionErrorFields(
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([l$message, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$InspectionErrorFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Fragment$InspectionErrorFields
    on Fragment$InspectionErrorFields {
  CopyWith$Fragment$InspectionErrorFields<Fragment$InspectionErrorFields>
  get copyWith => CopyWith$Fragment$InspectionErrorFields(this, (i) => i);
}

abstract class CopyWith$Fragment$InspectionErrorFields<TRes> {
  factory CopyWith$Fragment$InspectionErrorFields(
    Fragment$InspectionErrorFields instance,
    TRes Function(Fragment$InspectionErrorFields) then,
  ) = _CopyWithImpl$Fragment$InspectionErrorFields;

  factory CopyWith$Fragment$InspectionErrorFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$InspectionErrorFields;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Fragment$InspectionErrorFields<TRes>
    implements CopyWith$Fragment$InspectionErrorFields<TRes> {
  _CopyWithImpl$Fragment$InspectionErrorFields(this._instance, this._then);

  final Fragment$InspectionErrorFields _instance;

  final TRes Function(Fragment$InspectionErrorFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$InspectionErrorFields(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$InspectionErrorFields<TRes>
    implements CopyWith$Fragment$InspectionErrorFields<TRes> {
  _CopyWithStubImpl$Fragment$InspectionErrorFields(this._res);

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

const fragmentDefinitionInspectionErrorFields = FragmentDefinitionNode(
  name: NameNode(value: 'InspectionErrorFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'ElvInspectionError'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'message'),
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
const documentNodeFragmentInspectionErrorFields = DocumentNode(
  definitions: [fragmentDefinitionInspectionErrorFields],
);
