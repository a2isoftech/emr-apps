import '../../fragments/tag_fragment.graphql.dart';
import '../../fragments/update_tag_end_date_error_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateTagEndDate {
  factory Variables$Mutation$UpdateTagEndDate({
    required Input$UpdateTagEndDateInput input,
  }) => Variables$Mutation$UpdateTagEndDate._({r'input': input});

  Variables$Mutation$UpdateTagEndDate._(this._$data);

  factory Variables$Mutation$UpdateTagEndDate.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateTagEndDateInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateTagEndDate._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateTagEndDateInput get input =>
      (_$data['input'] as Input$UpdateTagEndDateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateTagEndDate<
    Variables$Mutation$UpdateTagEndDate
  >
  get copyWith => CopyWith$Variables$Mutation$UpdateTagEndDate(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateTagEndDate ||
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

abstract class CopyWith$Variables$Mutation$UpdateTagEndDate<TRes> {
  factory CopyWith$Variables$Mutation$UpdateTagEndDate(
    Variables$Mutation$UpdateTagEndDate instance,
    TRes Function(Variables$Mutation$UpdateTagEndDate) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateTagEndDate;

  factory CopyWith$Variables$Mutation$UpdateTagEndDate.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateTagEndDate;

  TRes call({Input$UpdateTagEndDateInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateTagEndDate<TRes>
    implements CopyWith$Variables$Mutation$UpdateTagEndDate<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateTagEndDate(this._instance, this._then);

  final Variables$Mutation$UpdateTagEndDate _instance;

  final TRes Function(Variables$Mutation$UpdateTagEndDate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateTagEndDate._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UpdateTagEndDateInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateTagEndDate<TRes>
    implements CopyWith$Variables$Mutation$UpdateTagEndDate<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateTagEndDate(this._res);

  TRes _res;

  call({Input$UpdateTagEndDateInput? input}) => _res;
}

class Mutation$UpdateTagEndDate {
  Mutation$UpdateTagEndDate({
    this.updateTagEndDate,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateTagEndDate.fromJson(Map<String, dynamic> json) {
    final l$updateTagEndDate = json['updateTagEndDate'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateTagEndDate(
      updateTagEndDate: l$updateTagEndDate == null
          ? null
          : Mutation$UpdateTagEndDate$updateTagEndDate.fromJson(
              (l$updateTagEndDate as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateTagEndDate$updateTagEndDate? updateTagEndDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateTagEndDate = updateTagEndDate;
    _resultData['updateTagEndDate'] = l$updateTagEndDate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateTagEndDate = updateTagEndDate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateTagEndDate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateTagEndDate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateTagEndDate = updateTagEndDate;
    final lOther$updateTagEndDate = other.updateTagEndDate;
    if (l$updateTagEndDate != lOther$updateTagEndDate) {
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

extension UtilityExtension$Mutation$UpdateTagEndDate
    on Mutation$UpdateTagEndDate {
  CopyWith$Mutation$UpdateTagEndDate<Mutation$UpdateTagEndDate> get copyWith =>
      CopyWith$Mutation$UpdateTagEndDate(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateTagEndDate<TRes> {
  factory CopyWith$Mutation$UpdateTagEndDate(
    Mutation$UpdateTagEndDate instance,
    TRes Function(Mutation$UpdateTagEndDate) then,
  ) = _CopyWithImpl$Mutation$UpdateTagEndDate;

  factory CopyWith$Mutation$UpdateTagEndDate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateTagEndDate;

  TRes call({
    Mutation$UpdateTagEndDate$updateTagEndDate? updateTagEndDate,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate<TRes>
  get updateTagEndDate;
}

class _CopyWithImpl$Mutation$UpdateTagEndDate<TRes>
    implements CopyWith$Mutation$UpdateTagEndDate<TRes> {
  _CopyWithImpl$Mutation$UpdateTagEndDate(this._instance, this._then);

  final Mutation$UpdateTagEndDate _instance;

  final TRes Function(Mutation$UpdateTagEndDate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateTagEndDate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateTagEndDate(
      updateTagEndDate: updateTagEndDate == _undefined
          ? _instance.updateTagEndDate
          : (updateTagEndDate as Mutation$UpdateTagEndDate$updateTagEndDate?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate<TRes>
  get updateTagEndDate {
    final local$updateTagEndDate = _instance.updateTagEndDate;
    return local$updateTagEndDate == null
        ? CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate(
            local$updateTagEndDate,
            (e) => call(updateTagEndDate: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateTagEndDate<TRes>
    implements CopyWith$Mutation$UpdateTagEndDate<TRes> {
  _CopyWithStubImpl$Mutation$UpdateTagEndDate(this._res);

  TRes _res;

  call({
    Mutation$UpdateTagEndDate$updateTagEndDate? updateTagEndDate,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate<TRes>
  get updateTagEndDate =>
      CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate.stub(_res);
}

const documentNodeMutationUpdateTagEndDate = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateTagEndDate'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateTagEndDateInput'),
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
            name: NameNode(value: 'updateTagEndDate'),
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
                  name: NameNode(value: 'Tag'),
                  directives: [],
                ),
                FragmentSpreadNode(
                  name: NameNode(value: 'UpdateTagEndDateError'),
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
    fragmentDefinitionTag,
    fragmentDefinitionUpdateTagEndDateError,
  ],
);

class Mutation$UpdateTagEndDate$updateTagEndDate {
  Mutation$UpdateTagEndDate$updateTagEndDate({required this.$__typename});

  factory Mutation$UpdateTagEndDate$updateTagEndDate.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "Tag":
        return Mutation$UpdateTagEndDate$updateTagEndDate$$Tag.fromJson(json);

      case "UpdateTagEndDateError":
        return Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$UpdateTagEndDate$updateTagEndDate(
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
    if (other is! Mutation$UpdateTagEndDate$updateTagEndDate ||
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

extension UtilityExtension$Mutation$UpdateTagEndDate$updateTagEndDate
    on Mutation$UpdateTagEndDate$updateTagEndDate {
  CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate<
    Mutation$UpdateTagEndDate$updateTagEndDate
  >
  get copyWith =>
      CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate(this, (i) => i);

  _T when<_T>({
    required _T Function(Mutation$UpdateTagEndDate$updateTagEndDate$$Tag) tag,
    required _T Function(
      Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError,
    )
    updateTagEndDateError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Tag":
        return tag(this as Mutation$UpdateTagEndDate$updateTagEndDate$$Tag);

      case "UpdateTagEndDateError":
        return updateTagEndDateError(
          this
              as Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$UpdateTagEndDate$updateTagEndDate$$Tag)? tag,
    _T Function(
      Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError,
    )?
    updateTagEndDateError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "Tag":
        if (tag != null) {
          return tag(this as Mutation$UpdateTagEndDate$updateTagEndDate$$Tag);
        } else {
          return orElse();
        }

      case "UpdateTagEndDateError":
        if (updateTagEndDateError != null) {
          return updateTagEndDateError(
            this
                as Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate<TRes> {
  factory CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate(
    Mutation$UpdateTagEndDate$updateTagEndDate instance,
    TRes Function(Mutation$UpdateTagEndDate$updateTagEndDate) then,
  ) = _CopyWithImpl$Mutation$UpdateTagEndDate$updateTagEndDate;

  factory CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateTagEndDate$updateTagEndDate;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateTagEndDate$updateTagEndDate<TRes>
    implements CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate<TRes> {
  _CopyWithImpl$Mutation$UpdateTagEndDate$updateTagEndDate(
    this._instance,
    this._then,
  );

  final Mutation$UpdateTagEndDate$updateTagEndDate _instance;

  final TRes Function(Mutation$UpdateTagEndDate$updateTagEndDate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$UpdateTagEndDate$updateTagEndDate(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateTagEndDate$updateTagEndDate<TRes>
    implements CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate<TRes> {
  _CopyWithStubImpl$Mutation$UpdateTagEndDate$updateTagEndDate(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$UpdateTagEndDate$updateTagEndDate$$Tag
    implements Fragment$Tag, Mutation$UpdateTagEndDate$updateTagEndDate {
  Mutation$UpdateTagEndDate$updateTagEndDate$$Tag({
    required this.id,
    required this.effectiveTo,
    required this.effectiveToEpoch,
    this.$__typename = 'Tag',
  });

  factory Mutation$UpdateTagEndDate$updateTagEndDate$$Tag.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$effectiveTo = json['effectiveTo'];
    final l$effectiveToEpoch = json['effectiveToEpoch'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateTagEndDate$updateTagEndDate$$Tag(
      id: (l$id as String),
      effectiveTo: DateTime.parse((l$effectiveTo as String)),
      effectiveToEpoch: (l$effectiveToEpoch as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime effectiveTo;

  final int effectiveToEpoch;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$effectiveTo = effectiveTo;
    _resultData['effectiveTo'] = l$effectiveTo.toIso8601String();
    final l$effectiveToEpoch = effectiveToEpoch;
    _resultData['effectiveToEpoch'] = l$effectiveToEpoch;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$effectiveTo = effectiveTo;
    final l$effectiveToEpoch = effectiveToEpoch;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$effectiveTo,
      l$effectiveToEpoch,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateTagEndDate$updateTagEndDate$$Tag ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$effectiveTo = effectiveTo;
    final lOther$effectiveTo = other.effectiveTo;
    if (l$effectiveTo != lOther$effectiveTo) {
      return false;
    }
    final l$effectiveToEpoch = effectiveToEpoch;
    final lOther$effectiveToEpoch = other.effectiveToEpoch;
    if (l$effectiveToEpoch != lOther$effectiveToEpoch) {
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

extension UtilityExtension$Mutation$UpdateTagEndDate$updateTagEndDate$$Tag
    on Mutation$UpdateTagEndDate$updateTagEndDate$$Tag {
  CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate$$Tag<
    Mutation$UpdateTagEndDate$updateTagEndDate$$Tag
  >
  get copyWith =>
      CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate$$Tag(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate$$Tag<TRes> {
  factory CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate$$Tag(
    Mutation$UpdateTagEndDate$updateTagEndDate$$Tag instance,
    TRes Function(Mutation$UpdateTagEndDate$updateTagEndDate$$Tag) then,
  ) = _CopyWithImpl$Mutation$UpdateTagEndDate$updateTagEndDate$$Tag;

  factory CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate$$Tag.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateTagEndDate$updateTagEndDate$$Tag;

  TRes call({
    String? id,
    DateTime? effectiveTo,
    int? effectiveToEpoch,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateTagEndDate$updateTagEndDate$$Tag<TRes>
    implements CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate$$Tag<TRes> {
  _CopyWithImpl$Mutation$UpdateTagEndDate$updateTagEndDate$$Tag(
    this._instance,
    this._then,
  );

  final Mutation$UpdateTagEndDate$updateTagEndDate$$Tag _instance;

  final TRes Function(Mutation$UpdateTagEndDate$updateTagEndDate$$Tag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? effectiveTo = _undefined,
    Object? effectiveToEpoch = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateTagEndDate$updateTagEndDate$$Tag(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      effectiveTo: effectiveTo == _undefined || effectiveTo == null
          ? _instance.effectiveTo
          : (effectiveTo as DateTime),
      effectiveToEpoch:
          effectiveToEpoch == _undefined || effectiveToEpoch == null
          ? _instance.effectiveToEpoch
          : (effectiveToEpoch as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateTagEndDate$updateTagEndDate$$Tag<TRes>
    implements CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate$$Tag<TRes> {
  _CopyWithStubImpl$Mutation$UpdateTagEndDate$updateTagEndDate$$Tag(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? effectiveTo,
    int? effectiveToEpoch,
    String? $__typename,
  }) => _res;
}

class Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError
    implements
        Fragment$UpdateTagEndDateError,
        Mutation$UpdateTagEndDate$updateTagEndDate {
  Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError({
    required this.message,
    this.$__typename = 'UpdateTagEndDateError',
  });

  factory Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError(
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
    if (other
            is! Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError ||
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

extension UtilityExtension$Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError
    on Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError {
  CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError<
    Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError
  >
  get copyWith =>
      CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError<
  TRes
> {
  factory CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError(
    Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError instance,
    TRes Function(
      Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError;

  factory CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError(
    this._instance,
    this._then,
  );

  final Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError
  _instance;

  final TRes Function(
    Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateTagEndDate$updateTagEndDate$$UpdateTagEndDateError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
