import 'package:gql/ast.dart';

class Fragment$UpdateTagEndDateError {
  Fragment$UpdateTagEndDateError({
    required this.message,
    this.$__typename = 'UpdateTagEndDateError',
  });

  factory Fragment$UpdateTagEndDateError.fromJson(Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Fragment$UpdateTagEndDateError(
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
    if (other is! Fragment$UpdateTagEndDateError ||
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

extension UtilityExtension$Fragment$UpdateTagEndDateError
    on Fragment$UpdateTagEndDateError {
  CopyWith$Fragment$UpdateTagEndDateError<Fragment$UpdateTagEndDateError>
  get copyWith => CopyWith$Fragment$UpdateTagEndDateError(this, (i) => i);
}

abstract class CopyWith$Fragment$UpdateTagEndDateError<TRes> {
  factory CopyWith$Fragment$UpdateTagEndDateError(
    Fragment$UpdateTagEndDateError instance,
    TRes Function(Fragment$UpdateTagEndDateError) then,
  ) = _CopyWithImpl$Fragment$UpdateTagEndDateError;

  factory CopyWith$Fragment$UpdateTagEndDateError.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UpdateTagEndDateError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Fragment$UpdateTagEndDateError<TRes>
    implements CopyWith$Fragment$UpdateTagEndDateError<TRes> {
  _CopyWithImpl$Fragment$UpdateTagEndDateError(this._instance, this._then);

  final Fragment$UpdateTagEndDateError _instance;

  final TRes Function(Fragment$UpdateTagEndDateError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$UpdateTagEndDateError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$UpdateTagEndDateError<TRes>
    implements CopyWith$Fragment$UpdateTagEndDateError<TRes> {
  _CopyWithStubImpl$Fragment$UpdateTagEndDateError(this._res);

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

const fragmentDefinitionUpdateTagEndDateError = FragmentDefinitionNode(
  name: NameNode(value: 'UpdateTagEndDateError'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'UpdateTagEndDateError'),
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
const documentNodeFragmentUpdateTagEndDateError = DocumentNode(
  definitions: [fragmentDefinitionUpdateTagEndDateError],
);
