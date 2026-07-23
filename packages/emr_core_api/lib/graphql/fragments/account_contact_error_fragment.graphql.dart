import 'package:gql/ast.dart';

class Fragment$AccountContactError {
  Fragment$AccountContactError({
    required this.message,
    this.$__typename = 'AccountContactError',
  });

  factory Fragment$AccountContactError.fromJson(Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountContactError(
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
    if (other is! Fragment$AccountContactError ||
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

extension UtilityExtension$Fragment$AccountContactError
    on Fragment$AccountContactError {
  CopyWith$Fragment$AccountContactError<Fragment$AccountContactError>
  get copyWith => CopyWith$Fragment$AccountContactError(this, (i) => i);
}

abstract class CopyWith$Fragment$AccountContactError<TRes> {
  factory CopyWith$Fragment$AccountContactError(
    Fragment$AccountContactError instance,
    TRes Function(Fragment$AccountContactError) then,
  ) = _CopyWithImpl$Fragment$AccountContactError;

  factory CopyWith$Fragment$AccountContactError.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AccountContactError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Fragment$AccountContactError<TRes>
    implements CopyWith$Fragment$AccountContactError<TRes> {
  _CopyWithImpl$Fragment$AccountContactError(this._instance, this._then);

  final Fragment$AccountContactError _instance;

  final TRes Function(Fragment$AccountContactError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$AccountContactError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$AccountContactError<TRes>
    implements CopyWith$Fragment$AccountContactError<TRes> {
  _CopyWithStubImpl$Fragment$AccountContactError(this._res);

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

const fragmentDefinitionAccountContactError = FragmentDefinitionNode(
  name: NameNode(value: 'AccountContactError'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'AccountContactError'),
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
const documentNodeFragmentAccountContactError = DocumentNode(
  definitions: [fragmentDefinitionAccountContactError],
);
