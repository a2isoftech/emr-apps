import '../../fragments/account_contact_error_fragment.graphql.dart';
import '../../fragments/contact_with_key_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$DeleteAccountContact {
  factory Variables$Mutation$DeleteAccountContact({
    required String accountId,
    required String contactId,
  }) => Variables$Mutation$DeleteAccountContact._({
    r'accountId': accountId,
    r'contactId': contactId,
  });

  Variables$Mutation$DeleteAccountContact._(this._$data);

  factory Variables$Mutation$DeleteAccountContact.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$accountId = data['accountId'];
    result$data['accountId'] = (l$accountId as String);
    final l$contactId = data['contactId'];
    result$data['contactId'] = (l$contactId as String);
    return Variables$Mutation$DeleteAccountContact._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accountId => (_$data['accountId'] as String);

  String get contactId => (_$data['contactId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accountId = accountId;
    result$data['accountId'] = l$accountId;
    final l$contactId = contactId;
    result$data['contactId'] = l$contactId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteAccountContact<
    Variables$Mutation$DeleteAccountContact
  >
  get copyWith =>
      CopyWith$Variables$Mutation$DeleteAccountContact(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteAccountContact ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (l$accountId != lOther$accountId) {
      return false;
    }
    final l$contactId = contactId;
    final lOther$contactId = other.contactId;
    if (l$contactId != lOther$contactId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accountId = accountId;
    final l$contactId = contactId;
    return Object.hashAll([l$accountId, l$contactId]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteAccountContact<TRes> {
  factory CopyWith$Variables$Mutation$DeleteAccountContact(
    Variables$Mutation$DeleteAccountContact instance,
    TRes Function(Variables$Mutation$DeleteAccountContact) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteAccountContact;

  factory CopyWith$Variables$Mutation$DeleteAccountContact.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteAccountContact;

  TRes call({String? accountId, String? contactId});
}

class _CopyWithImpl$Variables$Mutation$DeleteAccountContact<TRes>
    implements CopyWith$Variables$Mutation$DeleteAccountContact<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteAccountContact(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteAccountContact _instance;

  final TRes Function(Variables$Mutation$DeleteAccountContact) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accountId = _undefined, Object? contactId = _undefined}) =>
      _then(
        Variables$Mutation$DeleteAccountContact._({
          ..._instance._$data,
          if (accountId != _undefined && accountId != null)
            'accountId': (accountId as String),
          if (contactId != _undefined && contactId != null)
            'contactId': (contactId as String),
        }),
      );
}

class _CopyWithStubImpl$Variables$Mutation$DeleteAccountContact<TRes>
    implements CopyWith$Variables$Mutation$DeleteAccountContact<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteAccountContact(this._res);

  TRes _res;

  call({String? accountId, String? contactId}) => _res;
}

class Mutation$DeleteAccountContact {
  Mutation$DeleteAccountContact({
    this.deleteAccountContact,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteAccountContact.fromJson(Map<String, dynamic> json) {
    final l$deleteAccountContact = json['deleteAccountContact'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccountContact(
      deleteAccountContact: l$deleteAccountContact == null
          ? null
          : Mutation$DeleteAccountContact$deleteAccountContact.fromJson(
              (l$deleteAccountContact as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteAccountContact$deleteAccountContact?
  deleteAccountContact;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteAccountContact = deleteAccountContact;
    _resultData['deleteAccountContact'] = l$deleteAccountContact?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteAccountContact = deleteAccountContact;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteAccountContact, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteAccountContact ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteAccountContact = deleteAccountContact;
    final lOther$deleteAccountContact = other.deleteAccountContact;
    if (l$deleteAccountContact != lOther$deleteAccountContact) {
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

extension UtilityExtension$Mutation$DeleteAccountContact
    on Mutation$DeleteAccountContact {
  CopyWith$Mutation$DeleteAccountContact<Mutation$DeleteAccountContact>
  get copyWith => CopyWith$Mutation$DeleteAccountContact(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteAccountContact<TRes> {
  factory CopyWith$Mutation$DeleteAccountContact(
    Mutation$DeleteAccountContact instance,
    TRes Function(Mutation$DeleteAccountContact) then,
  ) = _CopyWithImpl$Mutation$DeleteAccountContact;

  factory CopyWith$Mutation$DeleteAccountContact.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteAccountContact;

  TRes call({
    Mutation$DeleteAccountContact$deleteAccountContact? deleteAccountContact,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteAccountContact$deleteAccountContact<TRes>
  get deleteAccountContact;
}

class _CopyWithImpl$Mutation$DeleteAccountContact<TRes>
    implements CopyWith$Mutation$DeleteAccountContact<TRes> {
  _CopyWithImpl$Mutation$DeleteAccountContact(this._instance, this._then);

  final Mutation$DeleteAccountContact _instance;

  final TRes Function(Mutation$DeleteAccountContact) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteAccountContact = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteAccountContact(
      deleteAccountContact: deleteAccountContact == _undefined
          ? _instance.deleteAccountContact
          : (deleteAccountContact
                as Mutation$DeleteAccountContact$deleteAccountContact?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$DeleteAccountContact$deleteAccountContact<TRes>
  get deleteAccountContact {
    final local$deleteAccountContact = _instance.deleteAccountContact;
    return local$deleteAccountContact == null
        ? CopyWith$Mutation$DeleteAccountContact$deleteAccountContact.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$DeleteAccountContact$deleteAccountContact(
            local$deleteAccountContact,
            (e) => call(deleteAccountContact: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$DeleteAccountContact<TRes>
    implements CopyWith$Mutation$DeleteAccountContact<TRes> {
  _CopyWithStubImpl$Mutation$DeleteAccountContact(this._res);

  TRes _res;

  call({
    Mutation$DeleteAccountContact$deleteAccountContact? deleteAccountContact,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DeleteAccountContact$deleteAccountContact<TRes>
  get deleteAccountContact =>
      CopyWith$Mutation$DeleteAccountContact$deleteAccountContact.stub(_res);
}

const documentNodeMutationDeleteAccountContact = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteAccountContact'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'accountId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'contactId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'deleteAccountContact'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'accountId'),
                value: VariableNode(name: NameNode(value: 'accountId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'contactId'),
                value: VariableNode(name: NameNode(value: 'contactId')),
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

class Mutation$DeleteAccountContact$deleteAccountContact {
  Mutation$DeleteAccountContact$deleteAccountContact({
    required this.$__typename,
  });

  factory Mutation$DeleteAccountContact$deleteAccountContact.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "ContactWithKey":
        return Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey.fromJson(
          json,
        );

      case "AccountContactError":
        return Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$DeleteAccountContact$deleteAccountContact(
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
    if (other is! Mutation$DeleteAccountContact$deleteAccountContact ||
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

extension UtilityExtension$Mutation$DeleteAccountContact$deleteAccountContact
    on Mutation$DeleteAccountContact$deleteAccountContact {
  CopyWith$Mutation$DeleteAccountContact$deleteAccountContact<
    Mutation$DeleteAccountContact$deleteAccountContact
  >
  get copyWith => CopyWith$Mutation$DeleteAccountContact$deleteAccountContact(
    this,
    (i) => i,
  );

  _T when<_T>({
    required _T Function(
      Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey,
    )
    contactWithKey,
    required _T Function(
      Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError,
    )
    accountContactError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ContactWithKey":
        return contactWithKey(
          this
              as Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey,
        );

      case "AccountContactError":
        return accountContactError(
          this
              as Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey,
    )?
    contactWithKey,
    _T Function(
      Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError,
    )?
    accountContactError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ContactWithKey":
        if (contactWithKey != null) {
          return contactWithKey(
            this
                as Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey,
          );
        } else {
          return orElse();
        }

      case "AccountContactError":
        if (accountContactError != null) {
          return accountContactError(
            this
                as Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$DeleteAccountContact$deleteAccountContact<
  TRes
> {
  factory CopyWith$Mutation$DeleteAccountContact$deleteAccountContact(
    Mutation$DeleteAccountContact$deleteAccountContact instance,
    TRes Function(Mutation$DeleteAccountContact$deleteAccountContact) then,
  ) = _CopyWithImpl$Mutation$DeleteAccountContact$deleteAccountContact;

  factory CopyWith$Mutation$DeleteAccountContact$deleteAccountContact.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteAccountContact$deleteAccountContact;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteAccountContact$deleteAccountContact<TRes>
    implements
        CopyWith$Mutation$DeleteAccountContact$deleteAccountContact<TRes> {
  _CopyWithImpl$Mutation$DeleteAccountContact$deleteAccountContact(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccountContact$deleteAccountContact _instance;

  final TRes Function(Mutation$DeleteAccountContact$deleteAccountContact) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$DeleteAccountContact$deleteAccountContact(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteAccountContact$deleteAccountContact<TRes>
    implements
        CopyWith$Mutation$DeleteAccountContact$deleteAccountContact<TRes> {
  _CopyWithStubImpl$Mutation$DeleteAccountContact$deleteAccountContact(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey
    implements
        Fragment$ContactWithKey,
        Mutation$DeleteAccountContact$deleteAccountContact {
  Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey({
    required this.key,
    this.$__typename = 'ContactWithKey',
  });

  factory Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey(
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
            is! Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey ||
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

extension UtilityExtension$Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey
    on Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey {
  CopyWith$Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey<
    Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey
  >
  get copyWith =>
      CopyWith$Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey<
  TRes
> {
  factory CopyWith$Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey(
    Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey instance,
    TRes Function(
      Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey;

  factory CopyWith$Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey;

  TRes call({String? key, String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey
  _instance;

  final TRes Function(
    Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? key = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey(
          key: key == _undefined || key == null
              ? _instance.key
              : (key as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteAccountContact$deleteAccountContact$$ContactWithKey(
    this._res,
  );

  TRes _res;

  call({String? key, String? $__typename}) => _res;
}

class Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError
    implements
        Fragment$AccountContactError,
        Mutation$DeleteAccountContact$deleteAccountContact {
  Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError({
    required this.message,
    this.$__typename = 'AccountContactError',
  });

  factory Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError(
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
            is! Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError ||
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

extension UtilityExtension$Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError
    on Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError {
  CopyWith$Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError<
    Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError
  >
  get copyWith =>
      CopyWith$Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError<
  TRes
> {
  factory CopyWith$Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError(
    Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError
    instance,
    TRes Function(
      Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError;

  factory CopyWith$Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError
  _instance;

  final TRes Function(
    Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError<
  TRes
>
    implements
        CopyWith$Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteAccountContact$deleteAccountContact$$AccountContactError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
