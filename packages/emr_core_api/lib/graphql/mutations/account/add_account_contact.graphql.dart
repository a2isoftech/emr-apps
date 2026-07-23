import '../../fragments/account_contact_error_fragment.graphql.dart';
import '../../fragments/contact_with_key_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateAccountContact {
  factory Variables$Mutation$CreateAccountContact({
    required Input$CreateAccountContactInput input,
  }) => Variables$Mutation$CreateAccountContact._({r'input': input});

  Variables$Mutation$CreateAccountContact._(this._$data);

  factory Variables$Mutation$CreateAccountContact.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateAccountContactInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$CreateAccountContact._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateAccountContactInput get input =>
      (_$data['input'] as Input$CreateAccountContactInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateAccountContact<
    Variables$Mutation$CreateAccountContact
  >
  get copyWith =>
      CopyWith$Variables$Mutation$CreateAccountContact(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateAccountContact ||
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

abstract class CopyWith$Variables$Mutation$CreateAccountContact<TRes> {
  factory CopyWith$Variables$Mutation$CreateAccountContact(
    Variables$Mutation$CreateAccountContact instance,
    TRes Function(Variables$Mutation$CreateAccountContact) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateAccountContact;

  factory CopyWith$Variables$Mutation$CreateAccountContact.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateAccountContact;

  TRes call({Input$CreateAccountContactInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateAccountContact<TRes>
    implements CopyWith$Variables$Mutation$CreateAccountContact<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateAccountContact(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateAccountContact _instance;

  final TRes Function(Variables$Mutation$CreateAccountContact) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CreateAccountContact._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateAccountContactInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateAccountContact<TRes>
    implements CopyWith$Variables$Mutation$CreateAccountContact<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateAccountContact(this._res);

  TRes _res;

  call({Input$CreateAccountContactInput? input}) => _res;
}

class Mutation$CreateAccountContact {
  Mutation$CreateAccountContact({
    this.createAccountContact,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateAccountContact.fromJson(Map<String, dynamic> json) {
    final l$createAccountContact = json['createAccountContact'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateAccountContact(
      createAccountContact: l$createAccountContact == null
          ? null
          : Mutation$CreateAccountContact$createAccountContact.fromJson(
              (l$createAccountContact as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateAccountContact$createAccountContact?
  createAccountContact;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createAccountContact = createAccountContact;
    _resultData['createAccountContact'] = l$createAccountContact?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createAccountContact = createAccountContact;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createAccountContact, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateAccountContact ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createAccountContact = createAccountContact;
    final lOther$createAccountContact = other.createAccountContact;
    if (l$createAccountContact != lOther$createAccountContact) {
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

extension UtilityExtension$Mutation$CreateAccountContact
    on Mutation$CreateAccountContact {
  CopyWith$Mutation$CreateAccountContact<Mutation$CreateAccountContact>
  get copyWith => CopyWith$Mutation$CreateAccountContact(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateAccountContact<TRes> {
  factory CopyWith$Mutation$CreateAccountContact(
    Mutation$CreateAccountContact instance,
    TRes Function(Mutation$CreateAccountContact) then,
  ) = _CopyWithImpl$Mutation$CreateAccountContact;

  factory CopyWith$Mutation$CreateAccountContact.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateAccountContact;

  TRes call({
    Mutation$CreateAccountContact$createAccountContact? createAccountContact,
    String? $__typename,
  });
  CopyWith$Mutation$CreateAccountContact$createAccountContact<TRes>
  get createAccountContact;
}

class _CopyWithImpl$Mutation$CreateAccountContact<TRes>
    implements CopyWith$Mutation$CreateAccountContact<TRes> {
  _CopyWithImpl$Mutation$CreateAccountContact(this._instance, this._then);

  final Mutation$CreateAccountContact _instance;

  final TRes Function(Mutation$CreateAccountContact) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createAccountContact = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateAccountContact(
      createAccountContact: createAccountContact == _undefined
          ? _instance.createAccountContact
          : (createAccountContact
                as Mutation$CreateAccountContact$createAccountContact?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateAccountContact$createAccountContact<TRes>
  get createAccountContact {
    final local$createAccountContact = _instance.createAccountContact;
    return local$createAccountContact == null
        ? CopyWith$Mutation$CreateAccountContact$createAccountContact.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$CreateAccountContact$createAccountContact(
            local$createAccountContact,
            (e) => call(createAccountContact: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CreateAccountContact<TRes>
    implements CopyWith$Mutation$CreateAccountContact<TRes> {
  _CopyWithStubImpl$Mutation$CreateAccountContact(this._res);

  TRes _res;

  call({
    Mutation$CreateAccountContact$createAccountContact? createAccountContact,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateAccountContact$createAccountContact<TRes>
  get createAccountContact =>
      CopyWith$Mutation$CreateAccountContact$createAccountContact.stub(_res);
}

const documentNodeMutationCreateAccountContact = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateAccountContact'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateAccountContactInput'),
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
            name: NameNode(value: 'createAccountContact'),
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

class Mutation$CreateAccountContact$createAccountContact {
  Mutation$CreateAccountContact$createAccountContact({
    required this.$__typename,
  });

  factory Mutation$CreateAccountContact$createAccountContact.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "ContactWithKey":
        return Mutation$CreateAccountContact$createAccountContact$$ContactWithKey.fromJson(
          json,
        );

      case "AccountContactError":
        return Mutation$CreateAccountContact$createAccountContact$$AccountContactError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$CreateAccountContact$createAccountContact(
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
    if (other is! Mutation$CreateAccountContact$createAccountContact ||
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

extension UtilityExtension$Mutation$CreateAccountContact$createAccountContact
    on Mutation$CreateAccountContact$createAccountContact {
  CopyWith$Mutation$CreateAccountContact$createAccountContact<
    Mutation$CreateAccountContact$createAccountContact
  >
  get copyWith => CopyWith$Mutation$CreateAccountContact$createAccountContact(
    this,
    (i) => i,
  );

  _T when<_T>({
    required _T Function(
      Mutation$CreateAccountContact$createAccountContact$$ContactWithKey,
    )
    contactWithKey,
    required _T Function(
      Mutation$CreateAccountContact$createAccountContact$$AccountContactError,
    )
    accountContactError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ContactWithKey":
        return contactWithKey(
          this
              as Mutation$CreateAccountContact$createAccountContact$$ContactWithKey,
        );

      case "AccountContactError":
        return accountContactError(
          this
              as Mutation$CreateAccountContact$createAccountContact$$AccountContactError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$CreateAccountContact$createAccountContact$$ContactWithKey,
    )?
    contactWithKey,
    _T Function(
      Mutation$CreateAccountContact$createAccountContact$$AccountContactError,
    )?
    accountContactError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ContactWithKey":
        if (contactWithKey != null) {
          return contactWithKey(
            this
                as Mutation$CreateAccountContact$createAccountContact$$ContactWithKey,
          );
        } else {
          return orElse();
        }

      case "AccountContactError":
        if (accountContactError != null) {
          return accountContactError(
            this
                as Mutation$CreateAccountContact$createAccountContact$$AccountContactError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$CreateAccountContact$createAccountContact<
  TRes
> {
  factory CopyWith$Mutation$CreateAccountContact$createAccountContact(
    Mutation$CreateAccountContact$createAccountContact instance,
    TRes Function(Mutation$CreateAccountContact$createAccountContact) then,
  ) = _CopyWithImpl$Mutation$CreateAccountContact$createAccountContact;

  factory CopyWith$Mutation$CreateAccountContact$createAccountContact.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateAccountContact$createAccountContact;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$CreateAccountContact$createAccountContact<TRes>
    implements
        CopyWith$Mutation$CreateAccountContact$createAccountContact<TRes> {
  _CopyWithImpl$Mutation$CreateAccountContact$createAccountContact(
    this._instance,
    this._then,
  );

  final Mutation$CreateAccountContact$createAccountContact _instance;

  final TRes Function(Mutation$CreateAccountContact$createAccountContact) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$CreateAccountContact$createAccountContact(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateAccountContact$createAccountContact<TRes>
    implements
        CopyWith$Mutation$CreateAccountContact$createAccountContact<TRes> {
  _CopyWithStubImpl$Mutation$CreateAccountContact$createAccountContact(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$CreateAccountContact$createAccountContact$$ContactWithKey
    implements
        Fragment$ContactWithKey,
        Mutation$CreateAccountContact$createAccountContact {
  Mutation$CreateAccountContact$createAccountContact$$ContactWithKey({
    required this.key,
    this.$__typename = 'ContactWithKey',
  });

  factory Mutation$CreateAccountContact$createAccountContact$$ContactWithKey.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateAccountContact$createAccountContact$$ContactWithKey(
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
            is! Mutation$CreateAccountContact$createAccountContact$$ContactWithKey ||
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

extension UtilityExtension$Mutation$CreateAccountContact$createAccountContact$$ContactWithKey
    on Mutation$CreateAccountContact$createAccountContact$$ContactWithKey {
  CopyWith$Mutation$CreateAccountContact$createAccountContact$$ContactWithKey<
    Mutation$CreateAccountContact$createAccountContact$$ContactWithKey
  >
  get copyWith =>
      CopyWith$Mutation$CreateAccountContact$createAccountContact$$ContactWithKey(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateAccountContact$createAccountContact$$ContactWithKey<
  TRes
> {
  factory CopyWith$Mutation$CreateAccountContact$createAccountContact$$ContactWithKey(
    Mutation$CreateAccountContact$createAccountContact$$ContactWithKey instance,
    TRes Function(
      Mutation$CreateAccountContact$createAccountContact$$ContactWithKey,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreateAccountContact$createAccountContact$$ContactWithKey;

  factory CopyWith$Mutation$CreateAccountContact$createAccountContact$$ContactWithKey.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateAccountContact$createAccountContact$$ContactWithKey;

  TRes call({String? key, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateAccountContact$createAccountContact$$ContactWithKey<
  TRes
>
    implements
        CopyWith$Mutation$CreateAccountContact$createAccountContact$$ContactWithKey<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateAccountContact$createAccountContact$$ContactWithKey(
    this._instance,
    this._then,
  );

  final Mutation$CreateAccountContact$createAccountContact$$ContactWithKey
  _instance;

  final TRes Function(
    Mutation$CreateAccountContact$createAccountContact$$ContactWithKey,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? key = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$CreateAccountContact$createAccountContact$$ContactWithKey(
          key: key == _undefined || key == null
              ? _instance.key
              : (key as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$CreateAccountContact$createAccountContact$$ContactWithKey<
  TRes
>
    implements
        CopyWith$Mutation$CreateAccountContact$createAccountContact$$ContactWithKey<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateAccountContact$createAccountContact$$ContactWithKey(
    this._res,
  );

  TRes _res;

  call({String? key, String? $__typename}) => _res;
}

class Mutation$CreateAccountContact$createAccountContact$$AccountContactError
    implements
        Fragment$AccountContactError,
        Mutation$CreateAccountContact$createAccountContact {
  Mutation$CreateAccountContact$createAccountContact$$AccountContactError({
    required this.message,
    this.$__typename = 'AccountContactError',
  });

  factory Mutation$CreateAccountContact$createAccountContact$$AccountContactError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateAccountContact$createAccountContact$$AccountContactError(
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
            is! Mutation$CreateAccountContact$createAccountContact$$AccountContactError ||
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

extension UtilityExtension$Mutation$CreateAccountContact$createAccountContact$$AccountContactError
    on Mutation$CreateAccountContact$createAccountContact$$AccountContactError {
  CopyWith$Mutation$CreateAccountContact$createAccountContact$$AccountContactError<
    Mutation$CreateAccountContact$createAccountContact$$AccountContactError
  >
  get copyWith =>
      CopyWith$Mutation$CreateAccountContact$createAccountContact$$AccountContactError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateAccountContact$createAccountContact$$AccountContactError<
  TRes
> {
  factory CopyWith$Mutation$CreateAccountContact$createAccountContact$$AccountContactError(
    Mutation$CreateAccountContact$createAccountContact$$AccountContactError
    instance,
    TRes Function(
      Mutation$CreateAccountContact$createAccountContact$$AccountContactError,
    )
    then,
  ) = _CopyWithImpl$Mutation$CreateAccountContact$createAccountContact$$AccountContactError;

  factory CopyWith$Mutation$CreateAccountContact$createAccountContact$$AccountContactError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateAccountContact$createAccountContact$$AccountContactError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateAccountContact$createAccountContact$$AccountContactError<
  TRes
>
    implements
        CopyWith$Mutation$CreateAccountContact$createAccountContact$$AccountContactError<
          TRes
        > {
  _CopyWithImpl$Mutation$CreateAccountContact$createAccountContact$$AccountContactError(
    this._instance,
    this._then,
  );

  final Mutation$CreateAccountContact$createAccountContact$$AccountContactError
  _instance;

  final TRes Function(
    Mutation$CreateAccountContact$createAccountContact$$AccountContactError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$CreateAccountContact$createAccountContact$$AccountContactError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$CreateAccountContact$createAccountContact$$AccountContactError<
  TRes
>
    implements
        CopyWith$Mutation$CreateAccountContact$createAccountContact$$AccountContactError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$CreateAccountContact$createAccountContact$$AccountContactError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
