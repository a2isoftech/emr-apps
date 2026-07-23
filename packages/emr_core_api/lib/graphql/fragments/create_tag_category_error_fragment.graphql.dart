import 'package:gql/ast.dart';

class Fragment$CreateTagCategoryError {
  Fragment$CreateTagCategoryError({
    required this.message,
    this.$__typename = 'CreateTagCategoryError',
  });

  factory Fragment$CreateTagCategoryError.fromJson(Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Fragment$CreateTagCategoryError(
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
    if (other is! Fragment$CreateTagCategoryError ||
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

extension UtilityExtension$Fragment$CreateTagCategoryError
    on Fragment$CreateTagCategoryError {
  CopyWith$Fragment$CreateTagCategoryError<Fragment$CreateTagCategoryError>
  get copyWith => CopyWith$Fragment$CreateTagCategoryError(this, (i) => i);
}

abstract class CopyWith$Fragment$CreateTagCategoryError<TRes> {
  factory CopyWith$Fragment$CreateTagCategoryError(
    Fragment$CreateTagCategoryError instance,
    TRes Function(Fragment$CreateTagCategoryError) then,
  ) = _CopyWithImpl$Fragment$CreateTagCategoryError;

  factory CopyWith$Fragment$CreateTagCategoryError.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CreateTagCategoryError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Fragment$CreateTagCategoryError<TRes>
    implements CopyWith$Fragment$CreateTagCategoryError<TRes> {
  _CopyWithImpl$Fragment$CreateTagCategoryError(this._instance, this._then);

  final Fragment$CreateTagCategoryError _instance;

  final TRes Function(Fragment$CreateTagCategoryError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$CreateTagCategoryError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$CreateTagCategoryError<TRes>
    implements CopyWith$Fragment$CreateTagCategoryError<TRes> {
  _CopyWithStubImpl$Fragment$CreateTagCategoryError(this._res);

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

const fragmentDefinitionCreateTagCategoryError = FragmentDefinitionNode(
  name: NameNode(value: 'CreateTagCategoryError'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'CreateTagCategoryError'),
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
const documentNodeFragmentCreateTagCategoryError = DocumentNode(
  definitions: [fragmentDefinitionCreateTagCategoryError],
);
