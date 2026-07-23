import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateDocument {
  factory Variables$Mutation$CreateDocument({
    Input$CreateNewDocumentInput? input,
  }) =>
      Variables$Mutation$CreateDocument._({if (input != null) r'input': input});

  Variables$Mutation$CreateDocument._(this._$data);

  factory Variables$Mutation$CreateDocument.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input$CreateNewDocumentInput.fromJson(
              (l$input as Map<String, dynamic>),
            );
    }
    return Variables$Mutation$CreateDocument._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateNewDocumentInput? get input =>
      (_$data['input'] as Input$CreateNewDocumentInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateDocument<Variables$Mutation$CreateDocument>
  get copyWith => CopyWith$Variables$Mutation$CreateDocument(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateDocument ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([_$data.containsKey('input') ? l$input : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateDocument<TRes> {
  factory CopyWith$Variables$Mutation$CreateDocument(
    Variables$Mutation$CreateDocument instance,
    TRes Function(Variables$Mutation$CreateDocument) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateDocument;

  factory CopyWith$Variables$Mutation$CreateDocument.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateDocument;

  TRes call({Input$CreateNewDocumentInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateDocument<TRes>
    implements CopyWith$Variables$Mutation$CreateDocument<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateDocument(this._instance, this._then);

  final Variables$Mutation$CreateDocument _instance;

  final TRes Function(Variables$Mutation$CreateDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CreateDocument._({
      ..._instance._$data,
      if (input != _undefined)
        'input': (input as Input$CreateNewDocumentInput?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateDocument<TRes>
    implements CopyWith$Variables$Mutation$CreateDocument<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateDocument(this._res);

  TRes _res;

  call({Input$CreateNewDocumentInput? input}) => _res;
}

class Mutation$CreateDocument {
  Mutation$CreateDocument({this.createDocument, this.$__typename = 'Mutation'});

  factory Mutation$CreateDocument.fromJson(Map<String, dynamic> json) {
    final l$createDocument = json['createDocument'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateDocument(
      createDocument: l$createDocument == null
          ? null
          : Mutation$CreateDocument$createDocument.fromJson(
              (l$createDocument as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateDocument$createDocument? createDocument;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createDocument = createDocument;
    _resultData['createDocument'] = l$createDocument?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createDocument = createDocument;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createDocument, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateDocument || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createDocument = createDocument;
    final lOther$createDocument = other.createDocument;
    if (l$createDocument != lOther$createDocument) {
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

extension UtilityExtension$Mutation$CreateDocument on Mutation$CreateDocument {
  CopyWith$Mutation$CreateDocument<Mutation$CreateDocument> get copyWith =>
      CopyWith$Mutation$CreateDocument(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateDocument<TRes> {
  factory CopyWith$Mutation$CreateDocument(
    Mutation$CreateDocument instance,
    TRes Function(Mutation$CreateDocument) then,
  ) = _CopyWithImpl$Mutation$CreateDocument;

  factory CopyWith$Mutation$CreateDocument.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateDocument;

  TRes call({
    Mutation$CreateDocument$createDocument? createDocument,
    String? $__typename,
  });
  CopyWith$Mutation$CreateDocument$createDocument<TRes> get createDocument;
}

class _CopyWithImpl$Mutation$CreateDocument<TRes>
    implements CopyWith$Mutation$CreateDocument<TRes> {
  _CopyWithImpl$Mutation$CreateDocument(this._instance, this._then);

  final Mutation$CreateDocument _instance;

  final TRes Function(Mutation$CreateDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createDocument = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateDocument(
      createDocument: createDocument == _undefined
          ? _instance.createDocument
          : (createDocument as Mutation$CreateDocument$createDocument?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$CreateDocument$createDocument<TRes> get createDocument {
    final local$createDocument = _instance.createDocument;
    return local$createDocument == null
        ? CopyWith$Mutation$CreateDocument$createDocument.stub(_then(_instance))
        : CopyWith$Mutation$CreateDocument$createDocument(
            local$createDocument,
            (e) => call(createDocument: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$CreateDocument<TRes>
    implements CopyWith$Mutation$CreateDocument<TRes> {
  _CopyWithStubImpl$Mutation$CreateDocument(this._res);

  TRes _res;

  call({
    Mutation$CreateDocument$createDocument? createDocument,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$CreateDocument$createDocument<TRes> get createDocument =>
      CopyWith$Mutation$CreateDocument$createDocument.stub(_res);
}

const documentNodeMutationCreateDocument = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateDocument'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateNewDocumentInput'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'createDocument'),
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
                FieldNode(
                  name: NameNode(value: 'accountNumber'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'errors'),
                  alias: null,
                  arguments: [],
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
                        name: NameNode(value: 'code'),
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

class Mutation$CreateDocument$createDocument {
  Mutation$CreateDocument$createDocument({
    this.accountNumber,
    required this.errors,
    this.$__typename = 'UpdateAccountOutput',
  });

  factory Mutation$CreateDocument$createDocument.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accountNumber = json['accountNumber'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateDocument$createDocument(
      accountNumber: (l$accountNumber as String?),
      errors: (l$errors as List<dynamic>)
          .map(
            (e) => Mutation$CreateDocument$createDocument$errors.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? accountNumber;

  final List<Mutation$CreateDocument$createDocument$errors> errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountNumber = accountNumber;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountNumber,
      Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateDocument$createDocument ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$errors = errors;
    final lOther$errors = other.errors;
    if (l$errors.length != lOther$errors.length) {
      return false;
    }
    for (int i = 0; i < l$errors.length; i++) {
      final l$errors$entry = l$errors[i];
      final lOther$errors$entry = lOther$errors[i];
      if (l$errors$entry != lOther$errors$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateDocument$createDocument
    on Mutation$CreateDocument$createDocument {
  CopyWith$Mutation$CreateDocument$createDocument<
    Mutation$CreateDocument$createDocument
  >
  get copyWith =>
      CopyWith$Mutation$CreateDocument$createDocument(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateDocument$createDocument<TRes> {
  factory CopyWith$Mutation$CreateDocument$createDocument(
    Mutation$CreateDocument$createDocument instance,
    TRes Function(Mutation$CreateDocument$createDocument) then,
  ) = _CopyWithImpl$Mutation$CreateDocument$createDocument;

  factory CopyWith$Mutation$CreateDocument$createDocument.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateDocument$createDocument;

  TRes call({
    String? accountNumber,
    List<Mutation$CreateDocument$createDocument$errors>? errors,
    String? $__typename,
  });
  TRes errors(
    Iterable<Mutation$CreateDocument$createDocument$errors> Function(
      Iterable<
        CopyWith$Mutation$CreateDocument$createDocument$errors<
          Mutation$CreateDocument$createDocument$errors
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$CreateDocument$createDocument<TRes>
    implements CopyWith$Mutation$CreateDocument$createDocument<TRes> {
  _CopyWithImpl$Mutation$CreateDocument$createDocument(
    this._instance,
    this._then,
  );

  final Mutation$CreateDocument$createDocument _instance;

  final TRes Function(Mutation$CreateDocument$createDocument) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateDocument$createDocument(
      accountNumber: accountNumber == _undefined
          ? _instance.accountNumber
          : (accountNumber as String?),
      errors: errors == _undefined || errors == null
          ? _instance.errors
          : (errors as List<Mutation$CreateDocument$createDocument$errors>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes errors(
    Iterable<Mutation$CreateDocument$createDocument$errors> Function(
      Iterable<
        CopyWith$Mutation$CreateDocument$createDocument$errors<
          Mutation$CreateDocument$createDocument$errors
        >
      >,
    )
    _fn,
  ) => call(
    errors: _fn(
      _instance.errors.map(
        (e) =>
            CopyWith$Mutation$CreateDocument$createDocument$errors(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$CreateDocument$createDocument<TRes>
    implements CopyWith$Mutation$CreateDocument$createDocument<TRes> {
  _CopyWithStubImpl$Mutation$CreateDocument$createDocument(this._res);

  TRes _res;

  call({
    String? accountNumber,
    List<Mutation$CreateDocument$createDocument$errors>? errors,
    String? $__typename,
  }) => _res;

  errors(_fn) => _res;
}

class Mutation$CreateDocument$createDocument$errors {
  Mutation$CreateDocument$createDocument$errors({
    required this.message,
    required this.code,
    this.$__typename = 'UserError',
  });

  factory Mutation$CreateDocument$createDocument$errors.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateDocument$createDocument$errors(
      message: (l$message as String),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([l$message, l$code, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateDocument$createDocument$errors ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Mutation$CreateDocument$createDocument$errors
    on Mutation$CreateDocument$createDocument$errors {
  CopyWith$Mutation$CreateDocument$createDocument$errors<
    Mutation$CreateDocument$createDocument$errors
  >
  get copyWith =>
      CopyWith$Mutation$CreateDocument$createDocument$errors(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateDocument$createDocument$errors<TRes> {
  factory CopyWith$Mutation$CreateDocument$createDocument$errors(
    Mutation$CreateDocument$createDocument$errors instance,
    TRes Function(Mutation$CreateDocument$createDocument$errors) then,
  ) = _CopyWithImpl$Mutation$CreateDocument$createDocument$errors;

  factory CopyWith$Mutation$CreateDocument$createDocument$errors.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$CreateDocument$createDocument$errors;

  TRes call({String? message, String? code, String? $__typename});
}

class _CopyWithImpl$Mutation$CreateDocument$createDocument$errors<TRes>
    implements CopyWith$Mutation$CreateDocument$createDocument$errors<TRes> {
  _CopyWithImpl$Mutation$CreateDocument$createDocument$errors(
    this._instance,
    this._then,
  );

  final Mutation$CreateDocument$createDocument$errors _instance;

  final TRes Function(Mutation$CreateDocument$createDocument$errors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateDocument$createDocument$errors(
      message: message == _undefined || message == null
          ? _instance.message
          : (message as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$CreateDocument$createDocument$errors<TRes>
    implements CopyWith$Mutation$CreateDocument$createDocument$errors<TRes> {
  _CopyWithStubImpl$Mutation$CreateDocument$createDocument$errors(this._res);

  TRes _res;

  call({String? message, String? code, String? $__typename}) => _res;
}
