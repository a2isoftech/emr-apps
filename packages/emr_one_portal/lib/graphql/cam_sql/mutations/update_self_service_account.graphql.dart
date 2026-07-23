import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateSelfServeAccountAccount {
  factory Variables$Mutation$UpdateSelfServeAccountAccount(
          {Input$UpdateSelfServeAccountInput? input}) =>
      Variables$Mutation$UpdateSelfServeAccountAccount._({
        if (input != null) r'input': input,
      });

  Variables$Mutation$UpdateSelfServeAccountAccount._(this._$data);

  factory Variables$Mutation$UpdateSelfServeAccountAccount.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input$UpdateSelfServeAccountInput.fromJson(
              (l$input as Map<String, dynamic>));
    }
    return Variables$Mutation$UpdateSelfServeAccountAccount._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateSelfServeAccountInput? get input =>
      (_$data['input'] as Input$UpdateSelfServeAccountInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateSelfServeAccountAccount<
          Variables$Mutation$UpdateSelfServeAccountAccount>
      get copyWith => CopyWith$Variables$Mutation$UpdateSelfServeAccountAccount(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateSelfServeAccountAccount) ||
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

abstract class CopyWith$Variables$Mutation$UpdateSelfServeAccountAccount<TRes> {
  factory CopyWith$Variables$Mutation$UpdateSelfServeAccountAccount(
    Variables$Mutation$UpdateSelfServeAccountAccount instance,
    TRes Function(Variables$Mutation$UpdateSelfServeAccountAccount) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateSelfServeAccountAccount;

  factory CopyWith$Variables$Mutation$UpdateSelfServeAccountAccount.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateSelfServeAccountAccount;

  TRes call({Input$UpdateSelfServeAccountInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateSelfServeAccountAccount<TRes>
    implements CopyWith$Variables$Mutation$UpdateSelfServeAccountAccount<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateSelfServeAccountAccount(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateSelfServeAccountAccount _instance;

  final TRes Function(Variables$Mutation$UpdateSelfServeAccountAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$UpdateSelfServeAccountAccount._({
        ..._instance._$data,
        if (input != _undefined)
          'input': (input as Input$UpdateSelfServeAccountInput?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateSelfServeAccountAccount<TRes>
    implements CopyWith$Variables$Mutation$UpdateSelfServeAccountAccount<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateSelfServeAccountAccount(this._res);

  TRes _res;

  call({Input$UpdateSelfServeAccountInput? input}) => _res;
}

class Mutation$UpdateSelfServeAccountAccount {
  Mutation$UpdateSelfServeAccountAccount({
    this.updateSelfServeAccountAccount,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateSelfServeAccountAccount.fromJson(
      Map<String, dynamic> json) {
    final l$updateSelfServeAccountAccount =
        json['updateSelfServeAccountAccount'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateSelfServeAccountAccount(
      updateSelfServeAccountAccount: l$updateSelfServeAccountAccount == null
          ? null
          : Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount
              .fromJson(
                  (l$updateSelfServeAccountAccount as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount?
      updateSelfServeAccountAccount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateSelfServeAccountAccount = updateSelfServeAccountAccount;
    _resultData['updateSelfServeAccountAccount'] =
        l$updateSelfServeAccountAccount?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateSelfServeAccountAccount = updateSelfServeAccountAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateSelfServeAccountAccount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateSelfServeAccountAccount) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateSelfServeAccountAccount = updateSelfServeAccountAccount;
    final lOther$updateSelfServeAccountAccount =
        other.updateSelfServeAccountAccount;
    if (l$updateSelfServeAccountAccount !=
        lOther$updateSelfServeAccountAccount) {
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

extension UtilityExtension$Mutation$UpdateSelfServeAccountAccount
    on Mutation$UpdateSelfServeAccountAccount {
  CopyWith$Mutation$UpdateSelfServeAccountAccount<
          Mutation$UpdateSelfServeAccountAccount>
      get copyWith => CopyWith$Mutation$UpdateSelfServeAccountAccount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateSelfServeAccountAccount<TRes> {
  factory CopyWith$Mutation$UpdateSelfServeAccountAccount(
    Mutation$UpdateSelfServeAccountAccount instance,
    TRes Function(Mutation$UpdateSelfServeAccountAccount) then,
  ) = _CopyWithImpl$Mutation$UpdateSelfServeAccountAccount;

  factory CopyWith$Mutation$UpdateSelfServeAccountAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateSelfServeAccountAccount;

  TRes call({
    Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount?
        updateSelfServeAccountAccount,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount<
      TRes> get updateSelfServeAccountAccount;
}

class _CopyWithImpl$Mutation$UpdateSelfServeAccountAccount<TRes>
    implements CopyWith$Mutation$UpdateSelfServeAccountAccount<TRes> {
  _CopyWithImpl$Mutation$UpdateSelfServeAccountAccount(
    this._instance,
    this._then,
  );

  final Mutation$UpdateSelfServeAccountAccount _instance;

  final TRes Function(Mutation$UpdateSelfServeAccountAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateSelfServeAccountAccount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateSelfServeAccountAccount(
        updateSelfServeAccountAccount: updateSelfServeAccountAccount ==
                _undefined
            ? _instance.updateSelfServeAccountAccount
            : (updateSelfServeAccountAccount
                as Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount<
      TRes> get updateSelfServeAccountAccount {
    final local$updateSelfServeAccountAccount =
        _instance.updateSelfServeAccountAccount;
    return local$updateSelfServeAccountAccount == null
        ? CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount(
            local$updateSelfServeAccountAccount,
            (e) => call(updateSelfServeAccountAccount: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateSelfServeAccountAccount<TRes>
    implements CopyWith$Mutation$UpdateSelfServeAccountAccount<TRes> {
  _CopyWithStubImpl$Mutation$UpdateSelfServeAccountAccount(this._res);

  TRes _res;

  call({
    Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount?
        updateSelfServeAccountAccount,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount<
          TRes>
      get updateSelfServeAccountAccount =>
          CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount
              .stub(_res);
}

const documentNodeMutationUpdateSelfServeAccountAccount =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateSelfServeAccountAccount'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UpdateSelfServeAccountInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateSelfServeAccountAccount'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
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
            selectionSet: SelectionSetNode(selections: [
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
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount {
  Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount({
    this.accountNumber,
    this.errors,
    this.$__typename = 'UpdateRetailAccountOutput',
  });

  factory Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount.fromJson(
      Map<String, dynamic> json) {
    final l$accountNumber = json['accountNumber'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount(
      accountNumber: (l$accountNumber as String?),
      errors: (l$errors as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? accountNumber;

  final List<
          Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors?>?
      errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$errors = errors;
    _resultData['errors'] = l$errors?.map((e) => e?.toJson()).toList();
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
      l$errors == null ? null : Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount) ||
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
    if (l$errors != null && lOther$errors != null) {
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
    } else if (l$errors != lOther$errors) {
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

extension UtilityExtension$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount
    on Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount {
  CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount<
          Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount>
      get copyWith =>
          CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount<
    TRes> {
  factory CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount(
    Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount
        instance,
    TRes Function(
            Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount)
        then,
  ) = _CopyWithImpl$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount;

  factory CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount;

  TRes call({
    String? accountNumber,
    List<Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors?>?
        errors,
    String? $__typename,
  });
  TRes errors(
      Iterable<Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors?>? Function(
              Iterable<
                  CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors<
                      Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors>?>?)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount<
        TRes>
    implements
        CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount<
            TRes> {
  _CopyWithImpl$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount(
    this._instance,
    this._then,
  );

  final Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount
      _instance;

  final TRes Function(
          Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount(
        accountNumber: accountNumber == _undefined
            ? _instance.accountNumber
            : (accountNumber as String?),
        errors: errors == _undefined
            ? _instance.errors
            : (errors as List<
                Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes errors(
          Iterable<Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors?>? Function(
                  Iterable<
                      CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors<
                          Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors>?>?)
              _fn) =>
      call(
          errors: _fn(_instance.errors?.map((e) => e == null
              ? null
              : CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount<
        TRes>
    implements
        CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount(
      this._res);

  TRes _res;

  call({
    String? accountNumber,
    List<Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors?>?
        errors,
    String? $__typename,
  }) =>
      _res;

  errors(_fn) => _res;
}

class Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors {
  Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors({
    this.message,
    this.code,
    this.$__typename = 'UserError',
  });

  factory Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors(
      message: (l$message as String?),
      code: (l$code as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? message;

  final String? code;

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
    return Object.hashAll([
      l$message,
      l$code,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors) ||
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

extension UtilityExtension$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors
    on Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors {
  CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors<
          Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors>
      get copyWith =>
          CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors<
    TRes> {
  factory CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors(
    Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors
        instance,
    TRes Function(
            Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors)
        then,
  ) = _CopyWithImpl$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors;

  factory CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors;

  TRes call({
    String? message,
    String? code,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors<
        TRes>
    implements
        CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors<
            TRes> {
  _CopyWithImpl$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors(
    this._instance,
    this._then,
  );

  final Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors
      _instance;

  final TRes Function(
          Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors(
        message:
            message == _undefined ? _instance.message : (message as String?),
        code: code == _undefined ? _instance.code : (code as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors<
        TRes>
    implements
        CopyWith$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateSelfServeAccountAccount$updateSelfServeAccountAccount$errors(
      this._res);

  TRes _res;

  call({
    String? message,
    String? code,
    String? $__typename,
  }) =>
      _res;
}
