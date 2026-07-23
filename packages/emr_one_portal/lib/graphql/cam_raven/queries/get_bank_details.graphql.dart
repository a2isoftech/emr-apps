import 'package:gql/ast.dart';

class Query$GetBankDetails {
  Query$GetBankDetails({
    required this.account,
    this.$__typename = 'Query',
  });

  factory Query$GetBankDetails.fromJson(Map<String, dynamic> json) {
    final l$account = json['account'];
    final l$$__typename = json['__typename'];
    return Query$GetBankDetails(
      account: Query$GetBankDetails$account.fromJson(
          (l$account as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetBankDetails$account account;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$account = account;
    _resultData['account'] = l$account.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$account = account;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$account,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetBankDetails) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$account = account;
    final lOther$account = other.account;
    if (l$account != lOther$account) {
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

extension UtilityExtension$Query$GetBankDetails on Query$GetBankDetails {
  CopyWith$Query$GetBankDetails<Query$GetBankDetails> get copyWith =>
      CopyWith$Query$GetBankDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetBankDetails<TRes> {
  factory CopyWith$Query$GetBankDetails(
    Query$GetBankDetails instance,
    TRes Function(Query$GetBankDetails) then,
  ) = _CopyWithImpl$Query$GetBankDetails;

  factory CopyWith$Query$GetBankDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$GetBankDetails;

  TRes call({
    Query$GetBankDetails$account? account,
    String? $__typename,
  });
  CopyWith$Query$GetBankDetails$account<TRes> get account;
}

class _CopyWithImpl$Query$GetBankDetails<TRes>
    implements CopyWith$Query$GetBankDetails<TRes> {
  _CopyWithImpl$Query$GetBankDetails(
    this._instance,
    this._then,
  );

  final Query$GetBankDetails _instance;

  final TRes Function(Query$GetBankDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? account = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetBankDetails(
        account: account == _undefined || account == null
            ? _instance.account
            : (account as Query$GetBankDetails$account),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetBankDetails$account<TRes> get account {
    final local$account = _instance.account;
    return CopyWith$Query$GetBankDetails$account(
        local$account, (e) => call(account: e));
  }
}

class _CopyWithStubImpl$Query$GetBankDetails<TRes>
    implements CopyWith$Query$GetBankDetails<TRes> {
  _CopyWithStubImpl$Query$GetBankDetails(this._res);

  TRes _res;

  call({
    Query$GetBankDetails$account? account,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetBankDetails$account<TRes> get account =>
      CopyWith$Query$GetBankDetails$account.stub(_res);
}

const documentNodeQueryGetBankDetails = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetBankDetails'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'account'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bankAccounts'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'sortCode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'reference'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'bankName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'accountHolderName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'ibanCode'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'swiftCode'),
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

class Query$GetBankDetails$account {
  Query$GetBankDetails$account({
    required this.name,
    this.bankAccounts,
    this.$__typename = 'Account',
  });

  factory Query$GetBankDetails$account.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$bankAccounts = json['bankAccounts'];
    final l$$__typename = json['__typename'];
    return Query$GetBankDetails$account(
      name: (l$name as String),
      bankAccounts: (l$bankAccounts as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetBankDetails$account$bankAccounts.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final List<Query$GetBankDetails$account$bankAccounts?>? bankAccounts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$bankAccounts = bankAccounts;
    _resultData['bankAccounts'] =
        l$bankAccounts?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$bankAccounts = bankAccounts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$bankAccounts == null
          ? null
          : Object.hashAll(l$bankAccounts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetBankDetails$account) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$bankAccounts = bankAccounts;
    final lOther$bankAccounts = other.bankAccounts;
    if (l$bankAccounts != null && lOther$bankAccounts != null) {
      if (l$bankAccounts.length != lOther$bankAccounts.length) {
        return false;
      }
      for (int i = 0; i < l$bankAccounts.length; i++) {
        final l$bankAccounts$entry = l$bankAccounts[i];
        final lOther$bankAccounts$entry = lOther$bankAccounts[i];
        if (l$bankAccounts$entry != lOther$bankAccounts$entry) {
          return false;
        }
      }
    } else if (l$bankAccounts != lOther$bankAccounts) {
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

extension UtilityExtension$Query$GetBankDetails$account
    on Query$GetBankDetails$account {
  CopyWith$Query$GetBankDetails$account<Query$GetBankDetails$account>
      get copyWith => CopyWith$Query$GetBankDetails$account(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetBankDetails$account<TRes> {
  factory CopyWith$Query$GetBankDetails$account(
    Query$GetBankDetails$account instance,
    TRes Function(Query$GetBankDetails$account) then,
  ) = _CopyWithImpl$Query$GetBankDetails$account;

  factory CopyWith$Query$GetBankDetails$account.stub(TRes res) =
      _CopyWithStubImpl$Query$GetBankDetails$account;

  TRes call({
    String? name,
    List<Query$GetBankDetails$account$bankAccounts?>? bankAccounts,
    String? $__typename,
  });
  TRes bankAccounts(
      Iterable<Query$GetBankDetails$account$bankAccounts?>? Function(
              Iterable<
                  CopyWith$Query$GetBankDetails$account$bankAccounts<
                      Query$GetBankDetails$account$bankAccounts>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetBankDetails$account<TRes>
    implements CopyWith$Query$GetBankDetails$account<TRes> {
  _CopyWithImpl$Query$GetBankDetails$account(
    this._instance,
    this._then,
  );

  final Query$GetBankDetails$account _instance;

  final TRes Function(Query$GetBankDetails$account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? bankAccounts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetBankDetails$account(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        bankAccounts: bankAccounts == _undefined
            ? _instance.bankAccounts
            : (bankAccounts
                as List<Query$GetBankDetails$account$bankAccounts?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes bankAccounts(
          Iterable<Query$GetBankDetails$account$bankAccounts?>? Function(
                  Iterable<
                      CopyWith$Query$GetBankDetails$account$bankAccounts<
                          Query$GetBankDetails$account$bankAccounts>?>?)
              _fn) =>
      call(
          bankAccounts: _fn(_instance.bankAccounts?.map((e) => e == null
              ? null
              : CopyWith$Query$GetBankDetails$account$bankAccounts(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetBankDetails$account<TRes>
    implements CopyWith$Query$GetBankDetails$account<TRes> {
  _CopyWithStubImpl$Query$GetBankDetails$account(this._res);

  TRes _res;

  call({
    String? name,
    List<Query$GetBankDetails$account$bankAccounts?>? bankAccounts,
    String? $__typename,
  }) =>
      _res;

  bankAccounts(_fn) => _res;
}

class Query$GetBankDetails$account$bankAccounts {
  Query$GetBankDetails$account$bankAccounts({
    required this.accountNumber,
    required this.sortCode,
    this.reference,
    required this.bankName,
    required this.accountHolderName,
    this.ibanCode,
    this.swiftCode,
    this.$__typename = 'BankAccount',
  });

  factory Query$GetBankDetails$account$bankAccounts.fromJson(
      Map<String, dynamic> json) {
    final l$accountNumber = json['accountNumber'];
    final l$sortCode = json['sortCode'];
    final l$reference = json['reference'];
    final l$bankName = json['bankName'];
    final l$accountHolderName = json['accountHolderName'];
    final l$ibanCode = json['ibanCode'];
    final l$swiftCode = json['swiftCode'];
    final l$$__typename = json['__typename'];
    return Query$GetBankDetails$account$bankAccounts(
      accountNumber: (l$accountNumber as String),
      sortCode: (l$sortCode as String),
      reference: (l$reference as String?),
      bankName: (l$bankName as String),
      accountHolderName: (l$accountHolderName as String),
      ibanCode: (l$ibanCode as String?),
      swiftCode: (l$swiftCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String accountNumber;

  final String sortCode;

  final String? reference;

  final String bankName;

  final String accountHolderName;

  final String? ibanCode;

  final String? swiftCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$sortCode = sortCode;
    _resultData['sortCode'] = l$sortCode;
    final l$reference = reference;
    _resultData['reference'] = l$reference;
    final l$bankName = bankName;
    _resultData['bankName'] = l$bankName;
    final l$accountHolderName = accountHolderName;
    _resultData['accountHolderName'] = l$accountHolderName;
    final l$ibanCode = ibanCode;
    _resultData['ibanCode'] = l$ibanCode;
    final l$swiftCode = swiftCode;
    _resultData['swiftCode'] = l$swiftCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountNumber = accountNumber;
    final l$sortCode = sortCode;
    final l$reference = reference;
    final l$bankName = bankName;
    final l$accountHolderName = accountHolderName;
    final l$ibanCode = ibanCode;
    final l$swiftCode = swiftCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountNumber,
      l$sortCode,
      l$reference,
      l$bankName,
      l$accountHolderName,
      l$ibanCode,
      l$swiftCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetBankDetails$account$bankAccounts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$sortCode = sortCode;
    final lOther$sortCode = other.sortCode;
    if (l$sortCode != lOther$sortCode) {
      return false;
    }
    final l$reference = reference;
    final lOther$reference = other.reference;
    if (l$reference != lOther$reference) {
      return false;
    }
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (l$bankName != lOther$bankName) {
      return false;
    }
    final l$accountHolderName = accountHolderName;
    final lOther$accountHolderName = other.accountHolderName;
    if (l$accountHolderName != lOther$accountHolderName) {
      return false;
    }
    final l$ibanCode = ibanCode;
    final lOther$ibanCode = other.ibanCode;
    if (l$ibanCode != lOther$ibanCode) {
      return false;
    }
    final l$swiftCode = swiftCode;
    final lOther$swiftCode = other.swiftCode;
    if (l$swiftCode != lOther$swiftCode) {
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

extension UtilityExtension$Query$GetBankDetails$account$bankAccounts
    on Query$GetBankDetails$account$bankAccounts {
  CopyWith$Query$GetBankDetails$account$bankAccounts<
          Query$GetBankDetails$account$bankAccounts>
      get copyWith => CopyWith$Query$GetBankDetails$account$bankAccounts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetBankDetails$account$bankAccounts<TRes> {
  factory CopyWith$Query$GetBankDetails$account$bankAccounts(
    Query$GetBankDetails$account$bankAccounts instance,
    TRes Function(Query$GetBankDetails$account$bankAccounts) then,
  ) = _CopyWithImpl$Query$GetBankDetails$account$bankAccounts;

  factory CopyWith$Query$GetBankDetails$account$bankAccounts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetBankDetails$account$bankAccounts;

  TRes call({
    String? accountNumber,
    String? sortCode,
    String? reference,
    String? bankName,
    String? accountHolderName,
    String? ibanCode,
    String? swiftCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetBankDetails$account$bankAccounts<TRes>
    implements CopyWith$Query$GetBankDetails$account$bankAccounts<TRes> {
  _CopyWithImpl$Query$GetBankDetails$account$bankAccounts(
    this._instance,
    this._then,
  );

  final Query$GetBankDetails$account$bankAccounts _instance;

  final TRes Function(Query$GetBankDetails$account$bankAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? sortCode = _undefined,
    Object? reference = _undefined,
    Object? bankName = _undefined,
    Object? accountHolderName = _undefined,
    Object? ibanCode = _undefined,
    Object? swiftCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetBankDetails$account$bankAccounts(
        accountNumber: accountNumber == _undefined || accountNumber == null
            ? _instance.accountNumber
            : (accountNumber as String),
        sortCode: sortCode == _undefined || sortCode == null
            ? _instance.sortCode
            : (sortCode as String),
        reference: reference == _undefined
            ? _instance.reference
            : (reference as String?),
        bankName: bankName == _undefined || bankName == null
            ? _instance.bankName
            : (bankName as String),
        accountHolderName:
            accountHolderName == _undefined || accountHolderName == null
                ? _instance.accountHolderName
                : (accountHolderName as String),
        ibanCode:
            ibanCode == _undefined ? _instance.ibanCode : (ibanCode as String?),
        swiftCode: swiftCode == _undefined
            ? _instance.swiftCode
            : (swiftCode as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetBankDetails$account$bankAccounts<TRes>
    implements CopyWith$Query$GetBankDetails$account$bankAccounts<TRes> {
  _CopyWithStubImpl$Query$GetBankDetails$account$bankAccounts(this._res);

  TRes _res;

  call({
    String? accountNumber,
    String? sortCode,
    String? reference,
    String? bankName,
    String? accountHolderName,
    String? ibanCode,
    String? swiftCode,
    String? $__typename,
  }) =>
      _res;
}
