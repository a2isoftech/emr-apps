import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$ValidateBankAccount {
  factory Variables$Query$ValidateBankAccount({
    required String sortCode,
    required String accountNumber,
    required Enum$CountryId country,
  }) =>
      Variables$Query$ValidateBankAccount._({
        r'sortCode': sortCode,
        r'accountNumber': accountNumber,
        r'country': country,
      });

  Variables$Query$ValidateBankAccount._(this._$data);

  factory Variables$Query$ValidateBankAccount.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$sortCode = data['sortCode'];
    result$data['sortCode'] = (l$sortCode as String);
    final l$accountNumber = data['accountNumber'];
    result$data['accountNumber'] = (l$accountNumber as String);
    final l$country = data['country'];
    result$data['country'] = fromJson$Enum$CountryId((l$country as String));
    return Variables$Query$ValidateBankAccount._(result$data);
  }

  Map<String, dynamic> _$data;

  String get sortCode => (_$data['sortCode'] as String);

  String get accountNumber => (_$data['accountNumber'] as String);

  Enum$CountryId get country => (_$data['country'] as Enum$CountryId);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$sortCode = sortCode;
    result$data['sortCode'] = l$sortCode;
    final l$accountNumber = accountNumber;
    result$data['accountNumber'] = l$accountNumber;
    final l$country = country;
    result$data['country'] = toJson$Enum$CountryId(l$country);
    return result$data;
  }

  CopyWith$Variables$Query$ValidateBankAccount<
          Variables$Query$ValidateBankAccount>
      get copyWith => CopyWith$Variables$Query$ValidateBankAccount(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ValidateBankAccount) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sortCode = sortCode;
    final lOther$sortCode = other.sortCode;
    if (l$sortCode != lOther$sortCode) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$sortCode = sortCode;
    final l$accountNumber = accountNumber;
    final l$country = country;
    return Object.hashAll([
      l$sortCode,
      l$accountNumber,
      l$country,
    ]);
  }
}

abstract class CopyWith$Variables$Query$ValidateBankAccount<TRes> {
  factory CopyWith$Variables$Query$ValidateBankAccount(
    Variables$Query$ValidateBankAccount instance,
    TRes Function(Variables$Query$ValidateBankAccount) then,
  ) = _CopyWithImpl$Variables$Query$ValidateBankAccount;

  factory CopyWith$Variables$Query$ValidateBankAccount.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ValidateBankAccount;

  TRes call({
    String? sortCode,
    String? accountNumber,
    Enum$CountryId? country,
  });
}

class _CopyWithImpl$Variables$Query$ValidateBankAccount<TRes>
    implements CopyWith$Variables$Query$ValidateBankAccount<TRes> {
  _CopyWithImpl$Variables$Query$ValidateBankAccount(
    this._instance,
    this._then,
  );

  final Variables$Query$ValidateBankAccount _instance;

  final TRes Function(Variables$Query$ValidateBankAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sortCode = _undefined,
    Object? accountNumber = _undefined,
    Object? country = _undefined,
  }) =>
      _then(Variables$Query$ValidateBankAccount._({
        ..._instance._$data,
        if (sortCode != _undefined && sortCode != null)
          'sortCode': (sortCode as String),
        if (accountNumber != _undefined && accountNumber != null)
          'accountNumber': (accountNumber as String),
        if (country != _undefined && country != null)
          'country': (country as Enum$CountryId),
      }));
}

class _CopyWithStubImpl$Variables$Query$ValidateBankAccount<TRes>
    implements CopyWith$Variables$Query$ValidateBankAccount<TRes> {
  _CopyWithStubImpl$Variables$Query$ValidateBankAccount(this._res);

  TRes _res;

  call({
    String? sortCode,
    String? accountNumber,
    Enum$CountryId? country,
  }) =>
      _res;
}

class Query$ValidateBankAccount {
  Query$ValidateBankAccount({
    this.validatedBankAccount,
    this.$__typename = 'Query',
  });

  factory Query$ValidateBankAccount.fromJson(Map<String, dynamic> json) {
    final l$validatedBankAccount = json['validatedBankAccount'];
    final l$$__typename = json['__typename'];
    return Query$ValidateBankAccount(
      validatedBankAccount: l$validatedBankAccount == null
          ? null
          : Query$ValidateBankAccount$validatedBankAccount.fromJson(
              (l$validatedBankAccount as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ValidateBankAccount$validatedBankAccount? validatedBankAccount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$validatedBankAccount = validatedBankAccount;
    _resultData['validatedBankAccount'] = l$validatedBankAccount?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$validatedBankAccount = validatedBankAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$validatedBankAccount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ValidateBankAccount) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$validatedBankAccount = validatedBankAccount;
    final lOther$validatedBankAccount = other.validatedBankAccount;
    if (l$validatedBankAccount != lOther$validatedBankAccount) {
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

extension UtilityExtension$Query$ValidateBankAccount
    on Query$ValidateBankAccount {
  CopyWith$Query$ValidateBankAccount<Query$ValidateBankAccount> get copyWith =>
      CopyWith$Query$ValidateBankAccount(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ValidateBankAccount<TRes> {
  factory CopyWith$Query$ValidateBankAccount(
    Query$ValidateBankAccount instance,
    TRes Function(Query$ValidateBankAccount) then,
  ) = _CopyWithImpl$Query$ValidateBankAccount;

  factory CopyWith$Query$ValidateBankAccount.stub(TRes res) =
      _CopyWithStubImpl$Query$ValidateBankAccount;

  TRes call({
    Query$ValidateBankAccount$validatedBankAccount? validatedBankAccount,
    String? $__typename,
  });
  CopyWith$Query$ValidateBankAccount$validatedBankAccount<TRes>
      get validatedBankAccount;
}

class _CopyWithImpl$Query$ValidateBankAccount<TRes>
    implements CopyWith$Query$ValidateBankAccount<TRes> {
  _CopyWithImpl$Query$ValidateBankAccount(
    this._instance,
    this._then,
  );

  final Query$ValidateBankAccount _instance;

  final TRes Function(Query$ValidateBankAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? validatedBankAccount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ValidateBankAccount(
        validatedBankAccount: validatedBankAccount == _undefined
            ? _instance.validatedBankAccount
            : (validatedBankAccount
                as Query$ValidateBankAccount$validatedBankAccount?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ValidateBankAccount$validatedBankAccount<TRes>
      get validatedBankAccount {
    final local$validatedBankAccount = _instance.validatedBankAccount;
    return local$validatedBankAccount == null
        ? CopyWith$Query$ValidateBankAccount$validatedBankAccount.stub(
            _then(_instance))
        : CopyWith$Query$ValidateBankAccount$validatedBankAccount(
            local$validatedBankAccount, (e) => call(validatedBankAccount: e));
  }
}

class _CopyWithStubImpl$Query$ValidateBankAccount<TRes>
    implements CopyWith$Query$ValidateBankAccount<TRes> {
  _CopyWithStubImpl$Query$ValidateBankAccount(this._res);

  TRes _res;

  call({
    Query$ValidateBankAccount$validatedBankAccount? validatedBankAccount,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ValidateBankAccount$validatedBankAccount<TRes>
      get validatedBankAccount =>
          CopyWith$Query$ValidateBankAccount$validatedBankAccount.stub(_res);
}

const documentNodeQueryValidateBankAccount = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ValidateBankAccount'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'sortCode')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'accountNumber')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'country')),
        type: NamedTypeNode(
          name: NameNode(value: 'CountryId'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'validatedBankAccount'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'sortCode'),
            value: VariableNode(name: NameNode(value: 'sortCode')),
          ),
          ArgumentNode(
            name: NameNode(value: 'accountNumber'),
            value: VariableNode(name: NameNode(value: 'accountNumber')),
          ),
          ArgumentNode(
            name: NameNode(value: 'country'),
            value: VariableNode(name: NameNode(value: 'country')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'isCorrect'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bank'),
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
]);

class Query$ValidateBankAccount$validatedBankAccount {
  Query$ValidateBankAccount$validatedBankAccount({
    required this.isCorrect,
    this.bank,
    this.$__typename = 'ValidatedBankAccount',
  });

  factory Query$ValidateBankAccount$validatedBankAccount.fromJson(
      Map<String, dynamic> json) {
    final l$isCorrect = json['isCorrect'];
    final l$bank = json['bank'];
    final l$$__typename = json['__typename'];
    return Query$ValidateBankAccount$validatedBankAccount(
      isCorrect: (l$isCorrect as bool),
      bank: (l$bank as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool isCorrect;

  final String? bank;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isCorrect = isCorrect;
    _resultData['isCorrect'] = l$isCorrect;
    final l$bank = bank;
    _resultData['bank'] = l$bank;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isCorrect = isCorrect;
    final l$bank = bank;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$isCorrect,
      l$bank,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ValidateBankAccount$validatedBankAccount) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isCorrect = isCorrect;
    final lOther$isCorrect = other.isCorrect;
    if (l$isCorrect != lOther$isCorrect) {
      return false;
    }
    final l$bank = bank;
    final lOther$bank = other.bank;
    if (l$bank != lOther$bank) {
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

extension UtilityExtension$Query$ValidateBankAccount$validatedBankAccount
    on Query$ValidateBankAccount$validatedBankAccount {
  CopyWith$Query$ValidateBankAccount$validatedBankAccount<
          Query$ValidateBankAccount$validatedBankAccount>
      get copyWith => CopyWith$Query$ValidateBankAccount$validatedBankAccount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ValidateBankAccount$validatedBankAccount<TRes> {
  factory CopyWith$Query$ValidateBankAccount$validatedBankAccount(
    Query$ValidateBankAccount$validatedBankAccount instance,
    TRes Function(Query$ValidateBankAccount$validatedBankAccount) then,
  ) = _CopyWithImpl$Query$ValidateBankAccount$validatedBankAccount;

  factory CopyWith$Query$ValidateBankAccount$validatedBankAccount.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ValidateBankAccount$validatedBankAccount;

  TRes call({
    bool? isCorrect,
    String? bank,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ValidateBankAccount$validatedBankAccount<TRes>
    implements CopyWith$Query$ValidateBankAccount$validatedBankAccount<TRes> {
  _CopyWithImpl$Query$ValidateBankAccount$validatedBankAccount(
    this._instance,
    this._then,
  );

  final Query$ValidateBankAccount$validatedBankAccount _instance;

  final TRes Function(Query$ValidateBankAccount$validatedBankAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isCorrect = _undefined,
    Object? bank = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ValidateBankAccount$validatedBankAccount(
        isCorrect: isCorrect == _undefined || isCorrect == null
            ? _instance.isCorrect
            : (isCorrect as bool),
        bank: bank == _undefined ? _instance.bank : (bank as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ValidateBankAccount$validatedBankAccount<TRes>
    implements CopyWith$Query$ValidateBankAccount$validatedBankAccount<TRes> {
  _CopyWithStubImpl$Query$ValidateBankAccount$validatedBankAccount(this._res);

  TRes _res;

  call({
    bool? isCorrect,
    String? bank,
    String? $__typename,
  }) =>
      _res;
}
