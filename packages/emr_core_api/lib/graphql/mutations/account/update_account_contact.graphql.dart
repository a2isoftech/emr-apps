import '../../fragments/account_contact_error_fragment.graphql.dart';
import '../../fragments/contact_with_key_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateAccountContact {
  factory Variables$Mutation$UpdateAccountContact({
    required Input$UpdateAccountContactInput input,
  }) => Variables$Mutation$UpdateAccountContact._({r'input': input});

  Variables$Mutation$UpdateAccountContact._(this._$data);

  factory Variables$Mutation$UpdateAccountContact.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateAccountContactInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateAccountContact._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateAccountContactInput get input =>
      (_$data['input'] as Input$UpdateAccountContactInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateAccountContact<
    Variables$Mutation$UpdateAccountContact
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdateAccountContact(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateAccountContact ||
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

abstract class CopyWith$Variables$Mutation$UpdateAccountContact<TRes> {
  factory CopyWith$Variables$Mutation$UpdateAccountContact(
    Variables$Mutation$UpdateAccountContact instance,
    TRes Function(Variables$Mutation$UpdateAccountContact) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateAccountContact;

  factory CopyWith$Variables$Mutation$UpdateAccountContact.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateAccountContact;

  TRes call({Input$UpdateAccountContactInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateAccountContact<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccountContact<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateAccountContact(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateAccountContact _instance;

  final TRes Function(Variables$Mutation$UpdateAccountContact) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateAccountContact._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UpdateAccountContactInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateAccountContact<TRes>
    implements CopyWith$Variables$Mutation$UpdateAccountContact<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateAccountContact(this._res);

  TRes _res;

  call({Input$UpdateAccountContactInput? input}) => _res;
}

class Mutation$UpdateAccountContact {
  Mutation$UpdateAccountContact({
    this.updateAccountContact,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateAccountContact.fromJson(Map<String, dynamic> json) {
    final l$updateAccountContact = json['updateAccountContact'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountContact(
      updateAccountContact: l$updateAccountContact == null
          ? null
          : Mutation$UpdateAccountContact$updateAccountContact.fromJson(
              (l$updateAccountContact as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateAccountContact$updateAccountContact?
  updateAccountContact;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateAccountContact = updateAccountContact;
    _resultData['updateAccountContact'] = l$updateAccountContact?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateAccountContact = updateAccountContact;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateAccountContact, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateAccountContact ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateAccountContact = updateAccountContact;
    final lOther$updateAccountContact = other.updateAccountContact;
    if (l$updateAccountContact != lOther$updateAccountContact) {
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

extension UtilityExtension$Mutation$UpdateAccountContact
    on Mutation$UpdateAccountContact {
  CopyWith$Mutation$UpdateAccountContact<Mutation$UpdateAccountContact>
  get copyWith => CopyWith$Mutation$UpdateAccountContact(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateAccountContact<TRes> {
  factory CopyWith$Mutation$UpdateAccountContact(
    Mutation$UpdateAccountContact instance,
    TRes Function(Mutation$UpdateAccountContact) then,
  ) = _CopyWithImpl$Mutation$UpdateAccountContact;

  factory CopyWith$Mutation$UpdateAccountContact.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateAccountContact;

  TRes call({
    Mutation$UpdateAccountContact$updateAccountContact? updateAccountContact,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateAccountContact$updateAccountContact<TRes>
  get updateAccountContact;
}

class _CopyWithImpl$Mutation$UpdateAccountContact<TRes>
    implements CopyWith$Mutation$UpdateAccountContact<TRes> {
  _CopyWithImpl$Mutation$UpdateAccountContact(this._instance, this._then);

  final Mutation$UpdateAccountContact _instance;

  final TRes Function(Mutation$UpdateAccountContact) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateAccountContact = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateAccountContact(
      updateAccountContact: updateAccountContact == _undefined
          ? _instance.updateAccountContact
          : (updateAccountContact
                as Mutation$UpdateAccountContact$updateAccountContact?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateAccountContact$updateAccountContact<TRes>
  get updateAccountContact {
    final local$updateAccountContact = _instance.updateAccountContact;
    return local$updateAccountContact == null
        ? CopyWith$Mutation$UpdateAccountContact$updateAccountContact.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateAccountContact$updateAccountContact(
            local$updateAccountContact,
            (e) => call(updateAccountContact: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateAccountContact<TRes>
    implements CopyWith$Mutation$UpdateAccountContact<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAccountContact(this._res);

  TRes _res;

  call({
    Mutation$UpdateAccountContact$updateAccountContact? updateAccountContact,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateAccountContact$updateAccountContact<TRes>
  get updateAccountContact =>
      CopyWith$Mutation$UpdateAccountContact$updateAccountContact.stub(_res);
}

const documentNodeMutationUpdateAccountContact = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateAccountContact'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateAccountContactInput'),
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
            name: NameNode(value: 'updateAccountContact'),
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
                  name: NameNode(value: 'AccountContactError'),
                  directives: [],
                ),
                FragmentSpreadNode(
                  name: NameNode(value: 'ContactWithKey'),
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
    fragmentDefinitionAccountContactError,
    fragmentDefinitionContactWithKey,
  ],
);

class Mutation$UpdateAccountContact$updateAccountContact {
  Mutation$UpdateAccountContact$updateAccountContact({
    required this.$__typename,
  });

  factory Mutation$UpdateAccountContact$updateAccountContact.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "ContactWithKey":
        return Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey.fromJson(
          json,
        );

      case "AccountContactError":
        return Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$UpdateAccountContact$updateAccountContact(
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
    if (other is! Mutation$UpdateAccountContact$updateAccountContact ||
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

extension UtilityExtension$Mutation$UpdateAccountContact$updateAccountContact
    on Mutation$UpdateAccountContact$updateAccountContact {
  CopyWith$Mutation$UpdateAccountContact$updateAccountContact<
    Mutation$UpdateAccountContact$updateAccountContact
  >
  get copyWith => CopyWith$Mutation$UpdateAccountContact$updateAccountContact(
    this,
    (i) => i,
  );

  _T when<_T>({
    required _T Function(
      Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey,
    )
    contactWithKey,
    required _T Function(
      Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError,
    )
    accountContactError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ContactWithKey":
        return contactWithKey(
          this
              as Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey,
        );

      case "AccountContactError":
        return accountContactError(
          this
              as Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey,
    )?
    contactWithKey,
    _T Function(
      Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError,
    )?
    accountContactError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ContactWithKey":
        if (contactWithKey != null) {
          return contactWithKey(
            this
                as Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey,
          );
        } else {
          return orElse();
        }

      case "AccountContactError":
        if (accountContactError != null) {
          return accountContactError(
            this
                as Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$UpdateAccountContact$updateAccountContact<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountContact$updateAccountContact(
    Mutation$UpdateAccountContact$updateAccountContact instance,
    TRes Function(Mutation$UpdateAccountContact$updateAccountContact) then,
  ) = _CopyWithImpl$Mutation$UpdateAccountContact$updateAccountContact;

  factory CopyWith$Mutation$UpdateAccountContact$updateAccountContact.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountContact$updateAccountContact;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountContact$updateAccountContact<TRes>
    implements
        CopyWith$Mutation$UpdateAccountContact$updateAccountContact<TRes> {
  _CopyWithImpl$Mutation$UpdateAccountContact$updateAccountContact(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountContact$updateAccountContact _instance;

  final TRes Function(Mutation$UpdateAccountContact$updateAccountContact) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$UpdateAccountContact$updateAccountContact(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateAccountContact$updateAccountContact<TRes>
    implements
        CopyWith$Mutation$UpdateAccountContact$updateAccountContact<TRes> {
  _CopyWithStubImpl$Mutation$UpdateAccountContact$updateAccountContact(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey
    implements
        Fragment$ContactWithKey,
        Mutation$UpdateAccountContact$updateAccountContact {
  Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey({
    required this.key,
    this.$__typename = 'ContactWithKey',
  });

  factory Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey(
      key: (l$key as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey
    on Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey {
  CopyWith$Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey<
    Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey(
    Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey instance,
    TRes Function(
      Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey;

  factory CopyWith$Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey;

  TRes call({String? key, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey
  _instance;

  final TRes Function(
    Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? key = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey(
          key: key == _undefined || key == null
              ? _instance.key
              : (key as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountContact$updateAccountContact$$ContactWithKey(
    this._res,
  );

  TRes _res;

  call({String? key, String? $__typename}) => _res;
}

class Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError
    implements
        Fragment$AccountContactError,
        Mutation$UpdateAccountContact$updateAccountContact {
  Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError({
    required this.message,
    this.$__typename = 'AccountContactError',
  });

  factory Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError(
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
            is! Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError ||
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

extension UtilityExtension$Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError
    on Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError {
  CopyWith$Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError<
    Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError
  >
  get copyWith =>
      CopyWith$Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError<
  TRes
> {
  factory CopyWith$Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError(
    Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError
    instance,
    TRes Function(
      Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError;

  factory CopyWith$Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError(
    this._instance,
    this._then,
  );

  final Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError
  _instance;

  final TRes Function(
    Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError<
  TRes
>
    implements
        CopyWith$Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateAccountContact$updateAccountContact$$AccountContactError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
