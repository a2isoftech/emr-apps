import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Query$GetAccountDetails {
  Query$GetAccountDetails({
    this.account,
    this.$__typename = 'Query',
  });

  factory Query$GetAccountDetails.fromJson(Map<String, dynamic> json) {
    final l$account = json['account'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails(
      account: l$account == null
          ? null
          : Query$GetAccountDetails$account.fromJson(
              (l$account as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountDetails$account? account;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$account = account;
    _resultData['account'] = l$account?.toJson();
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
    if (!(other is Query$GetAccountDetails) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetAccountDetails on Query$GetAccountDetails {
  CopyWith$Query$GetAccountDetails<Query$GetAccountDetails> get copyWith =>
      CopyWith$Query$GetAccountDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountDetails<TRes> {
  factory CopyWith$Query$GetAccountDetails(
    Query$GetAccountDetails instance,
    TRes Function(Query$GetAccountDetails) then,
  ) = _CopyWithImpl$Query$GetAccountDetails;

  factory CopyWith$Query$GetAccountDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails;

  TRes call({
    Query$GetAccountDetails$account? account,
    String? $__typename,
  });
  CopyWith$Query$GetAccountDetails$account<TRes> get account;
}

class _CopyWithImpl$Query$GetAccountDetails<TRes>
    implements CopyWith$Query$GetAccountDetails<TRes> {
  _CopyWithImpl$Query$GetAccountDetails(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails _instance;

  final TRes Function(Query$GetAccountDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? account = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountDetails(
        account: account == _undefined
            ? _instance.account
            : (account as Query$GetAccountDetails$account?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccountDetails$account<TRes> get account {
    final local$account = _instance.account;
    return local$account == null
        ? CopyWith$Query$GetAccountDetails$account.stub(_then(_instance))
        : CopyWith$Query$GetAccountDetails$account(
            local$account, (e) => call(account: e));
  }
}

class _CopyWithStubImpl$Query$GetAccountDetails<TRes>
    implements CopyWith$Query$GetAccountDetails<TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails(this._res);

  TRes _res;

  call({
    Query$GetAccountDetails$account? account,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccountDetails$account<TRes> get account =>
      CopyWith$Query$GetAccountDetails$account.stub(_res);
}

const documentNodeQueryGetAccountDetails = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAccountDetails'),
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
            name: NameNode(value: 'accountContacts'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'accountContactTypeId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'contact'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'firstName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'middleName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'lastName'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'contactInformation'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'value'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'contactInformationTypeId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'countryId'),
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
                    name: NameNode(value: 'address'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'countryId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'address1'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'address2'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'address3'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'address4'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'address5'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'address6'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'postCode'),
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
          FieldNode(
            name: NameNode(value: 'businessDetails'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'vatNumber'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'paymentTerm'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'paymentMethod'),
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
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'paymentTermType'),
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
          FieldNode(
            name: NameNode(value: 'bankAccounts'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'bankAccountNumber'),
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

class Query$GetAccountDetails$account {
  Query$GetAccountDetails$account({
    this.name,
    this.accountContacts,
    this.businessDetails,
    this.bankAccounts,
    this.$__typename = 'Account',
  });

  factory Query$GetAccountDetails$account.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$accountContacts = json['accountContacts'];
    final l$businessDetails = json['businessDetails'];
    final l$bankAccounts = json['bankAccounts'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account(
      name: (l$name as String?),
      accountContacts: (l$accountContacts as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetAccountDetails$account$accountContacts.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      businessDetails: l$businessDetails == null
          ? null
          : Query$GetAccountDetails$account$businessDetails.fromJson(
              (l$businessDetails as Map<String, dynamic>)),
      bankAccounts: (l$bankAccounts as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetAccountDetails$account$bankAccounts.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final List<Query$GetAccountDetails$account$accountContacts?>? accountContacts;

  final Query$GetAccountDetails$account$businessDetails? businessDetails;

  final List<Query$GetAccountDetails$account$bankAccounts?>? bankAccounts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$accountContacts = accountContacts;
    _resultData['accountContacts'] =
        l$accountContacts?.map((e) => e?.toJson()).toList();
    final l$businessDetails = businessDetails;
    _resultData['businessDetails'] = l$businessDetails?.toJson();
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
    final l$accountContacts = accountContacts;
    final l$businessDetails = businessDetails;
    final l$bankAccounts = bankAccounts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$accountContacts == null
          ? null
          : Object.hashAll(l$accountContacts.map((v) => v)),
      l$businessDetails,
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
    if (!(other is Query$GetAccountDetails$account) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$accountContacts = accountContacts;
    final lOther$accountContacts = other.accountContacts;
    if (l$accountContacts != null && lOther$accountContacts != null) {
      if (l$accountContacts.length != lOther$accountContacts.length) {
        return false;
      }
      for (int i = 0; i < l$accountContacts.length; i++) {
        final l$accountContacts$entry = l$accountContacts[i];
        final lOther$accountContacts$entry = lOther$accountContacts[i];
        if (l$accountContacts$entry != lOther$accountContacts$entry) {
          return false;
        }
      }
    } else if (l$accountContacts != lOther$accountContacts) {
      return false;
    }
    final l$businessDetails = businessDetails;
    final lOther$businessDetails = other.businessDetails;
    if (l$businessDetails != lOther$businessDetails) {
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

extension UtilityExtension$Query$GetAccountDetails$account
    on Query$GetAccountDetails$account {
  CopyWith$Query$GetAccountDetails$account<Query$GetAccountDetails$account>
      get copyWith => CopyWith$Query$GetAccountDetails$account(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account<TRes> {
  factory CopyWith$Query$GetAccountDetails$account(
    Query$GetAccountDetails$account instance,
    TRes Function(Query$GetAccountDetails$account) then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account;

  factory CopyWith$Query$GetAccountDetails$account.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account;

  TRes call({
    String? name,
    List<Query$GetAccountDetails$account$accountContacts?>? accountContacts,
    Query$GetAccountDetails$account$businessDetails? businessDetails,
    List<Query$GetAccountDetails$account$bankAccounts?>? bankAccounts,
    String? $__typename,
  });
  TRes accountContacts(
      Iterable<Query$GetAccountDetails$account$accountContacts?>? Function(
              Iterable<
                  CopyWith$Query$GetAccountDetails$account$accountContacts<
                      Query$GetAccountDetails$account$accountContacts>?>?)
          _fn);
  CopyWith$Query$GetAccountDetails$account$businessDetails<TRes>
      get businessDetails;
  TRes bankAccounts(
      Iterable<Query$GetAccountDetails$account$bankAccounts?>? Function(
              Iterable<
                  CopyWith$Query$GetAccountDetails$account$bankAccounts<
                      Query$GetAccountDetails$account$bankAccounts>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetAccountDetails$account<TRes>
    implements CopyWith$Query$GetAccountDetails$account<TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account _instance;

  final TRes Function(Query$GetAccountDetails$account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? accountContacts = _undefined,
    Object? businessDetails = _undefined,
    Object? bankAccounts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountDetails$account(
        name: name == _undefined ? _instance.name : (name as String?),
        accountContacts: accountContacts == _undefined
            ? _instance.accountContacts
            : (accountContacts
                as List<Query$GetAccountDetails$account$accountContacts?>?),
        businessDetails: businessDetails == _undefined
            ? _instance.businessDetails
            : (businessDetails
                as Query$GetAccountDetails$account$businessDetails?),
        bankAccounts: bankAccounts == _undefined
            ? _instance.bankAccounts
            : (bankAccounts
                as List<Query$GetAccountDetails$account$bankAccounts?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes accountContacts(
          Iterable<Query$GetAccountDetails$account$accountContacts?>? Function(
                  Iterable<
                      CopyWith$Query$GetAccountDetails$account$accountContacts<
                          Query$GetAccountDetails$account$accountContacts>?>?)
              _fn) =>
      call(
          accountContacts: _fn(_instance.accountContacts?.map((e) => e == null
              ? null
              : CopyWith$Query$GetAccountDetails$account$accountContacts(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$GetAccountDetails$account$businessDetails<TRes>
      get businessDetails {
    final local$businessDetails = _instance.businessDetails;
    return local$businessDetails == null
        ? CopyWith$Query$GetAccountDetails$account$businessDetails.stub(
            _then(_instance))
        : CopyWith$Query$GetAccountDetails$account$businessDetails(
            local$businessDetails, (e) => call(businessDetails: e));
  }

  TRes bankAccounts(
          Iterable<Query$GetAccountDetails$account$bankAccounts?>? Function(
                  Iterable<
                      CopyWith$Query$GetAccountDetails$account$bankAccounts<
                          Query$GetAccountDetails$account$bankAccounts>?>?)
              _fn) =>
      call(
          bankAccounts: _fn(_instance.bankAccounts?.map((e) => e == null
              ? null
              : CopyWith$Query$GetAccountDetails$account$bankAccounts(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetAccountDetails$account<TRes>
    implements CopyWith$Query$GetAccountDetails$account<TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account(this._res);

  TRes _res;

  call({
    String? name,
    List<Query$GetAccountDetails$account$accountContacts?>? accountContacts,
    Query$GetAccountDetails$account$businessDetails? businessDetails,
    List<Query$GetAccountDetails$account$bankAccounts?>? bankAccounts,
    String? $__typename,
  }) =>
      _res;

  accountContacts(_fn) => _res;

  CopyWith$Query$GetAccountDetails$account$businessDetails<TRes>
      get businessDetails =>
          CopyWith$Query$GetAccountDetails$account$businessDetails.stub(_res);

  bankAccounts(_fn) => _res;
}

class Query$GetAccountDetails$account$accountContacts {
  Query$GetAccountDetails$account$accountContacts({
    required this.accountContactTypeId,
    this.contact,
    this.$__typename = 'AccountContact',
  });

  factory Query$GetAccountDetails$account$accountContacts.fromJson(
      Map<String, dynamic> json) {
    final l$accountContactTypeId = json['accountContactTypeId'];
    final l$contact = json['contact'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$accountContacts(
      accountContactTypeId: fromJson$Enum$AccountContactTypeId(
          (l$accountContactTypeId as String)),
      contact: l$contact == null
          ? null
          : Query$GetAccountDetails$account$accountContacts$contact.fromJson(
              (l$contact as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$AccountContactTypeId accountContactTypeId;

  final Query$GetAccountDetails$account$accountContacts$contact? contact;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountContactTypeId = accountContactTypeId;
    _resultData['accountContactTypeId'] =
        toJson$Enum$AccountContactTypeId(l$accountContactTypeId);
    final l$contact = contact;
    _resultData['contact'] = l$contact?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountContactTypeId = accountContactTypeId;
    final l$contact = contact;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountContactTypeId,
      l$contact,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAccountDetails$account$accountContacts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountContactTypeId = accountContactTypeId;
    final lOther$accountContactTypeId = other.accountContactTypeId;
    if (l$accountContactTypeId != lOther$accountContactTypeId) {
      return false;
    }
    final l$contact = contact;
    final lOther$contact = other.contact;
    if (l$contact != lOther$contact) {
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

extension UtilityExtension$Query$GetAccountDetails$account$accountContacts
    on Query$GetAccountDetails$account$accountContacts {
  CopyWith$Query$GetAccountDetails$account$accountContacts<
          Query$GetAccountDetails$account$accountContacts>
      get copyWith => CopyWith$Query$GetAccountDetails$account$accountContacts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$accountContacts<TRes> {
  factory CopyWith$Query$GetAccountDetails$account$accountContacts(
    Query$GetAccountDetails$account$accountContacts instance,
    TRes Function(Query$GetAccountDetails$account$accountContacts) then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$accountContacts;

  factory CopyWith$Query$GetAccountDetails$account$accountContacts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts;

  TRes call({
    Enum$AccountContactTypeId? accountContactTypeId,
    Query$GetAccountDetails$account$accountContacts$contact? contact,
    String? $__typename,
  });
  CopyWith$Query$GetAccountDetails$account$accountContacts$contact<TRes>
      get contact;
}

class _CopyWithImpl$Query$GetAccountDetails$account$accountContacts<TRes>
    implements CopyWith$Query$GetAccountDetails$account$accountContacts<TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$accountContacts(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$accountContacts _instance;

  final TRes Function(Query$GetAccountDetails$account$accountContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountContactTypeId = _undefined,
    Object? contact = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountDetails$account$accountContacts(
        accountContactTypeId:
            accountContactTypeId == _undefined || accountContactTypeId == null
                ? _instance.accountContactTypeId
                : (accountContactTypeId as Enum$AccountContactTypeId),
        contact: contact == _undefined
            ? _instance.contact
            : (contact
                as Query$GetAccountDetails$account$accountContacts$contact?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccountDetails$account$accountContacts$contact<TRes>
      get contact {
    final local$contact = _instance.contact;
    return local$contact == null
        ? CopyWith$Query$GetAccountDetails$account$accountContacts$contact.stub(
            _then(_instance))
        : CopyWith$Query$GetAccountDetails$account$accountContacts$contact(
            local$contact, (e) => call(contact: e));
  }
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts<TRes>
    implements CopyWith$Query$GetAccountDetails$account$accountContacts<TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts(this._res);

  TRes _res;

  call({
    Enum$AccountContactTypeId? accountContactTypeId,
    Query$GetAccountDetails$account$accountContacts$contact? contact,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccountDetails$account$accountContacts$contact<TRes>
      get contact =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$contact.stub(
              _res);
}

class Query$GetAccountDetails$account$accountContacts$contact {
  Query$GetAccountDetails$account$accountContacts$contact({
    this.firstName,
    this.middleName,
    this.lastName,
    this.contactInformation,
    this.address,
    this.$__typename = 'Contact',
  });

  factory Query$GetAccountDetails$account$accountContacts$contact.fromJson(
      Map<String, dynamic> json) {
    final l$firstName = json['firstName'];
    final l$middleName = json['middleName'];
    final l$lastName = json['lastName'];
    final l$contactInformation = json['contactInformation'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$accountContacts$contact(
      firstName: (l$firstName as String?),
      middleName: (l$middleName as String?),
      lastName: (l$lastName as String?),
      contactInformation: (l$contactInformation as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetAccountDetails$account$accountContacts$contact$contactInformation
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      address: l$address == null
          ? null
          : Query$GetAccountDetails$account$accountContacts$contact$address
              .fromJson((l$address as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? firstName;

  final String? middleName;

  final String? lastName;

  final List<
          Query$GetAccountDetails$account$accountContacts$contact$contactInformation?>?
      contactInformation;

  final Query$GetAccountDetails$account$accountContacts$contact$address?
      address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$middleName = middleName;
    _resultData['middleName'] = l$middleName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$contactInformation = contactInformation;
    _resultData['contactInformation'] =
        l$contactInformation?.map((e) => e?.toJson()).toList();
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$middleName = middleName;
    final l$lastName = lastName;
    final l$contactInformation = contactInformation;
    final l$address = address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$firstName,
      l$middleName,
      l$lastName,
      l$contactInformation == null
          ? null
          : Object.hashAll(l$contactInformation.map((v) => v)),
      l$address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAccountDetails$account$accountContacts$contact) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$middleName = middleName;
    final lOther$middleName = other.middleName;
    if (l$middleName != lOther$middleName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$contactInformation = contactInformation;
    final lOther$contactInformation = other.contactInformation;
    if (l$contactInformation != null && lOther$contactInformation != null) {
      if (l$contactInformation.length != lOther$contactInformation.length) {
        return false;
      }
      for (int i = 0; i < l$contactInformation.length; i++) {
        final l$contactInformation$entry = l$contactInformation[i];
        final lOther$contactInformation$entry = lOther$contactInformation[i];
        if (l$contactInformation$entry != lOther$contactInformation$entry) {
          return false;
        }
      }
    } else if (l$contactInformation != lOther$contactInformation) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
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

extension UtilityExtension$Query$GetAccountDetails$account$accountContacts$contact
    on Query$GetAccountDetails$account$accountContacts$contact {
  CopyWith$Query$GetAccountDetails$account$accountContacts$contact<
          Query$GetAccountDetails$account$accountContacts$contact>
      get copyWith =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$contact(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$accountContacts$contact<
    TRes> {
  factory CopyWith$Query$GetAccountDetails$account$accountContacts$contact(
    Query$GetAccountDetails$account$accountContacts$contact instance,
    TRes Function(Query$GetAccountDetails$account$accountContacts$contact) then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$contact;

  factory CopyWith$Query$GetAccountDetails$account$accountContacts$contact.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$contact;

  TRes call({
    String? firstName,
    String? middleName,
    String? lastName,
    List<Query$GetAccountDetails$account$accountContacts$contact$contactInformation?>?
        contactInformation,
    Query$GetAccountDetails$account$accountContacts$contact$address? address,
    String? $__typename,
  });
  TRes contactInformation(
      Iterable<Query$GetAccountDetails$account$accountContacts$contact$contactInformation?>? Function(
              Iterable<
                  CopyWith$Query$GetAccountDetails$account$accountContacts$contact$contactInformation<
                      Query$GetAccountDetails$account$accountContacts$contact$contactInformation>?>?)
          _fn);
  CopyWith$Query$GetAccountDetails$account$accountContacts$contact$address<TRes>
      get address;
}

class _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$contact<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$contact<TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$contact(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$accountContacts$contact _instance;

  final TRes Function(Query$GetAccountDetails$account$accountContacts$contact)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? middleName = _undefined,
    Object? lastName = _undefined,
    Object? contactInformation = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountDetails$account$accountContacts$contact(
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        middleName: middleName == _undefined
            ? _instance.middleName
            : (middleName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        contactInformation: contactInformation == _undefined
            ? _instance.contactInformation
            : (contactInformation as List<
                Query$GetAccountDetails$account$accountContacts$contact$contactInformation?>?),
        address: address == _undefined
            ? _instance.address
            : (address
                as Query$GetAccountDetails$account$accountContacts$contact$address?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes contactInformation(
          Iterable<Query$GetAccountDetails$account$accountContacts$contact$contactInformation?>? Function(
                  Iterable<
                      CopyWith$Query$GetAccountDetails$account$accountContacts$contact$contactInformation<
                          Query$GetAccountDetails$account$accountContacts$contact$contactInformation>?>?)
              _fn) =>
      call(
          contactInformation: _fn(_instance.contactInformation?.map((e) => e ==
                  null
              ? null
              : CopyWith$Query$GetAccountDetails$account$accountContacts$contact$contactInformation(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$GetAccountDetails$account$accountContacts$contact$address<TRes>
      get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith$Query$GetAccountDetails$account$accountContacts$contact$address
            .stub(_then(_instance))
        : CopyWith$Query$GetAccountDetails$account$accountContacts$contact$address(
            local$address, (e) => call(address: e));
  }
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$contact<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$contact<TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$contact(
      this._res);

  TRes _res;

  call({
    String? firstName,
    String? middleName,
    String? lastName,
    List<Query$GetAccountDetails$account$accountContacts$contact$contactInformation?>?
        contactInformation,
    Query$GetAccountDetails$account$accountContacts$contact$address? address,
    String? $__typename,
  }) =>
      _res;

  contactInformation(_fn) => _res;

  CopyWith$Query$GetAccountDetails$account$accountContacts$contact$address<TRes>
      get address =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$contact$address
              .stub(_res);
}

class Query$GetAccountDetails$account$accountContacts$contact$contactInformation {
  Query$GetAccountDetails$account$accountContacts$contact$contactInformation({
    this.value,
    required this.contactInformationTypeId,
    required this.countryId,
    this.$__typename = 'ContactInformation',
  });

  factory Query$GetAccountDetails$account$accountContacts$contact$contactInformation.fromJson(
      Map<String, dynamic> json) {
    final l$value = json['value'];
    final l$contactInformationTypeId = json['contactInformationTypeId'];
    final l$countryId = json['countryId'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$accountContacts$contact$contactInformation(
      value: (l$value as String?),
      contactInformationTypeId: fromJson$Enum$ContactInformationTypeId(
          (l$contactInformationTypeId as String)),
      countryId: fromJson$Enum$CountryId((l$countryId as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? value;

  final Enum$ContactInformationTypeId contactInformationTypeId;

  final Enum$CountryId countryId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$contactInformationTypeId = contactInformationTypeId;
    _resultData['contactInformationTypeId'] =
        toJson$Enum$ContactInformationTypeId(l$contactInformationTypeId);
    final l$countryId = countryId;
    _resultData['countryId'] = toJson$Enum$CountryId(l$countryId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$contactInformationTypeId = contactInformationTypeId;
    final l$countryId = countryId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      l$contactInformationTypeId,
      l$countryId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAccountDetails$account$accountContacts$contact$contactInformation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$contactInformationTypeId = contactInformationTypeId;
    final lOther$contactInformationTypeId = other.contactInformationTypeId;
    if (l$contactInformationTypeId != lOther$contactInformationTypeId) {
      return false;
    }
    final l$countryId = countryId;
    final lOther$countryId = other.countryId;
    if (l$countryId != lOther$countryId) {
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

extension UtilityExtension$Query$GetAccountDetails$account$accountContacts$contact$contactInformation
    on Query$GetAccountDetails$account$accountContacts$contact$contactInformation {
  CopyWith$Query$GetAccountDetails$account$accountContacts$contact$contactInformation<
          Query$GetAccountDetails$account$accountContacts$contact$contactInformation>
      get copyWith =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$contact$contactInformation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$accountContacts$contact$contactInformation<
    TRes> {
  factory CopyWith$Query$GetAccountDetails$account$accountContacts$contact$contactInformation(
    Query$GetAccountDetails$account$accountContacts$contact$contactInformation
        instance,
    TRes Function(
            Query$GetAccountDetails$account$accountContacts$contact$contactInformation)
        then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$contact$contactInformation;

  factory CopyWith$Query$GetAccountDetails$account$accountContacts$contact$contactInformation.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$contact$contactInformation;

  TRes call({
    String? value,
    Enum$ContactInformationTypeId? contactInformationTypeId,
    Enum$CountryId? countryId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$contact$contactInformation<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$contact$contactInformation<
            TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$contact$contactInformation(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$accountContacts$contact$contactInformation
      _instance;

  final TRes Function(
          Query$GetAccountDetails$account$accountContacts$contact$contactInformation)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? contactInformationTypeId = _undefined,
    Object? countryId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAccountDetails$account$accountContacts$contact$contactInformation(
        value: value == _undefined ? _instance.value : (value as String?),
        contactInformationTypeId: contactInformationTypeId == _undefined ||
                contactInformationTypeId == null
            ? _instance.contactInformationTypeId
            : (contactInformationTypeId as Enum$ContactInformationTypeId),
        countryId: countryId == _undefined || countryId == null
            ? _instance.countryId
            : (countryId as Enum$CountryId),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$contact$contactInformation<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$contact$contactInformation<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$contact$contactInformation(
      this._res);

  TRes _res;

  call({
    String? value,
    Enum$ContactInformationTypeId? contactInformationTypeId,
    Enum$CountryId? countryId,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAccountDetails$account$accountContacts$contact$address {
  Query$GetAccountDetails$account$accountContacts$contact$address({
    required this.countryId,
    this.address1,
    this.address2,
    this.address3,
    this.address4,
    this.address5,
    this.address6,
    this.postCode,
    this.$__typename = 'Address',
  });

  factory Query$GetAccountDetails$account$accountContacts$contact$address.fromJson(
      Map<String, dynamic> json) {
    final l$countryId = json['countryId'];
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$address3 = json['address3'];
    final l$address4 = json['address4'];
    final l$address5 = json['address5'];
    final l$address6 = json['address6'];
    final l$postCode = json['postCode'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$accountContacts$contact$address(
      countryId: fromJson$Enum$CountryId((l$countryId as String)),
      address1: (l$address1 as String?),
      address2: (l$address2 as String?),
      address3: (l$address3 as String?),
      address4: (l$address4 as String?),
      address5: (l$address5 as String?),
      address6: (l$address6 as String?),
      postCode: (l$postCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$CountryId countryId;

  final String? address1;

  final String? address2;

  final String? address3;

  final String? address4;

  final String? address5;

  final String? address6;

  final String? postCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$countryId = countryId;
    _resultData['countryId'] = toJson$Enum$CountryId(l$countryId);
    final l$address1 = address1;
    _resultData['address1'] = l$address1;
    final l$address2 = address2;
    _resultData['address2'] = l$address2;
    final l$address3 = address3;
    _resultData['address3'] = l$address3;
    final l$address4 = address4;
    _resultData['address4'] = l$address4;
    final l$address5 = address5;
    _resultData['address5'] = l$address5;
    final l$address6 = address6;
    _resultData['address6'] = l$address6;
    final l$postCode = postCode;
    _resultData['postCode'] = l$postCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$countryId = countryId;
    final l$address1 = address1;
    final l$address2 = address2;
    final l$address3 = address3;
    final l$address4 = address4;
    final l$address5 = address5;
    final l$address6 = address6;
    final l$postCode = postCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$countryId,
      l$address1,
      l$address2,
      l$address3,
      l$address4,
      l$address5,
      l$address6,
      l$postCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAccountDetails$account$accountContacts$contact$address) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$countryId = countryId;
    final lOther$countryId = other.countryId;
    if (l$countryId != lOther$countryId) {
      return false;
    }
    final l$address1 = address1;
    final lOther$address1 = other.address1;
    if (l$address1 != lOther$address1) {
      return false;
    }
    final l$address2 = address2;
    final lOther$address2 = other.address2;
    if (l$address2 != lOther$address2) {
      return false;
    }
    final l$address3 = address3;
    final lOther$address3 = other.address3;
    if (l$address3 != lOther$address3) {
      return false;
    }
    final l$address4 = address4;
    final lOther$address4 = other.address4;
    if (l$address4 != lOther$address4) {
      return false;
    }
    final l$address5 = address5;
    final lOther$address5 = other.address5;
    if (l$address5 != lOther$address5) {
      return false;
    }
    final l$address6 = address6;
    final lOther$address6 = other.address6;
    if (l$address6 != lOther$address6) {
      return false;
    }
    final l$postCode = postCode;
    final lOther$postCode = other.postCode;
    if (l$postCode != lOther$postCode) {
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

extension UtilityExtension$Query$GetAccountDetails$account$accountContacts$contact$address
    on Query$GetAccountDetails$account$accountContacts$contact$address {
  CopyWith$Query$GetAccountDetails$account$accountContacts$contact$address<
          Query$GetAccountDetails$account$accountContacts$contact$address>
      get copyWith =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$contact$address(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$accountContacts$contact$address<
    TRes> {
  factory CopyWith$Query$GetAccountDetails$account$accountContacts$contact$address(
    Query$GetAccountDetails$account$accountContacts$contact$address instance,
    TRes Function(
            Query$GetAccountDetails$account$accountContacts$contact$address)
        then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$contact$address;

  factory CopyWith$Query$GetAccountDetails$account$accountContacts$contact$address.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$contact$address;

  TRes call({
    Enum$CountryId? countryId,
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$contact$address<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$contact$address<
            TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$contact$address(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$accountContacts$contact$address
      _instance;

  final TRes Function(
      Query$GetAccountDetails$account$accountContacts$contact$address) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countryId = _undefined,
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? address3 = _undefined,
    Object? address4 = _undefined,
    Object? address5 = _undefined,
    Object? address6 = _undefined,
    Object? postCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountDetails$account$accountContacts$contact$address(
        countryId: countryId == _undefined || countryId == null
            ? _instance.countryId
            : (countryId as Enum$CountryId),
        address1:
            address1 == _undefined ? _instance.address1 : (address1 as String?),
        address2:
            address2 == _undefined ? _instance.address2 : (address2 as String?),
        address3:
            address3 == _undefined ? _instance.address3 : (address3 as String?),
        address4:
            address4 == _undefined ? _instance.address4 : (address4 as String?),
        address5:
            address5 == _undefined ? _instance.address5 : (address5 as String?),
        address6:
            address6 == _undefined ? _instance.address6 : (address6 as String?),
        postCode:
            postCode == _undefined ? _instance.postCode : (postCode as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$contact$address<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$contact$address<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$contact$address(
      this._res);

  TRes _res;

  call({
    Enum$CountryId? countryId,
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAccountDetails$account$businessDetails {
  Query$GetAccountDetails$account$businessDetails({
    this.vatNumber,
    this.paymentTerm,
    this.$__typename = 'BusinessDetails',
  });

  factory Query$GetAccountDetails$account$businessDetails.fromJson(
      Map<String, dynamic> json) {
    final l$vatNumber = json['vatNumber'];
    final l$paymentTerm = json['paymentTerm'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$businessDetails(
      vatNumber: (l$vatNumber as String?),
      paymentTerm: l$paymentTerm == null
          ? null
          : Query$GetAccountDetails$account$businessDetails$paymentTerm
              .fromJson((l$paymentTerm as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? vatNumber;

  final Query$GetAccountDetails$account$businessDetails$paymentTerm?
      paymentTerm;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$vatNumber = vatNumber;
    _resultData['vatNumber'] = l$vatNumber;
    final l$paymentTerm = paymentTerm;
    _resultData['paymentTerm'] = l$paymentTerm?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$vatNumber = vatNumber;
    final l$paymentTerm = paymentTerm;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$vatNumber,
      l$paymentTerm,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAccountDetails$account$businessDetails) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$vatNumber = vatNumber;
    final lOther$vatNumber = other.vatNumber;
    if (l$vatNumber != lOther$vatNumber) {
      return false;
    }
    final l$paymentTerm = paymentTerm;
    final lOther$paymentTerm = other.paymentTerm;
    if (l$paymentTerm != lOther$paymentTerm) {
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

extension UtilityExtension$Query$GetAccountDetails$account$businessDetails
    on Query$GetAccountDetails$account$businessDetails {
  CopyWith$Query$GetAccountDetails$account$businessDetails<
          Query$GetAccountDetails$account$businessDetails>
      get copyWith => CopyWith$Query$GetAccountDetails$account$businessDetails(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$businessDetails<TRes> {
  factory CopyWith$Query$GetAccountDetails$account$businessDetails(
    Query$GetAccountDetails$account$businessDetails instance,
    TRes Function(Query$GetAccountDetails$account$businessDetails) then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$businessDetails;

  factory CopyWith$Query$GetAccountDetails$account$businessDetails.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$businessDetails;

  TRes call({
    String? vatNumber,
    Query$GetAccountDetails$account$businessDetails$paymentTerm? paymentTerm,
    String? $__typename,
  });
  CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm<TRes>
      get paymentTerm;
}

class _CopyWithImpl$Query$GetAccountDetails$account$businessDetails<TRes>
    implements CopyWith$Query$GetAccountDetails$account$businessDetails<TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$businessDetails(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$businessDetails _instance;

  final TRes Function(Query$GetAccountDetails$account$businessDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vatNumber = _undefined,
    Object? paymentTerm = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountDetails$account$businessDetails(
        vatNumber: vatNumber == _undefined
            ? _instance.vatNumber
            : (vatNumber as String?),
        paymentTerm: paymentTerm == _undefined
            ? _instance.paymentTerm
            : (paymentTerm
                as Query$GetAccountDetails$account$businessDetails$paymentTerm?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm<TRes>
      get paymentTerm {
    final local$paymentTerm = _instance.paymentTerm;
    return local$paymentTerm == null
        ? CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm
            .stub(_then(_instance))
        : CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm(
            local$paymentTerm, (e) => call(paymentTerm: e));
  }
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$businessDetails<TRes>
    implements CopyWith$Query$GetAccountDetails$account$businessDetails<TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$businessDetails(this._res);

  TRes _res;

  call({
    String? vatNumber,
    Query$GetAccountDetails$account$businessDetails$paymentTerm? paymentTerm,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm<TRes>
      get paymentTerm =>
          CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm
              .stub(_res);
}

class Query$GetAccountDetails$account$businessDetails$paymentTerm {
  Query$GetAccountDetails$account$businessDetails$paymentTerm({
    this.paymentMethod,
    this.paymentTermType,
    this.$__typename = 'PaymentTerm',
  });

  factory Query$GetAccountDetails$account$businessDetails$paymentTerm.fromJson(
      Map<String, dynamic> json) {
    final l$paymentMethod = json['paymentMethod'];
    final l$paymentTermType = json['paymentTermType'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$businessDetails$paymentTerm(
      paymentMethod: l$paymentMethod == null
          ? null
          : Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod
              .fromJson((l$paymentMethod as Map<String, dynamic>)),
      paymentTermType: l$paymentTermType == null
          ? null
          : Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType
              .fromJson((l$paymentTermType as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod?
      paymentMethod;

  final Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType?
      paymentTermType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] = l$paymentMethod?.toJson();
    final l$paymentTermType = paymentTermType;
    _resultData['paymentTermType'] = l$paymentTermType?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentMethod = paymentMethod;
    final l$paymentTermType = paymentTermType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$paymentMethod,
      l$paymentTermType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAccountDetails$account$businessDetails$paymentTerm) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$paymentTermType = paymentTermType;
    final lOther$paymentTermType = other.paymentTermType;
    if (l$paymentTermType != lOther$paymentTermType) {
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

extension UtilityExtension$Query$GetAccountDetails$account$businessDetails$paymentTerm
    on Query$GetAccountDetails$account$businessDetails$paymentTerm {
  CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm<
          Query$GetAccountDetails$account$businessDetails$paymentTerm>
      get copyWith =>
          CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm<
    TRes> {
  factory CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm(
    Query$GetAccountDetails$account$businessDetails$paymentTerm instance,
    TRes Function(Query$GetAccountDetails$account$businessDetails$paymentTerm)
        then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$businessDetails$paymentTerm;

  factory CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$businessDetails$paymentTerm;

  TRes call({
    Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod?
        paymentMethod,
    Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType?
        paymentTermType,
    String? $__typename,
  });
  CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod<
      TRes> get paymentMethod;
  CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType<
      TRes> get paymentTermType;
}

class _CopyWithImpl$Query$GetAccountDetails$account$businessDetails$paymentTerm<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm<
            TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$businessDetails$paymentTerm(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$businessDetails$paymentTerm _instance;

  final TRes Function(
      Query$GetAccountDetails$account$businessDetails$paymentTerm) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentMethod = _undefined,
    Object? paymentTermType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountDetails$account$businessDetails$paymentTerm(
        paymentMethod: paymentMethod == _undefined
            ? _instance.paymentMethod
            : (paymentMethod
                as Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod?),
        paymentTermType: paymentTermType == _undefined
            ? _instance.paymentTermType
            : (paymentTermType
                as Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod<
      TRes> get paymentMethod {
    final local$paymentMethod = _instance.paymentMethod;
    return local$paymentMethod == null
        ? CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod
            .stub(_then(_instance))
        : CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod(
            local$paymentMethod, (e) => call(paymentMethod: e));
  }

  CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType<
      TRes> get paymentTermType {
    final local$paymentTermType = _instance.paymentTermType;
    return local$paymentTermType == null
        ? CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType
            .stub(_then(_instance))
        : CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType(
            local$paymentTermType, (e) => call(paymentTermType: e));
  }
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$businessDetails$paymentTerm<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$businessDetails$paymentTerm(
      this._res);

  TRes _res;

  call({
    Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod?
        paymentMethod,
    Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType?
        paymentTermType,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod<
          TRes>
      get paymentMethod =>
          CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod
              .stub(_res);

  CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType<
          TRes>
      get paymentTermType =>
          CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType
              .stub(_res);
}

class Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod {
  Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod({
    this.name,
    this.$__typename = 'PaymentMethod',
  });

  factory Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

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
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod) ||
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

extension UtilityExtension$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod
    on Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod {
  CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod<
          Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod>
      get copyWith =>
          CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod<
    TRes> {
  factory CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod(
    Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod
        instance,
    TRes Function(
            Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod)
        then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod;

  factory CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod<
            TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod
      _instance;

  final TRes Function(
          Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentMethod(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType {
  Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType({
    this.name,
    this.$__typename = 'PaymentTermType',
  });

  factory Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

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
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType) ||
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

extension UtilityExtension$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType
    on Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType {
  CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType<
          Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType>
      get copyWith =>
          CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType<
    TRes> {
  factory CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType(
    Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType
        instance,
    TRes Function(
            Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType)
        then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType;

  factory CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType<
            TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType
      _instance;

  final TRes Function(
          Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$businessDetails$paymentTerm$paymentTermType(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAccountDetails$account$bankAccounts {
  Query$GetAccountDetails$account$bankAccounts({
    this.bankAccountNumber,
    this.sortCode,
    this.reference,
    this.bankName,
    this.accountHolderName,
    this.ibanCode,
    this.swiftCode,
    this.$__typename = 'BankAccount',
  });

  factory Query$GetAccountDetails$account$bankAccounts.fromJson(
      Map<String, dynamic> json) {
    final l$bankAccountNumber = json['bankAccountNumber'];
    final l$sortCode = json['sortCode'];
    final l$reference = json['reference'];
    final l$bankName = json['bankName'];
    final l$accountHolderName = json['accountHolderName'];
    final l$ibanCode = json['ibanCode'];
    final l$swiftCode = json['swiftCode'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$bankAccounts(
      bankAccountNumber: (l$bankAccountNumber as String?),
      sortCode: (l$sortCode as String?),
      reference: (l$reference as String?),
      bankName: (l$bankName as String?),
      accountHolderName: (l$accountHolderName as String?),
      ibanCode: (l$ibanCode as String?),
      swiftCode: (l$swiftCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? bankAccountNumber;

  final String? sortCode;

  final String? reference;

  final String? bankName;

  final String? accountHolderName;

  final String? ibanCode;

  final String? swiftCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bankAccountNumber = bankAccountNumber;
    _resultData['bankAccountNumber'] = l$bankAccountNumber;
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
    final l$bankAccountNumber = bankAccountNumber;
    final l$sortCode = sortCode;
    final l$reference = reference;
    final l$bankName = bankName;
    final l$accountHolderName = accountHolderName;
    final l$ibanCode = ibanCode;
    final l$swiftCode = swiftCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bankAccountNumber,
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
    if (!(other is Query$GetAccountDetails$account$bankAccounts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bankAccountNumber = bankAccountNumber;
    final lOther$bankAccountNumber = other.bankAccountNumber;
    if (l$bankAccountNumber != lOther$bankAccountNumber) {
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

extension UtilityExtension$Query$GetAccountDetails$account$bankAccounts
    on Query$GetAccountDetails$account$bankAccounts {
  CopyWith$Query$GetAccountDetails$account$bankAccounts<
          Query$GetAccountDetails$account$bankAccounts>
      get copyWith => CopyWith$Query$GetAccountDetails$account$bankAccounts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$bankAccounts<TRes> {
  factory CopyWith$Query$GetAccountDetails$account$bankAccounts(
    Query$GetAccountDetails$account$bankAccounts instance,
    TRes Function(Query$GetAccountDetails$account$bankAccounts) then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$bankAccounts;

  factory CopyWith$Query$GetAccountDetails$account$bankAccounts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$bankAccounts;

  TRes call({
    String? bankAccountNumber,
    String? sortCode,
    String? reference,
    String? bankName,
    String? accountHolderName,
    String? ibanCode,
    String? swiftCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountDetails$account$bankAccounts<TRes>
    implements CopyWith$Query$GetAccountDetails$account$bankAccounts<TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$bankAccounts(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$bankAccounts _instance;

  final TRes Function(Query$GetAccountDetails$account$bankAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bankAccountNumber = _undefined,
    Object? sortCode = _undefined,
    Object? reference = _undefined,
    Object? bankName = _undefined,
    Object? accountHolderName = _undefined,
    Object? ibanCode = _undefined,
    Object? swiftCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountDetails$account$bankAccounts(
        bankAccountNumber: bankAccountNumber == _undefined
            ? _instance.bankAccountNumber
            : (bankAccountNumber as String?),
        sortCode:
            sortCode == _undefined ? _instance.sortCode : (sortCode as String?),
        reference: reference == _undefined
            ? _instance.reference
            : (reference as String?),
        bankName:
            bankName == _undefined ? _instance.bankName : (bankName as String?),
        accountHolderName: accountHolderName == _undefined
            ? _instance.accountHolderName
            : (accountHolderName as String?),
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

class _CopyWithStubImpl$Query$GetAccountDetails$account$bankAccounts<TRes>
    implements CopyWith$Query$GetAccountDetails$account$bankAccounts<TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$bankAccounts(this._res);

  TRes _res;

  call({
    String? bankAccountNumber,
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
