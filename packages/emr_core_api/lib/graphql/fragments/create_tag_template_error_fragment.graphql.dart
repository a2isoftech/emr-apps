import 'package:gql/ast.dart';

class Fragment$CreateTagTemplateError {
  Fragment$CreateTagTemplateError({
    required this.message,
    this.$__typename = 'CreateTagTemplateError',
  });

  factory Fragment$CreateTagTemplateError.fromJson(Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Fragment$CreateTagTemplateError(
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
    if (other is! Fragment$CreateTagTemplateError ||
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

extension UtilityExtension$Fragment$CreateTagTemplateError
    on Fragment$CreateTagTemplateError {
  CopyWith$Fragment$CreateTagTemplateError<Fragment$CreateTagTemplateError>
  get copyWith => CopyWith$Fragment$CreateTagTemplateError(this, (i) => i);
}

abstract class CopyWith$Fragment$CreateTagTemplateError<TRes> {
  factory CopyWith$Fragment$CreateTagTemplateError(
    Fragment$CreateTagTemplateError instance,
    TRes Function(Fragment$CreateTagTemplateError) then,
  ) = _CopyWithImpl$Fragment$CreateTagTemplateError;

  factory CopyWith$Fragment$CreateTagTemplateError.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CreateTagTemplateError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Fragment$CreateTagTemplateError<TRes>
    implements CopyWith$Fragment$CreateTagTemplateError<TRes> {
  _CopyWithImpl$Fragment$CreateTagTemplateError(this._instance, this._then);

  final Fragment$CreateTagTemplateError _instance;

  final TRes Function(Fragment$CreateTagTemplateError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$CreateTagTemplateError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$CreateTagTemplateError<TRes>
    implements CopyWith$Fragment$CreateTagTemplateError<TRes> {
  _CopyWithStubImpl$Fragment$CreateTagTemplateError(this._res);

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

const fragmentDefinitionCreateTagTemplateError = FragmentDefinitionNode(
  name: NameNode(value: 'CreateTagTemplateError'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'CreateTagTemplateError'),
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
const documentNodeFragmentCreateTagTemplateError = DocumentNode(
  definitions: [fragmentDefinitionCreateTagTemplateError],
);
