import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateAccountHeadOfficeDetails {
  factory Variables$Mutation$UpdateAccountHeadOfficeDetails({
    required Input$UpdateAccountHeadOfficeDetailsInput headOfficeInput,
  }) => Variables$Mutation$UpdateAccountHeadOfficeDetails._({
    r'headOfficeInput': headOfficeInput,
  });

  Variables$Mutation$UpdateAccountHeadOfficeDetails._(this._$data);

  factory Variables$Mutation$UpdateAccountHeadOfficeDetails.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$headOfficeInput = data['headOfficeInput'];
    result$data['headOfficeInput'] =
        Input$UpdateAccountHeadOfficeDetailsInput.fromJson(
          (l$headOfficeInput as Map<String, dynamic>),
        );
    return Variables$Mutation$UpdateAccountHeadOfficeDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateAccountHeadOfficeDetailsInput get headOfficeInput =>
      (_$data['headOfficeInput'] as Input$UpdateAccountHeadOfficeDetailsInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$headOfficeInput = headOfficeInput;
    result$data['headOfficeInput'] = l$headOfficeInput.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateAccountHeadOfficeDetails<
    Variables$Mutation$UpdateAccountHeadOfficeDetails
  >
  get copyWith => CopyWith$Variables$Mutation$UpdateAccountHeadOfficeDetails(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateAccountHeadOfficeDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$headOfficeInput = headOfficeInput;
    final lOther$headOfficeInput = other.headOfficeInput;
    if (l$headOfficeInput != lOther$headOfficeInput) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$headOfficeInput = headOfficeInput;
    return Object.hashAll([l$headOfficeInput]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateAccountHeadOfficeDetails<
  TRes
> {
  factory CopyWith$Variables$Mutation$UpdateAccountHeadOfficeDetails(
    Variables$Mutation$UpdateAccountHeadOfficeDetails instance,
    TRes Function(Variables$Mutation$UpdateAccountHeadOfficeDetails) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateAccountHeadOfficeDetails;

  factory CopyWith$Variables$Mutation$UpdateAccountHeadOfficeDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$UpdateAccountHeadOfficeDetails;

  TRes call({Input$UpdateAccountHeadOfficeDetailsInput? headOfficeInput});
}

class _CopyWithImpl$Variables$Mutation$UpdateAccountHeadOfficeDetails<TRes>
    implements
        CopyWith$Variables$Mutation$UpdateAccountHeadOfficeDetails<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateAccountHeadOfficeDetails(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateAccountHeadOfficeDetails _instance;

  final TRes Function(Variables$Mutation$UpdateAccountHeadOfficeDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? headOfficeInput = _undefined}) => _then(
    Variables$Mutation$UpdateAccountHeadOfficeDetails._({
      ..._instance._$data,
      if (headOfficeInput != _undefined && headOfficeInput != null)
        'headOfficeInput':
            (headOfficeInput as Input$UpdateAccountHeadOfficeDetailsInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateAccountHeadOfficeDetails<TRes>
    implements
        CopyWith$Variables$Mutation$UpdateAccountHeadOfficeDetails<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateAccountHeadOfficeDetails(
    this._res,
  );

  TRes _res;

  call({Input$UpdateAccountHeadOfficeDetailsInput? headOfficeInput}) => _res;
}

class Mutation$UpdateAccountHeadOfficeDetails {
  Mutation$UpdateAccountHeadOfficeDetails({
    this.updateAccountHeadOfficeDetails,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateAccountHeadOfficeDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$updateAccountHeadOfficeDetails =
        json['updateAccountHeadOfficeDetails'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountHeadOfficeDetails(
      updateAccountHeadOfficeDetails: l$updateAccountHeadOfficeDetails == null
          ? null
          : Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails.fromJson(
              (l$updateAccountHeadOfficeDetails as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails?
  updateAccountHeadOfficeDetails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAccountHeadOfficeDetails = updateAccountHeadOfficeDetails;
    _resultData['updateAccountHeadOfficeDetails'] =
        l$updateAccountHeadOfficeDetails?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAccountHeadOfficeDetails = updateAccountHeadOfficeDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateAccountHeadOfficeDetails, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateAccountHeadOfficeDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAccountHeadOfficeDetails = updateAccountHeadOfficeDetails;
    final lOther$updateAccountHeadOfficeDetails =
        other.updateAccountHeadOfficeDetails;
    if (l$updateAccountHeadOfficeDetails !=
        lOther$updateAccountHeadOfficeDetails) {
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

extension UtilityExtension$Mutation$UpdateAccountHeadOfficeDetails
    on Mutation$UpdateAccountHeadOfficeDetails {
  CopyWith$Mutation$UpdateAccountHeadOfficeDetails<
    Mutation$UpdateAccountHeadOfficeDetails
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountHeadOfficeDetails(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateAccountHeadOfficeDetails<TRes> {
  factory CopyWith$Mutation$UpdateAccountHeadOfficeDetails(
    Mutation$UpdateAccountHeadOfficeDetails instance,
    TRes Function(Mutation$UpdateAccountHeadOfficeDetails) then,
  ) = _CopyWithImpl$Mutation$UpdateAccountHeadOfficeDetails;

  factory CopyWith$Mutation$UpdateAccountHeadOfficeDetails.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAccountHeadOfficeDetails;

  TRes call({
    Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails?
    updateAccountHeadOfficeDetails,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails<
    TRes
  >
  get updateAccountHeadOfficeDetails;
}

class _CopyWithImpl$Mutation$UpdateAccountHeadOfficeDetails<TRes>
    implements CopyWith$Mutation$UpdateAccountHeadOfficeDetails<TRes> {
  _CopyWithImpl$Mutation$UpdateAccountHeadOfficeDetails(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountHeadOfficeDetails _instance;

  final TRes Function(Mutation$UpdateAccountHeadOfficeDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAccountHeadOfficeDetails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountHeadOfficeDetails(
      updateAccountHeadOfficeDetails:
          updateAccountHeadOfficeDetails == _undefined
          ? _instance.updateAccountHeadOfficeDetails
          : (updateAccountHeadOfficeDetails
                as Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails<
    TRes
  >
  get updateAccountHeadOfficeDetails {
    final local$updateAccountHeadOfficeDetails =
        _instance.updateAccountHeadOfficeDetails;
    return local$updateAccountHeadOfficeDetails == null
        ? CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails(
            local$updateAccountHeadOfficeDetails,
            (e) => call(updateAccountHeadOfficeDetails: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateAccountHeadOfficeDetails<TRes>
    implements CopyWith$Mutation$UpdateAccountHeadOfficeDetails<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAccountHeadOfficeDetails(this._res);

  TRes _res;

  call({
    Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails?
    updateAccountHeadOfficeDetails,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails<
    TRes
  >
  get updateAccountHeadOfficeDetails =>
      CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails.stub(
        _res,
      );
}

const documentNodeMutationUpdateAccountHeadOfficeDetails = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateAccountHeadOfficeDetails'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'headOfficeInput')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateAccountHeadOfficeDetailsInput'),
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
            name: NameNode(value: 'updateAccountHeadOfficeDetails'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'updateHeadOfficeDetailInput'),
                value: VariableNode(name: NameNode(value: 'headOfficeInput')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                InlineFragmentNode(
                  typeCondition: TypeConditionNode(
                    on: NamedTypeNode(
                      name: NameNode(value: 'HeadOfficeDetailsError'),
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
                        name: NameNode(value: 'name'),
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

class Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails {
  Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails({
    required this.$__typename,
  });

  factory Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "HeadOfficeDetailsError":
        return Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError.fromJson(
          json,
        );

      case "Account":
        return Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails(
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
    if (other
            is! Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails ||
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

extension UtilityExtension$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails
    on Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails {
  CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails<
    Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails(
        this,
        (i) => i,
      );

  _T when<_T>({
    required _T Function(
      Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError,
    )
    headOfficeDetailsError,
    required _T Function(
      Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account,
    )
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "HeadOfficeDetailsError":
        return headOfficeDetailsError(
          this
              as Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError,
        );

      case "Account":
        return account(
          this
              as Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError,
    )?
    headOfficeDetailsError,
    _T Function(
      Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account,
    )?
    account,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "HeadOfficeDetailsError":
        if (headOfficeDetailsError != null) {
          return headOfficeDetailsError(
            this
                as Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError,
          );
        } else {
          return orElse();
        }

      case "Account":
        if (account != null) {
          return account(
            this
                as Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails(
    Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails
    instance,
    TRes Function(
      Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails;

  factory CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails
  _instance;

  final TRes Function(
    Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError
    implements
        Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails {
  Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError({
    required this.message,
    this.$__typename = 'HeadOfficeDetailsError',
  });

  factory Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError(
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
            is! Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError ||
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

extension UtilityExtension$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError
    on
        Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError {
  CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError<
    Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError(
    Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError
    instance,
    TRes Function(
      Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError;

  factory CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError
  _instance;

  final TRes Function(
    Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$HeadOfficeDetailsError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account
    implements
        Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails {
  Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account({
    required this.name,
    this.$__typename = 'Account',
  });

  factory Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account
    on
        Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account {
  CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account<
    Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account(
    Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account
    instance,
    TRes Function(
      Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account;

  factory CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account;

  TRes call({String? name, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account
  _instance;

  final TRes Function(
    Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account(
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountHeadOfficeDetails$updateAccountHeadOfficeDetails$$Account(
    this._res,
  );

  TRes _res;

  call({String? name, String? $__typename}) => _res;
}
