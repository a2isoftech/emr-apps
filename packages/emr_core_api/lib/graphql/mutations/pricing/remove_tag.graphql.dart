import '../../fragments/remove_tag_error_fragment.graphql.dart';
import '../../fragments/remove_tag_success_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$RemoveTag {
  factory Variables$Mutation$RemoveTag({required Input$RemoveTagInput input}) =>
      Variables$Mutation$RemoveTag._({r'input': input});

  Variables$Mutation$RemoveTag._(this._$data);

  factory Variables$Mutation$RemoveTag.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$RemoveTagInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$RemoveTag._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$RemoveTagInput get input => (_$data['input'] as Input$RemoveTagInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$RemoveTag<Variables$Mutation$RemoveTag>
  get copyWith => CopyWith$Variables$Mutation$RemoveTag(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$RemoveTag ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$RemoveTag<TRes> {
  factory CopyWith$Variables$Mutation$RemoveTag(
    Variables$Mutation$RemoveTag instance,
    TRes Function(Variables$Mutation$RemoveTag) then,
  ) = _CopyWithImpl$Variables$Mutation$RemoveTag;

  factory CopyWith$Variables$Mutation$RemoveTag.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RemoveTag;

  TRes call({Input$RemoveTagInput? input});
}

class _CopyWithImpl$Variables$Mutation$RemoveTag<TRes>
    implements CopyWith$Variables$Mutation$RemoveTag<TRes> {
  _CopyWithImpl$Variables$Mutation$RemoveTag(this._instance, this._then);

  final Variables$Mutation$RemoveTag _instance;

  final TRes Function(Variables$Mutation$RemoveTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$RemoveTag._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$RemoveTagInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$RemoveTag<TRes>
    implements CopyWith$Variables$Mutation$RemoveTag<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RemoveTag(this._res);

  TRes _res;

  call({Input$RemoveTagInput? input}) => _res;
}

class Mutation$RemoveTag {
  Mutation$RemoveTag({this.removeTag, this.$__typename = 'Mutation'});

  factory Mutation$RemoveTag.fromJson(Map<String, dynamic> json) {
    final l$removeTag = json['removeTag'];
    final l$$__typename = json['__typename'];
    return Mutation$RemoveTag(
      removeTag: l$removeTag == null
          ? null
          : Mutation$RemoveTag$removeTag.fromJson(
              (l$removeTag as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RemoveTag$removeTag? removeTag;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$removeTag = removeTag;
    _resultData['removeTag'] = l$removeTag?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$removeTag = removeTag;
    final l$$__typename = $__typename;
    return Object.hashAll([l$removeTag, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RemoveTag || runtimeType != other.runtimeType) {
      return false;
    }
    final l$removeTag = removeTag;
    final lOther$removeTag = other.removeTag;
    if (l$removeTag != lOther$removeTag) {
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

extension UtilityExtension$Mutation$RemoveTag on Mutation$RemoveTag {
  CopyWith$Mutation$RemoveTag<Mutation$RemoveTag> get copyWith =>
      CopyWith$Mutation$RemoveTag(this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveTag<TRes> {
  factory CopyWith$Mutation$RemoveTag(
    Mutation$RemoveTag instance,
    TRes Function(Mutation$RemoveTag) then,
  ) = _CopyWithImpl$Mutation$RemoveTag;

  factory CopyWith$Mutation$RemoveTag.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RemoveTag;

  TRes call({Mutation$RemoveTag$removeTag? removeTag, String? $__typename});
  CopyWith$Mutation$RemoveTag$removeTag<TRes> get removeTag;
}

class _CopyWithImpl$Mutation$RemoveTag<TRes>
    implements CopyWith$Mutation$RemoveTag<TRes> {
  _CopyWithImpl$Mutation$RemoveTag(this._instance, this._then);

  final Mutation$RemoveTag _instance;

  final TRes Function(Mutation$RemoveTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? removeTag = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$RemoveTag(
      removeTag: removeTag == _undefined
          ? _instance.removeTag
          : (removeTag as Mutation$RemoveTag$removeTag?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$RemoveTag$removeTag<TRes> get removeTag {
    final local$removeTag = _instance.removeTag;
    return local$removeTag == null
        ? CopyWith$Mutation$RemoveTag$removeTag.stub(_then(_instance))
        : CopyWith$Mutation$RemoveTag$removeTag(
            local$removeTag,
            (e) => call(removeTag: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$RemoveTag<TRes>
    implements CopyWith$Mutation$RemoveTag<TRes> {
  _CopyWithStubImpl$Mutation$RemoveTag(this._res);

  TRes _res;

  call({Mutation$RemoveTag$removeTag? removeTag, String? $__typename}) => _res;

  CopyWith$Mutation$RemoveTag$removeTag<TRes> get removeTag =>
      CopyWith$Mutation$RemoveTag$removeTag.stub(_res);
}

const documentNodeMutationRemoveTag = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'RemoveTag'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'RemoveTagInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'removeTag'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'RemoveTagSuccess'),
                  directives: [],
                ),
                FragmentSpreadNode(
                  name: NameNode(value: 'RemoveTagError'),
                  directives: [],
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
    ),
    fragmentDefinitionRemoveTagSuccess,
    fragmentDefinitionRemoveTagError,
  ],
);

class Mutation$RemoveTag$removeTag {
  Mutation$RemoveTag$removeTag({required this.$__typename});

  factory Mutation$RemoveTag$removeTag.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "RemoveTagSuccess":
        return Mutation$RemoveTag$removeTag$$RemoveTagSuccess.fromJson(json);

      case "RemoveTagError":
        return Mutation$RemoveTag$removeTag$$RemoveTagError.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$RemoveTag$removeTag(
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RemoveTag$removeTag ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$RemoveTag$removeTag
    on Mutation$RemoveTag$removeTag {
  CopyWith$Mutation$RemoveTag$removeTag<Mutation$RemoveTag$removeTag>
  get copyWith => CopyWith$Mutation$RemoveTag$removeTag(this, (i) => i);

  _T when<_T>({
    required _T Function(Mutation$RemoveTag$removeTag$$RemoveTagSuccess)
    removeTagSuccess,
    required _T Function(Mutation$RemoveTag$removeTag$$RemoveTagError)
    removeTagError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "RemoveTagSuccess":
        return removeTagSuccess(
          this as Mutation$RemoveTag$removeTag$$RemoveTagSuccess,
        );

      case "RemoveTagError":
        return removeTagError(
          this as Mutation$RemoveTag$removeTag$$RemoveTagError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$RemoveTag$removeTag$$RemoveTagSuccess)?
    removeTagSuccess,
    _T Function(Mutation$RemoveTag$removeTag$$RemoveTagError)? removeTagError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "RemoveTagSuccess":
        if (removeTagSuccess != null) {
          return removeTagSuccess(
            this as Mutation$RemoveTag$removeTag$$RemoveTagSuccess,
          );
        } else {
          return orElse();
        }

      case "RemoveTagError":
        if (removeTagError != null) {
          return removeTagError(
            this as Mutation$RemoveTag$removeTag$$RemoveTagError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$RemoveTag$removeTag<TRes> {
  factory CopyWith$Mutation$RemoveTag$removeTag(
    Mutation$RemoveTag$removeTag instance,
    TRes Function(Mutation$RemoveTag$removeTag) then,
  ) = _CopyWithImpl$Mutation$RemoveTag$removeTag;

  factory CopyWith$Mutation$RemoveTag$removeTag.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RemoveTag$removeTag;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$RemoveTag$removeTag<TRes>
    implements CopyWith$Mutation$RemoveTag$removeTag<TRes> {
  _CopyWithImpl$Mutation$RemoveTag$removeTag(this._instance, this._then);

  final Mutation$RemoveTag$removeTag _instance;

  final TRes Function(Mutation$RemoveTag$removeTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$RemoveTag$removeTag(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$RemoveTag$removeTag<TRes>
    implements CopyWith$Mutation$RemoveTag$removeTag<TRes> {
  _CopyWithStubImpl$Mutation$RemoveTag$removeTag(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$RemoveTag$removeTag$$RemoveTagSuccess
    implements Fragment$RemoveTagSuccess, Mutation$RemoveTag$removeTag {
  Mutation$RemoveTag$removeTag$$RemoveTagSuccess({
    required this.message,
    this.$__typename = 'RemoveTagSuccess',
  });

  factory Mutation$RemoveTag$removeTag$$RemoveTagSuccess.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$RemoveTag$removeTag$$RemoveTagSuccess(
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
    if (other is! Mutation$RemoveTag$removeTag$$RemoveTagSuccess ||
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

extension UtilityExtension$Mutation$RemoveTag$removeTag$$RemoveTagSuccess
    on Mutation$RemoveTag$removeTag$$RemoveTagSuccess {
  CopyWith$Mutation$RemoveTag$removeTag$$RemoveTagSuccess<
    Mutation$RemoveTag$removeTag$$RemoveTagSuccess
  >
  get copyWith =>
      CopyWith$Mutation$RemoveTag$removeTag$$RemoveTagSuccess(this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveTag$removeTag$$RemoveTagSuccess<TRes> {
  factory CopyWith$Mutation$RemoveTag$removeTag$$RemoveTagSuccess(
    Mutation$RemoveTag$removeTag$$RemoveTagSuccess instance,
    TRes Function(Mutation$RemoveTag$removeTag$$RemoveTagSuccess) then,
  ) = _CopyWithImpl$Mutation$RemoveTag$removeTag$$RemoveTagSuccess;

  factory CopyWith$Mutation$RemoveTag$removeTag$$RemoveTagSuccess.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$RemoveTag$removeTag$$RemoveTagSuccess;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$RemoveTag$removeTag$$RemoveTagSuccess<TRes>
    implements CopyWith$Mutation$RemoveTag$removeTag$$RemoveTagSuccess<TRes> {
  _CopyWithImpl$Mutation$RemoveTag$removeTag$$RemoveTagSuccess(
    this._instance,
    this._then,
  );

  final Mutation$RemoveTag$removeTag$$RemoveTagSuccess _instance;

  final TRes Function(Mutation$RemoveTag$removeTag$$RemoveTagSuccess) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$RemoveTag$removeTag$$RemoveTagSuccess(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$RemoveTag$removeTag$$RemoveTagSuccess<TRes>
    implements CopyWith$Mutation$RemoveTag$removeTag$$RemoveTagSuccess<TRes> {
  _CopyWithStubImpl$Mutation$RemoveTag$removeTag$$RemoveTagSuccess(this._res);

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Mutation$RemoveTag$removeTag$$RemoveTagError
    implements Fragment$RemoveTagError, Mutation$RemoveTag$removeTag {
  Mutation$RemoveTag$removeTag$$RemoveTagError({
    required this.message,
    this.$__typename = 'RemoveTagError',
  });

  factory Mutation$RemoveTag$removeTag$$RemoveTagError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$RemoveTag$removeTag$$RemoveTagError(
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
    if (other is! Mutation$RemoveTag$removeTag$$RemoveTagError ||
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

extension UtilityExtension$Mutation$RemoveTag$removeTag$$RemoveTagError
    on Mutation$RemoveTag$removeTag$$RemoveTagError {
  CopyWith$Mutation$RemoveTag$removeTag$$RemoveTagError<
    Mutation$RemoveTag$removeTag$$RemoveTagError
  >
  get copyWith =>
      CopyWith$Mutation$RemoveTag$removeTag$$RemoveTagError(this, (i) => i);
}

abstract class CopyWith$Mutation$RemoveTag$removeTag$$RemoveTagError<TRes> {
  factory CopyWith$Mutation$RemoveTag$removeTag$$RemoveTagError(
    Mutation$RemoveTag$removeTag$$RemoveTagError instance,
    TRes Function(Mutation$RemoveTag$removeTag$$RemoveTagError) then,
  ) = _CopyWithImpl$Mutation$RemoveTag$removeTag$$RemoveTagError;

  factory CopyWith$Mutation$RemoveTag$removeTag$$RemoveTagError.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RemoveTag$removeTag$$RemoveTagError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$RemoveTag$removeTag$$RemoveTagError<TRes>
    implements CopyWith$Mutation$RemoveTag$removeTag$$RemoveTagError<TRes> {
  _CopyWithImpl$Mutation$RemoveTag$removeTag$$RemoveTagError(
    this._instance,
    this._then,
  );

  final Mutation$RemoveTag$removeTag$$RemoveTagError _instance;

  final TRes Function(Mutation$RemoveTag$removeTag$$RemoveTagError) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$RemoveTag$removeTag$$RemoveTagError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$RemoveTag$removeTag$$RemoveTagError<TRes>
    implements CopyWith$Mutation$RemoveTag$removeTag$$RemoveTagError<TRes> {
  _CopyWithStubImpl$Mutation$RemoveTag$removeTag$$RemoveTagError(this._res);

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
