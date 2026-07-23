import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateAccountMainDetail {
  factory Variables$Mutation$UpdateAccountMainDetail({
    required Input$AccountMainDetailsInput input,
  }) => Variables$Mutation$UpdateAccountMainDetail._({r'input': input});

  Variables$Mutation$UpdateAccountMainDetail._(this._$data);

  factory Variables$Mutation$UpdateAccountMainDetail.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$AccountMainDetailsInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateAccountMainDetail._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$AccountMainDetailsInput get input =>
      (_$data['input'] as Input$AccountMainDetailsInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateAccountMainDetail<
    Variables$Mutation$UpdateAccountMainDetail
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdateAccountMainDetail(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateAccountMainDetail ||
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

abstract class CopyWith$Variables$Mutation$UpdateAccountMainDetail<TRes> {
  factory CopyWith$Variables$Mutation$UpdateAccountMainDetail(
    Variables$Mutation$UpdateAccountMainDetail instance,
    TRes Function(Variables$Mutation$UpdateAccountMainDetail) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateAccountMainDetail;

  factory CopyWith$Variables$Mutation$UpdateAccountMainDetail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateAccountMainDetail;

  TRes call({Input$AccountMainDetailsInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateAccountMainDetail<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccountMainDetail<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateAccountMainDetail(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateAccountMainDetail _instance;

  final TRes Function(Variables$Mutation$UpdateAccountMainDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateAccountMainDetail._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$AccountMainDetailsInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateAccountMainDetail<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccountMainDetail<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateAccountMainDetail(this._res);

  TRes _res;

  call({Input$AccountMainDetailsInput? input}) => _res;
}

class Mutation$UpdateAccountMainDetail {
  Mutation$UpdateAccountMainDetail({
    this.updateAccountMainDetail,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateAccountMainDetail.fromJson(Map<String, dynamic> json) {
    final l$updateAccountMainDetail = json['updateAccountMainDetail'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountMainDetail(
      updateAccountMainDetail: l$updateAccountMainDetail == null
          ? null
          : Mutation$UpdateAccountMainDetail$updateAccountMainDetail.fromJson(
              (l$updateAccountMainDetail as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateAccountMainDetail$updateAccountMainDetail?
  updateAccountMainDetail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAccountMainDetail = updateAccountMainDetail;
    _resultData['updateAccountMainDetail'] = l$updateAccountMainDetail
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAccountMainDetail = updateAccountMainDetail;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateAccountMainDetail, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateAccountMainDetail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAccountMainDetail = updateAccountMainDetail;
    final lOther$updateAccountMainDetail = other.updateAccountMainDetail;
    if (l$updateAccountMainDetail != lOther$updateAccountMainDetail) {
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

extension UtilityExtension$Mutation$UpdateAccountMainDetail
    on Mutation$UpdateAccountMainDetail {
  CopyWith$Mutation$UpdateAccountMainDetail<Mutation$UpdateAccountMainDetail>
  get copyWith => CopyWith$Mutation$UpdateAccountMainDetail(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateAccountMainDetail<TRes> {
  factory CopyWith$Mutation$UpdateAccountMainDetail(
    Mutation$UpdateAccountMainDetail instance,
    TRes Function(Mutation$UpdateAccountMainDetail) then,
  ) = _CopyWithImpl$Mutation$UpdateAccountMainDetail;

  factory CopyWith$Mutation$UpdateAccountMainDetail.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAccountMainDetail;

  TRes call({
    Mutation$UpdateAccountMainDetail$updateAccountMainDetail?
    updateAccountMainDetail,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail<TRes>
  get updateAccountMainDetail;
}

class _CopyWithImpl$Mutation$UpdateAccountMainDetail<TRes>
    implements CopyWith$Mutation$UpdateAccountMainDetail<TRes> {
  _CopyWithImpl$Mutation$UpdateAccountMainDetail(this._instance, this._then);

  final Mutation$UpdateAccountMainDetail _instance;

  final TRes Function(Mutation$UpdateAccountMainDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAccountMainDetail = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountMainDetail(
      updateAccountMainDetail: updateAccountMainDetail == _undefined
          ? _instance.updateAccountMainDetail
          : (updateAccountMainDetail
                as Mutation$UpdateAccountMainDetail$updateAccountMainDetail?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail<TRes>
  get updateAccountMainDetail {
    final local$updateAccountMainDetail = _instance.updateAccountMainDetail;
    return local$updateAccountMainDetail == null
        ? CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail(
            local$updateAccountMainDetail,
            (e) => call(updateAccountMainDetail: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateAccountMainDetail<TRes>
    implements CopyWith$Mutation$UpdateAccountMainDetail<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAccountMainDetail(this._res);

  TRes _res;

  call({
    Mutation$UpdateAccountMainDetail$updateAccountMainDetail?
    updateAccountMainDetail,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail<TRes>
  get updateAccountMainDetail =>
      CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail.stub(
        _res,
      );
}

const documentNodeMutationUpdateAccountMainDetail = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateAccountMainDetail'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'AccountMainDetailsInput'),
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
            name: NameNode(value: 'updateAccountMainDetail'),
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
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'AccountMainDetailsError'),
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
                ),
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'Account'),
                      isNonNull: false,
                    ),
                  ),
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
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
  ],
);

class Mutation$UpdateAccountMainDetail$updateAccountMainDetail {
  Mutation$UpdateAccountMainDetail$updateAccountMainDetail({
    required this.$__typename,
  });

  factory Mutation$UpdateAccountMainDetail$updateAccountMainDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "AccountMainDetailsError":
        return Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError.fromJson(
          json,
        );

      case "Account":
        return Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$UpdateAccountMainDetail$updateAccountMainDetail(
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
    if (other is! Mutation$UpdateAccountMainDetail$updateAccountMainDetail ||
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

extension UtilityExtension$Mutation$UpdateAccountMainDetail$updateAccountMainDetail
    on Mutation$UpdateAccountMainDetail$updateAccountMainDetail {
  CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail<
    Mutation$UpdateAccountMainDetail$updateAccountMainDetail
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError,
    )
    accountMainDetailsError,
    required _T Function(
      Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account,
    )
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountMainDetailsError":
        return accountMainDetailsError(
          this
              as Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError,
        );

      case "Account":
        return account(
          this
              as Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError,
    )?
    accountMainDetailsError,
    _T Function(
      Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account,
    )?
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "AccountMainDetailsError":
        if (accountMainDetailsError != null) {
          return accountMainDetailsError(
            this
                as Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError,
          );
        } else {
          return orElse();
        }

      case "Account":
        if (account != null) {
          return account(
            this
                as Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail(
    Mutation$UpdateAccountMainDetail$updateAccountMainDetail instance,
    TRes Function(Mutation$UpdateAccountMainDetail$updateAccountMainDetail)
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountMainDetail$updateAccountMainDetail;

  factory CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountMainDetail$updateAccountMainDetail;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountMainDetail$updateAccountMainDetail<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountMainDetail$updateAccountMainDetail(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountMainDetail$updateAccountMainDetail _instance;

  final TRes Function(Mutation$UpdateAccountMainDetail$updateAccountMainDetail)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$UpdateAccountMainDetail$updateAccountMainDetail(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountMainDetail$updateAccountMainDetail<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountMainDetail$updateAccountMainDetail(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError
    implements Mutation$UpdateAccountMainDetail$updateAccountMainDetail {
  Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError({
    required this.message,
    this.$__typename = 'AccountMainDetailsError',
  });

  factory Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError(
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
            is! Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError ||
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

extension UtilityExtension$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError
    on
        Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError {
  CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError<
    Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError(
    Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError
    instance,
    TRes Function(
      Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError;

  factory CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError
  _instance;

  final TRes Function(
    Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$AccountMainDetailsError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account
    implements Mutation$UpdateAccountMainDetail$updateAccountMainDetail {
  Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account({
    required this.id,
    this.$__typename = 'Account',
  });

  factory Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account
    on Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account {
  CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account<
    Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account(
    Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account instance,
    TRes Function(
      Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account;

  factory CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account
  _instance;

  final TRes Function(
    Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountMainDetail$updateAccountMainDetail$$Account(
    this._res,
  );

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
