import 'package:gql/ast.dart';

class Fragment$RemoveTagSuccess {
  Fragment$RemoveTagSuccess({
    required this.message,
    this.$__typename = 'RemoveTagSuccess',
  });

  factory Fragment$RemoveTagSuccess.fromJson(Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Fragment$RemoveTagSuccess(
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
    if (other is! Fragment$RemoveTagSuccess ||
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

extension UtilityExtension$Fragment$RemoveTagSuccess
    on Fragment$RemoveTagSuccess {
  CopyWith$Fragment$RemoveTagSuccess<Fragment$RemoveTagSuccess> get copyWith =>
      CopyWith$Fragment$RemoveTagSuccess(this, (i) => i);
}

abstract class CopyWith$Fragment$RemoveTagSuccess<TRes> {
  factory CopyWith$Fragment$RemoveTagSuccess(
    Fragment$RemoveTagSuccess instance,
    TRes Function(Fragment$RemoveTagSuccess) then,
  ) = _CopyWithImpl$Fragment$RemoveTagSuccess;

  factory CopyWith$Fragment$RemoveTagSuccess.stub(TRes res) =
      _CopyWithStubImpl$Fragment$RemoveTagSuccess;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Fragment$RemoveTagSuccess<TRes>
    implements CopyWith$Fragment$RemoveTagSuccess<TRes> {
  _CopyWithImpl$Fragment$RemoveTagSuccess(this._instance, this._then);

  final Fragment$RemoveTagSuccess _instance;

  final TRes Function(Fragment$RemoveTagSuccess) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$RemoveTagSuccess(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$RemoveTagSuccess<TRes>
    implements CopyWith$Fragment$RemoveTagSuccess<TRes> {
  _CopyWithStubImpl$Fragment$RemoveTagSuccess(this._res);

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

const fragmentDefinitionRemoveTagSuccess = FragmentDefinitionNode(
  name: NameNode(value: 'RemoveTagSuccess'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'RemoveTagSuccess'),
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
const documentNodeFragmentRemoveTagSuccess = DocumentNode(
  definitions: [fragmentDefinitionRemoveTagSuccess],
);
