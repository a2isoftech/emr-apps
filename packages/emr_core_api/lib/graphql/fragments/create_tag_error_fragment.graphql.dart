import 'package:gql/ast.dart';

class Fragment$CreateTagError {
  Fragment$CreateTagError({
    required this.message,
    this.$__typename = 'CreateTagError',
  });

  factory Fragment$CreateTagError.fromJson(Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Fragment$CreateTagError(
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
    if (other is! Fragment$CreateTagError || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$CreateTagError on Fragment$CreateTagError {
  CopyWith$Fragment$CreateTagError<Fragment$CreateTagError> get copyWith =>
      CopyWith$Fragment$CreateTagError(this, (i) => i);
}

abstract class CopyWith$Fragment$CreateTagError<TRes> {
  factory CopyWith$Fragment$CreateTagError(
    Fragment$CreateTagError instance,
    TRes Function(Fragment$CreateTagError) then,
  ) = _CopyWithImpl$Fragment$CreateTagError;

  factory CopyWith$Fragment$CreateTagError.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CreateTagError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Fragment$CreateTagError<TRes>
    implements CopyWith$Fragment$CreateTagError<TRes> {
  _CopyWithImpl$Fragment$CreateTagError(this._instance, this._then);

  final Fragment$CreateTagError _instance;

  final TRes Function(Fragment$CreateTagError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$CreateTagError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$CreateTagError<TRes>
    implements CopyWith$Fragment$CreateTagError<TRes> {
  _CopyWithStubImpl$Fragment$CreateTagError(this._res);

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

const fragmentDefinitionCreateTagError = FragmentDefinitionNode(
  name: NameNode(value: 'CreateTagError'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'CreateTagError'),
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
const documentNodeFragmentCreateTagError = DocumentNode(
  definitions: [fragmentDefinitionCreateTagError],
);
