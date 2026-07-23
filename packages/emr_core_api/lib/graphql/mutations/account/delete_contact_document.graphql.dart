import '../../fragments/account_contact_error_fragment.graphql.dart';
import '../../fragments/contact_with_key_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$DeleteContactDocument {
  factory Variables$Mutation$DeleteContactDocument({
    required Input$DeleteContactDocumentInput input,
  }) => Variables$Mutation$DeleteContactDocument._({r'input': input});

  Variables$Mutation$DeleteContactDocument._(this._$data);

  factory Variables$Mutation$DeleteContactDocument.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$DeleteContactDocumentInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$DeleteContactDocument._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$DeleteContactDocumentInput get input =>
      (_$data['input'] as Input$DeleteContactDocumentInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteContactDocument<
    Variables$Mutation$DeleteContactDocument
  >
  get copyWith =>
      CopyWith$Variables$Mutation$DeleteContactDocument(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteContactDocument ||
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

abstract class CopyWith$Variables$Mutation$DeleteContactDocument<TRes> {
  factory CopyWith$Variables$Mutation$DeleteContactDocument(
    Variables$Mutation$DeleteContactDocument instance,
    TRes Function(Variables$Mutation$DeleteContactDocument) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteContactDocument;

  factory CopyWith$Variables$Mutation$DeleteContactDocument.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteContactDocument;

  TRes call({Input$DeleteContactDocumentInput? input});
}

class _CopyWithImpl$Variables$Mutation$DeleteContactDocument<TRes>
    implements CopyWith$Variables$Mutation$DeleteContactDocument<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteContactDocument(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteContactDocument _instance;

  final TRes Function(Variables$Mutation$DeleteContactDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$DeleteContactDocument._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$DeleteContactDocumentInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$DeleteContactDocument<TRes>
    implements CopyWith$Variables$Mutation$DeleteContactDocument<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteContactDocument(this._res);

  TRes _res;

  call({Input$DeleteContactDocumentInput? input}) => _res;
}

class Mutation$DeleteContactDocument {
  Mutation$DeleteContactDocument({
    this.deleteContactDocument,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteContactDocument.fromJson(Map<String, dynamic> json) {
    final l$deleteContactDocument = json['deleteContactDocument'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteContactDocument(
      deleteContactDocument: l$deleteContactDocument == null
          ? null
          : Mutation$DeleteContactDocument$deleteContactDocument.fromJson(
              (l$deleteContactDocument as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteContactDocument$deleteContactDocument?
  deleteContactDocument;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteContactDocument = deleteContactDocument;
    _resultData['deleteContactDocument'] = l$deleteContactDocument?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteContactDocument = deleteContactDocument;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deleteContactDocument, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteContactDocument ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteContactDocument = deleteContactDocument;
    final lOther$deleteContactDocument = other.deleteContactDocument;
    if (l$deleteContactDocument != lOther$deleteContactDocument) {
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

extension UtilityExtension$Mutation$DeleteContactDocument
    on Mutation$DeleteContactDocument {
  CopyWith$Mutation$DeleteContactDocument<Mutation$DeleteContactDocument>
  get copyWith => CopyWith$Mutation$DeleteContactDocument(this, (i) => i);
}

abstract class CopyWith$Mutation$DeleteContactDocument<TRes> {
  factory CopyWith$Mutation$DeleteContactDocument(
    Mutation$DeleteContactDocument instance,
    TRes Function(Mutation$DeleteContactDocument) then,
  ) = _CopyWithImpl$Mutation$DeleteContactDocument;

  factory CopyWith$Mutation$DeleteContactDocument.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteContactDocument;

  TRes call({
    Mutation$DeleteContactDocument$deleteContactDocument? deleteContactDocument,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteContactDocument$deleteContactDocument<TRes>
  get deleteContactDocument;
}

class _CopyWithImpl$Mutation$DeleteContactDocument<TRes>
    implements CopyWith$Mutation$DeleteContactDocument<TRes> {
  _CopyWithImpl$Mutation$DeleteContactDocument(this._instance, this._then);

  final Mutation$DeleteContactDocument _instance;

  final TRes Function(Mutation$DeleteContactDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteContactDocument = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteContactDocument(
      deleteContactDocument: deleteContactDocument == _undefined
          ? _instance.deleteContactDocument
          : (deleteContactDocument
                as Mutation$DeleteContactDocument$deleteContactDocument?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$DeleteContactDocument$deleteContactDocument<TRes>
  get deleteContactDocument {
    final local$deleteContactDocument = _instance.deleteContactDocument;
    return local$deleteContactDocument == null
        ? CopyWith$Mutation$DeleteContactDocument$deleteContactDocument.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$DeleteContactDocument$deleteContactDocument(
            local$deleteContactDocument,
            (e) => call(deleteContactDocument: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$DeleteContactDocument<TRes>
    implements CopyWith$Mutation$DeleteContactDocument<TRes> {
  _CopyWithStubImpl$Mutation$DeleteContactDocument(this._res);

  TRes _res;

  call({
    Mutation$DeleteContactDocument$deleteContactDocument? deleteContactDocument,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DeleteContactDocument$deleteContactDocument<TRes>
  get deleteContactDocument =>
      CopyWith$Mutation$DeleteContactDocument$deleteContactDocument.stub(_res);
}

const documentNodeMutationDeleteContactDocument = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeleteContactDocument'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'DeleteContactDocumentInput'),
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
            name: NameNode(value: 'deleteContactDocument'),
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

class Mutation$DeleteContactDocument$deleteContactDocument {
  Mutation$DeleteContactDocument$deleteContactDocument({
    required this.$__typename,
  });

  factory Mutation$DeleteContactDocument$deleteContactDocument.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "ContactWithKey":
        return Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey.fromJson(
          json,
        );

      case "AccountContactError":
        return Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$DeleteContactDocument$deleteContactDocument(
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
    if (other is! Mutation$DeleteContactDocument$deleteContactDocument ||
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

extension UtilityExtension$Mutation$DeleteContactDocument$deleteContactDocument
    on Mutation$DeleteContactDocument$deleteContactDocument {
  CopyWith$Mutation$DeleteContactDocument$deleteContactDocument<
    Mutation$DeleteContactDocument$deleteContactDocument
  >
  get copyWith => CopyWith$Mutation$DeleteContactDocument$deleteContactDocument(
    this,
    (i) => i,
  );

  _T when<_T>({
    required _T Function(
      Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey,
    )
    contactWithKey,
    required _T Function(
      Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError,
    )
    accountContactError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ContactWithKey":
        return contactWithKey(
          this
              as Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey,
        );

      case "AccountContactError":
        return accountContactError(
          this
              as Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey,
    )?
    contactWithKey,
    _T Function(
      Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError,
    )?
    accountContactError,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ContactWithKey":
        if (contactWithKey != null) {
          return contactWithKey(
            this
                as Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey,
          );
        } else {
          return orElse();
        }

      case "AccountContactError":
        if (accountContactError != null) {
          return accountContactError(
            this
                as Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$DeleteContactDocument$deleteContactDocument<
  TRes
> {
  factory CopyWith$Mutation$DeleteContactDocument$deleteContactDocument(
    Mutation$DeleteContactDocument$deleteContactDocument instance,
    TRes Function(Mutation$DeleteContactDocument$deleteContactDocument) then,
  ) = _CopyWithImpl$Mutation$DeleteContactDocument$deleteContactDocument;

  factory CopyWith$Mutation$DeleteContactDocument$deleteContactDocument.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteContactDocument$deleteContactDocument;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteContactDocument$deleteContactDocument<TRes>
    implements
        CopyWith$Mutation$DeleteContactDocument$deleteContactDocument<TRes> {
  _CopyWithImpl$Mutation$DeleteContactDocument$deleteContactDocument(
    this._instance,
    this._then,
  );

  final Mutation$DeleteContactDocument$deleteContactDocument _instance;

  final TRes Function(Mutation$DeleteContactDocument$deleteContactDocument)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$DeleteContactDocument$deleteContactDocument(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteContactDocument$deleteContactDocument<
  TRes
>
    implements
        CopyWith$Mutation$DeleteContactDocument$deleteContactDocument<TRes> {
  _CopyWithStubImpl$Mutation$DeleteContactDocument$deleteContactDocument(
    this._res,
  );

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey
    implements
        Fragment$ContactWithKey,
        Mutation$DeleteContactDocument$deleteContactDocument {
  Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey({
    required this.key,
    this.$__typename = 'ContactWithKey',
  });

  factory Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey(
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
            is! Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey ||
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

extension UtilityExtension$Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey
    on Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey {
  CopyWith$Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey<
    Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey
  >
  get copyWith =>
      CopyWith$Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey<
  TRes
> {
  factory CopyWith$Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey(
    Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey
    instance,
    TRes Function(
      Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey;

  factory CopyWith$Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey;

  TRes call({String? key, String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey<
  TRes
>
    implements
        CopyWith$Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey(
    this._instance,
    this._then,
  );

  final Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey
  _instance;

  final TRes Function(
    Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? key = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey(
          key: key == _undefined || key == null
              ? _instance.key
              : (key as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey<
  TRes
>
    implements
        CopyWith$Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteContactDocument$deleteContactDocument$$ContactWithKey(
    this._res,
  );

  TRes _res;

  call({String? key, String? $__typename}) => _res;
}

class Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError
    implements
        Fragment$AccountContactError,
        Mutation$DeleteContactDocument$deleteContactDocument {
  Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError({
    required this.message,
    this.$__typename = 'AccountContactError',
  });

  factory Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError(
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
            is! Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError ||
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

extension UtilityExtension$Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError
    on Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError {
  CopyWith$Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError<
    Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError
  >
  get copyWith =>
      CopyWith$Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError<
  TRes
> {
  factory CopyWith$Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError(
    Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError
    instance,
    TRes Function(
      Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError,
    )
    then,
  ) = _CopyWithImpl$Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError;

  factory CopyWith$Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError<
  TRes
>
    implements
        CopyWith$Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError<
          TRes
        > {
  _CopyWithImpl$Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError(
    this._instance,
    this._then,
  );

  final Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError
  _instance;

  final TRes Function(
    Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError<
  TRes
>
    implements
        CopyWith$Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DeleteContactDocument$deleteContactDocument$$AccountContactError(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}
