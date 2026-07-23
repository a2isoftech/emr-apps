import 'package:gql/ast.dart';

class Fragment$RemoveTagError {
  Fragment$RemoveTagError({
    required this.message,
    this.$__typename = 'RemoveTagError',
  });

  factory Fragment$RemoveTagError.fromJson(Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Fragment$RemoveTagError(
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
    if (other is! Fragment$RemoveTagError || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$RemoveTagError on Fragment$RemoveTagError {
  CopyWith$Fragment$RemoveTagError<Fragment$RemoveTagError> get copyWith =>
      CopyWith$Fragment$RemoveTagError(this, (i) => i);
}

abstract class CopyWith$Fragment$RemoveTagError<TRes> {
  factory CopyWith$Fragment$RemoveTagError(
    Fragment$RemoveTagError instance,
    TRes Function(Fragment$RemoveTagError) then,
  ) = _CopyWithImpl$Fragment$RemoveTagError;

  factory CopyWith$Fragment$RemoveTagError.stub(TRes res) =
      _CopyWithStubImpl$Fragment$RemoveTagError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Fragment$RemoveTagError<TRes>
    implements CopyWith$Fragment$RemoveTagError<TRes> {
  _CopyWithImpl$Fragment$RemoveTagError(this._instance, this._then);

  final Fragment$RemoveTagError _instance;

  final TRes Function(Fragment$RemoveTagError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$RemoveTagError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$RemoveTagError<TRes>
    implements CopyWith$Fragment$RemoveTagError<TRes> {
  _CopyWithStubImpl$Fragment$RemoveTagError(this._res);

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

const fragmentDefinitionRemoveTagError = FragmentDefinitionNode(
  name: NameNode(value: 'RemoveTagError'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'RemoveTagError'),
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
const documentNodeFragmentRemoveTagError = DocumentNode(
  definitions: [fragmentDefinitionRemoveTagError],
);
