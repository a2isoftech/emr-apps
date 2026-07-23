import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Query$GetAccountDetails {
  Query$GetAccountDetails({
    required this.account,
    this.$__typename = 'Query',
  });

  factory Query$GetAccountDetails.fromJson(Map<String, dynamic> json) {
    final l$account = json['account'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails(
      account: Query$GetAccountDetails$account.fromJson(
          (l$account as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountDetails$account account;

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
        account: account == _undefined || account == null
            ? _instance.account
            : (account as Query$GetAccountDetails$account),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccountDetails$account<TRes> get account {
    final local$account = _instance.account;
    return CopyWith$Query$GetAccountDetails$account(
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
                name: NameNode(value: 'value'),
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
                    name: NameNode(value: 'contactPreferences'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'mobile'),
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
                            name: NameNode(value: 'enabled'),
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
                        name: NameNode(value: 'email'),
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
                            name: NameNode(value: 'enabled'),
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
                        name: NameNode(value: 'phone'),
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
                            name: NameNode(value: 'enabled'),
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
                        name: NameNode(value: 'post'),
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
                            name: NameNode(value: 'enabled'),
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
                        name: NameNode(value: 'fax'),
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
                            name: NameNode(value: 'enabled'),
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
                    name: NameNode(value: 'proofOfAddress'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'media'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'url'),
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
                        name: NameNode(value: 'validFrom'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'validTo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'type'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'subType'),
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
                    name: NameNode(value: 'proofOfIdentification'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'media'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'url'),
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
                        name: NameNode(value: 'validFrom'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'validTo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'type'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'subType'),
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
                    name: NameNode(value: 'dateOfBirth'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'contactTypes'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'addressKey'),
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
            name: NameNode(value: 'accountAddresses'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'key'),
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
                name: NameNode(value: 'countryCode'),
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
            name: NameNode(value: 'businessDetail'),
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
                    name: NameNode(value: 'financialPaymentMethod'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'paymentTermTypeId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'paymentTermTypeName'),
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

class Query$GetAccountDetails$account {
  Query$GetAccountDetails$account({
    required this.name,
    this.accountContacts,
    this.accountAddresses,
    this.businessDetail,
    this.bankAccounts,
    this.$__typename = 'Account',
  });

  factory Query$GetAccountDetails$account.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$accountContacts = json['accountContacts'];
    final l$accountAddresses = json['accountAddresses'];
    final l$businessDetail = json['businessDetail'];
    final l$bankAccounts = json['bankAccounts'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account(
      name: (l$name as String),
      accountContacts: (l$accountContacts as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetAccountDetails$account$accountContacts.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      accountAddresses: (l$accountAddresses as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetAccountDetails$account$accountAddresses.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      businessDetail: l$businessDetail == null
          ? null
          : Query$GetAccountDetails$account$businessDetail.fromJson(
              (l$businessDetail as Map<String, dynamic>)),
      bankAccounts: (l$bankAccounts as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetAccountDetails$account$bankAccounts.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final List<Query$GetAccountDetails$account$accountContacts?>? accountContacts;

  final List<Query$GetAccountDetails$account$accountAddresses?>?
      accountAddresses;

  final Query$GetAccountDetails$account$businessDetail? businessDetail;

  final List<Query$GetAccountDetails$account$bankAccounts?>? bankAccounts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$accountContacts = accountContacts;
    _resultData['accountContacts'] =
        l$accountContacts?.map((e) => e?.toJson()).toList();
    final l$accountAddresses = accountAddresses;
    _resultData['accountAddresses'] =
        l$accountAddresses?.map((e) => e?.toJson()).toList();
    final l$businessDetail = businessDetail;
    _resultData['businessDetail'] = l$businessDetail?.toJson();
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
    final l$accountAddresses = accountAddresses;
    final l$businessDetail = businessDetail;
    final l$bankAccounts = bankAccounts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$accountContacts == null
          ? null
          : Object.hashAll(l$accountContacts.map((v) => v)),
      l$accountAddresses == null
          ? null
          : Object.hashAll(l$accountAddresses.map((v) => v)),
      l$businessDetail,
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
    final l$accountAddresses = accountAddresses;
    final lOther$accountAddresses = other.accountAddresses;
    if (l$accountAddresses != null && lOther$accountAddresses != null) {
      if (l$accountAddresses.length != lOther$accountAddresses.length) {
        return false;
      }
      for (int i = 0; i < l$accountAddresses.length; i++) {
        final l$accountAddresses$entry = l$accountAddresses[i];
        final lOther$accountAddresses$entry = lOther$accountAddresses[i];
        if (l$accountAddresses$entry != lOther$accountAddresses$entry) {
          return false;
        }
      }
    } else if (l$accountAddresses != lOther$accountAddresses) {
      return false;
    }
    final l$businessDetail = businessDetail;
    final lOther$businessDetail = other.businessDetail;
    if (l$businessDetail != lOther$businessDetail) {
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
    List<Query$GetAccountDetails$account$accountAddresses?>? accountAddresses,
    Query$GetAccountDetails$account$businessDetail? businessDetail,
    List<Query$GetAccountDetails$account$bankAccounts?>? bankAccounts,
    String? $__typename,
  });
  TRes accountContacts(
      Iterable<Query$GetAccountDetails$account$accountContacts?>? Function(
              Iterable<
                  CopyWith$Query$GetAccountDetails$account$accountContacts<
                      Query$GetAccountDetails$account$accountContacts>?>?)
          _fn);
  TRes accountAddresses(
      Iterable<Query$GetAccountDetails$account$accountAddresses?>? Function(
              Iterable<
                  CopyWith$Query$GetAccountDetails$account$accountAddresses<
                      Query$GetAccountDetails$account$accountAddresses>?>?)
          _fn);
  CopyWith$Query$GetAccountDetails$account$businessDetail<TRes>
      get businessDetail;
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
    Object? accountAddresses = _undefined,
    Object? businessDetail = _undefined,
    Object? bankAccounts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountDetails$account(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        accountContacts: accountContacts == _undefined
            ? _instance.accountContacts
            : (accountContacts
                as List<Query$GetAccountDetails$account$accountContacts?>?),
        accountAddresses: accountAddresses == _undefined
            ? _instance.accountAddresses
            : (accountAddresses
                as List<Query$GetAccountDetails$account$accountAddresses?>?),
        businessDetail: businessDetail == _undefined
            ? _instance.businessDetail
            : (businessDetail
                as Query$GetAccountDetails$account$businessDetail?),
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

  TRes accountAddresses(
          Iterable<Query$GetAccountDetails$account$accountAddresses?>? Function(
                  Iterable<
                      CopyWith$Query$GetAccountDetails$account$accountAddresses<
                          Query$GetAccountDetails$account$accountAddresses>?>?)
              _fn) =>
      call(
          accountAddresses: _fn(_instance.accountAddresses?.map((e) => e == null
              ? null
              : CopyWith$Query$GetAccountDetails$account$accountAddresses(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$GetAccountDetails$account$businessDetail<TRes>
      get businessDetail {
    final local$businessDetail = _instance.businessDetail;
    return local$businessDetail == null
        ? CopyWith$Query$GetAccountDetails$account$businessDetail.stub(
            _then(_instance))
        : CopyWith$Query$GetAccountDetails$account$businessDetail(
            local$businessDetail, (e) => call(businessDetail: e));
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
    List<Query$GetAccountDetails$account$accountAddresses?>? accountAddresses,
    Query$GetAccountDetails$account$businessDetail? businessDetail,
    List<Query$GetAccountDetails$account$bankAccounts?>? bankAccounts,
    String? $__typename,
  }) =>
      _res;

  accountContacts(_fn) => _res;

  accountAddresses(_fn) => _res;

  CopyWith$Query$GetAccountDetails$account$businessDetail<TRes>
      get businessDetail =>
          CopyWith$Query$GetAccountDetails$account$businessDetail.stub(_res);

  bankAccounts(_fn) => _res;
}

class Query$GetAccountDetails$account$accountContacts {
  Query$GetAccountDetails$account$accountContacts({
    required this.value,
    this.$__typename = 'ContactWithKey',
  });

  factory Query$GetAccountDetails$account$accountContacts.fromJson(
      Map<String, dynamic> json) {
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$accountContacts(
      value: Query$GetAccountDetails$account$accountContacts$value.fromJson(
          (l$value as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountDetails$account$accountContacts$value value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
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
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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
    Query$GetAccountDetails$account$accountContacts$value? value,
    String? $__typename,
  });
  CopyWith$Query$GetAccountDetails$account$accountContacts$value<TRes>
      get value;
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
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountDetails$account$accountContacts(
        value: value == _undefined || value == null
            ? _instance.value
            : (value as Query$GetAccountDetails$account$accountContacts$value),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccountDetails$account$accountContacts$value<TRes>
      get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetAccountDetails$account$accountContacts$value(
        local$value, (e) => call(value: e));
  }
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts<TRes>
    implements CopyWith$Query$GetAccountDetails$account$accountContacts<TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts(this._res);

  TRes _res;

  call({
    Query$GetAccountDetails$account$accountContacts$value? value,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccountDetails$account$accountContacts$value<TRes>
      get value =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$value.stub(
              _res);
}

class Query$GetAccountDetails$account$accountContacts$value {
  Query$GetAccountDetails$account$accountContacts$value({
    required this.firstName,
    this.middleName,
    required this.lastName,
    required this.contactPreferences,
    required this.proofOfAddress,
    required this.proofOfIdentification,
    this.dateOfBirth,
    required this.contactTypes,
    required this.addressKey,
    this.$__typename = 'Contact',
  });

  factory Query$GetAccountDetails$account$accountContacts$value.fromJson(
      Map<String, dynamic> json) {
    final l$firstName = json['firstName'];
    final l$middleName = json['middleName'];
    final l$lastName = json['lastName'];
    final l$contactPreferences = json['contactPreferences'];
    final l$proofOfAddress = json['proofOfAddress'];
    final l$proofOfIdentification = json['proofOfIdentification'];
    final l$dateOfBirth = json['dateOfBirth'];
    final l$contactTypes = json['contactTypes'];
    final l$addressKey = json['addressKey'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$accountContacts$value(
      firstName: (l$firstName as String),
      middleName: (l$middleName as String?),
      lastName: (l$lastName as String),
      contactPreferences:
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences
              .fromJson((l$contactPreferences as Map<String, dynamic>)),
      proofOfAddress: (l$proofOfAddress as List<dynamic>)
          .map((e) =>
              Query$GetAccountDetails$account$accountContacts$value$proofOfAddress
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      proofOfIdentification: (l$proofOfIdentification as List<dynamic>)
          .map((e) =>
              Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      dateOfBirth: l$dateOfBirth == null
          ? null
          : DateTime.parse((l$dateOfBirth as String)),
      contactTypes: (l$contactTypes as List<dynamic>)
          .map((e) => fromJson$Enum$ContactType((e as String)))
          .toList(),
      addressKey: (l$addressKey as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String firstName;

  final String? middleName;

  final String lastName;

  final Query$GetAccountDetails$account$accountContacts$value$contactPreferences
      contactPreferences;

  final List<
          Query$GetAccountDetails$account$accountContacts$value$proofOfAddress>
      proofOfAddress;

  final List<
          Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification>
      proofOfIdentification;

  final DateTime? dateOfBirth;

  final List<Enum$ContactType> contactTypes;

  final String addressKey;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$middleName = middleName;
    _resultData['middleName'] = l$middleName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$contactPreferences = contactPreferences;
    _resultData['contactPreferences'] = l$contactPreferences.toJson();
    final l$proofOfAddress = proofOfAddress;
    _resultData['proofOfAddress'] =
        l$proofOfAddress.map((e) => e.toJson()).toList();
    final l$proofOfIdentification = proofOfIdentification;
    _resultData['proofOfIdentification'] =
        l$proofOfIdentification.map((e) => e.toJson()).toList();
    final l$dateOfBirth = dateOfBirth;
    _resultData['dateOfBirth'] = l$dateOfBirth?.toIso8601String();
    final l$contactTypes = contactTypes;
    _resultData['contactTypes'] =
        l$contactTypes.map((e) => toJson$Enum$ContactType(e)).toList();
    final l$addressKey = addressKey;
    _resultData['addressKey'] = l$addressKey;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$middleName = middleName;
    final l$lastName = lastName;
    final l$contactPreferences = contactPreferences;
    final l$proofOfAddress = proofOfAddress;
    final l$proofOfIdentification = proofOfIdentification;
    final l$dateOfBirth = dateOfBirth;
    final l$contactTypes = contactTypes;
    final l$addressKey = addressKey;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$firstName,
      l$middleName,
      l$lastName,
      l$contactPreferences,
      Object.hashAll(l$proofOfAddress.map((v) => v)),
      Object.hashAll(l$proofOfIdentification.map((v) => v)),
      l$dateOfBirth,
      Object.hashAll(l$contactTypes.map((v) => v)),
      l$addressKey,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAccountDetails$account$accountContacts$value) ||
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
    final l$contactPreferences = contactPreferences;
    final lOther$contactPreferences = other.contactPreferences;
    if (l$contactPreferences != lOther$contactPreferences) {
      return false;
    }
    final l$proofOfAddress = proofOfAddress;
    final lOther$proofOfAddress = other.proofOfAddress;
    if (l$proofOfAddress.length != lOther$proofOfAddress.length) {
      return false;
    }
    for (int i = 0; i < l$proofOfAddress.length; i++) {
      final l$proofOfAddress$entry = l$proofOfAddress[i];
      final lOther$proofOfAddress$entry = lOther$proofOfAddress[i];
      if (l$proofOfAddress$entry != lOther$proofOfAddress$entry) {
        return false;
      }
    }
    final l$proofOfIdentification = proofOfIdentification;
    final lOther$proofOfIdentification = other.proofOfIdentification;
    if (l$proofOfIdentification.length != lOther$proofOfIdentification.length) {
      return false;
    }
    for (int i = 0; i < l$proofOfIdentification.length; i++) {
      final l$proofOfIdentification$entry = l$proofOfIdentification[i];
      final lOther$proofOfIdentification$entry =
          lOther$proofOfIdentification[i];
      if (l$proofOfIdentification$entry != lOther$proofOfIdentification$entry) {
        return false;
      }
    }
    final l$dateOfBirth = dateOfBirth;
    final lOther$dateOfBirth = other.dateOfBirth;
    if (l$dateOfBirth != lOther$dateOfBirth) {
      return false;
    }
    final l$contactTypes = contactTypes;
    final lOther$contactTypes = other.contactTypes;
    if (l$contactTypes.length != lOther$contactTypes.length) {
      return false;
    }
    for (int i = 0; i < l$contactTypes.length; i++) {
      final l$contactTypes$entry = l$contactTypes[i];
      final lOther$contactTypes$entry = lOther$contactTypes[i];
      if (l$contactTypes$entry != lOther$contactTypes$entry) {
        return false;
      }
    }
    final l$addressKey = addressKey;
    final lOther$addressKey = other.addressKey;
    if (l$addressKey != lOther$addressKey) {
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

extension UtilityExtension$Query$GetAccountDetails$account$accountContacts$value
    on Query$GetAccountDetails$account$accountContacts$value {
  CopyWith$Query$GetAccountDetails$account$accountContacts$value<
          Query$GetAccountDetails$account$accountContacts$value>
      get copyWith =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$value(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$accountContacts$value<
    TRes> {
  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value(
    Query$GetAccountDetails$account$accountContacts$value instance,
    TRes Function(Query$GetAccountDetails$account$accountContacts$value) then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value;

  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value;

  TRes call({
    String? firstName,
    String? middleName,
    String? lastName,
    Query$GetAccountDetails$account$accountContacts$value$contactPreferences?
        contactPreferences,
    List<Query$GetAccountDetails$account$accountContacts$value$proofOfAddress>?
        proofOfAddress,
    List<Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification>?
        proofOfIdentification,
    DateTime? dateOfBirth,
    List<Enum$ContactType>? contactTypes,
    String? addressKey,
    String? $__typename,
  });
  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences<
      TRes> get contactPreferences;
  TRes proofOfAddress(
      Iterable<Query$GetAccountDetails$account$accountContacts$value$proofOfAddress> Function(
              Iterable<
                  CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress<
                      Query$GetAccountDetails$account$accountContacts$value$proofOfAddress>>)
          _fn);
  TRes proofOfIdentification(
      Iterable<Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification> Function(
              Iterable<
                  CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification<
                      Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification>>)
          _fn);
}

class _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value<TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value<TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$accountContacts$value _instance;

  final TRes Function(Query$GetAccountDetails$account$accountContacts$value)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? middleName = _undefined,
    Object? lastName = _undefined,
    Object? contactPreferences = _undefined,
    Object? proofOfAddress = _undefined,
    Object? proofOfIdentification = _undefined,
    Object? dateOfBirth = _undefined,
    Object? contactTypes = _undefined,
    Object? addressKey = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountDetails$account$accountContacts$value(
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        middleName: middleName == _undefined
            ? _instance.middleName
            : (middleName as String?),
        lastName: lastName == _undefined || lastName == null
            ? _instance.lastName
            : (lastName as String),
        contactPreferences: contactPreferences == _undefined ||
                contactPreferences == null
            ? _instance.contactPreferences
            : (contactPreferences
                as Query$GetAccountDetails$account$accountContacts$value$contactPreferences),
        proofOfAddress: proofOfAddress == _undefined || proofOfAddress == null
            ? _instance.proofOfAddress
            : (proofOfAddress as List<
                Query$GetAccountDetails$account$accountContacts$value$proofOfAddress>),
        proofOfIdentification: proofOfIdentification == _undefined ||
                proofOfIdentification == null
            ? _instance.proofOfIdentification
            : (proofOfIdentification as List<
                Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification>),
        dateOfBirth: dateOfBirth == _undefined
            ? _instance.dateOfBirth
            : (dateOfBirth as DateTime?),
        contactTypes: contactTypes == _undefined || contactTypes == null
            ? _instance.contactTypes
            : (contactTypes as List<Enum$ContactType>),
        addressKey: addressKey == _undefined || addressKey == null
            ? _instance.addressKey
            : (addressKey as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences<
      TRes> get contactPreferences {
    final local$contactPreferences = _instance.contactPreferences;
    return CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences(
        local$contactPreferences, (e) => call(contactPreferences: e));
  }

  TRes proofOfAddress(
          Iterable<Query$GetAccountDetails$account$accountContacts$value$proofOfAddress> Function(
                  Iterable<
                      CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress<
                          Query$GetAccountDetails$account$accountContacts$value$proofOfAddress>>)
              _fn) =>
      call(
          proofOfAddress: _fn(_instance.proofOfAddress.map((e) =>
              CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress(
                e,
                (i) => i,
              ))).toList());

  TRes proofOfIdentification(
          Iterable<Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification> Function(
                  Iterable<
                      CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification<
                          Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification>>)
              _fn) =>
      call(
          proofOfIdentification: _fn(_instance.proofOfIdentification.map((e) =>
              CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value<TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value(
      this._res);

  TRes _res;

  call({
    String? firstName,
    String? middleName,
    String? lastName,
    Query$GetAccountDetails$account$accountContacts$value$contactPreferences?
        contactPreferences,
    List<Query$GetAccountDetails$account$accountContacts$value$proofOfAddress>?
        proofOfAddress,
    List<Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification>?
        proofOfIdentification,
    DateTime? dateOfBirth,
    List<Enum$ContactType>? contactTypes,
    String? addressKey,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences<
          TRes>
      get contactPreferences =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences
              .stub(_res);

  proofOfAddress(_fn) => _res;

  proofOfIdentification(_fn) => _res;
}

class Query$GetAccountDetails$account$accountContacts$value$contactPreferences {
  Query$GetAccountDetails$account$accountContacts$value$contactPreferences({
    required this.mobile,
    required this.email,
    required this.phone,
    required this.post,
    required this.fax,
    this.$__typename = 'ContactPreferences',
  });

  factory Query$GetAccountDetails$account$accountContacts$value$contactPreferences.fromJson(
      Map<String, dynamic> json) {
    final l$mobile = json['mobile'];
    final l$email = json['email'];
    final l$phone = json['phone'];
    final l$post = json['post'];
    final l$fax = json['fax'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$accountContacts$value$contactPreferences(
      mobile:
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile
              .fromJson((l$mobile as Map<String, dynamic>)),
      email:
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email
              .fromJson((l$email as Map<String, dynamic>)),
      phone:
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone
              .fromJson((l$phone as Map<String, dynamic>)),
      post:
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post
              .fromJson((l$post as Map<String, dynamic>)),
      fax:
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax
              .fromJson((l$fax as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile
      mobile;

  final Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email
      email;

  final Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone
      phone;

  final Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post
      post;

  final Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax
      fax;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mobile = mobile;
    _resultData['mobile'] = l$mobile.toJson();
    final l$email = email;
    _resultData['email'] = l$email.toJson();
    final l$phone = phone;
    _resultData['phone'] = l$phone.toJson();
    final l$post = post;
    _resultData['post'] = l$post.toJson();
    final l$fax = fax;
    _resultData['fax'] = l$fax.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mobile = mobile;
    final l$email = email;
    final l$phone = phone;
    final l$post = post;
    final l$fax = fax;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mobile,
      l$email,
      l$phone,
      l$post,
      l$fax,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAccountDetails$account$accountContacts$value$contactPreferences) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mobile = mobile;
    final lOther$mobile = other.mobile;
    if (l$mobile != lOther$mobile) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$post = post;
    final lOther$post = other.post;
    if (l$post != lOther$post) {
      return false;
    }
    final l$fax = fax;
    final lOther$fax = other.fax;
    if (l$fax != lOther$fax) {
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

extension UtilityExtension$Query$GetAccountDetails$account$accountContacts$value$contactPreferences
    on Query$GetAccountDetails$account$accountContacts$value$contactPreferences {
  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences<
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences>
      get copyWith =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences<
    TRes> {
  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences(
    Query$GetAccountDetails$account$accountContacts$value$contactPreferences
        instance,
    TRes Function(
            Query$GetAccountDetails$account$accountContacts$value$contactPreferences)
        then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences;

  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences;

  TRes call({
    Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile?
        mobile,
    Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email?
        email,
    Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone?
        phone,
    Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post?
        post,
    Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax?
        fax,
    String? $__typename,
  });
  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile<
      TRes> get mobile;
  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email<
      TRes> get email;
  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone<
      TRes> get phone;
  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post<
      TRes> get post;
  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax<
      TRes> get fax;
}

class _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences<
            TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$accountContacts$value$contactPreferences
      _instance;

  final TRes Function(
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mobile = _undefined,
    Object? email = _undefined,
    Object? phone = _undefined,
    Object? post = _undefined,
    Object? fax = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences(
        mobile: mobile == _undefined || mobile == null
            ? _instance.mobile
            : (mobile
                as Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile),
        email: email == _undefined || email == null
            ? _instance.email
            : (email
                as Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email),
        phone: phone == _undefined || phone == null
            ? _instance.phone
            : (phone
                as Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone),
        post: post == _undefined || post == null
            ? _instance.post
            : (post
                as Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post),
        fax: fax == _undefined || fax == null
            ? _instance.fax
            : (fax
                as Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile<
      TRes> get mobile {
    final local$mobile = _instance.mobile;
    return CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile(
        local$mobile, (e) => call(mobile: e));
  }

  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email<
      TRes> get email {
    final local$email = _instance.email;
    return CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email(
        local$email, (e) => call(email: e));
  }

  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone<
      TRes> get phone {
    final local$phone = _instance.phone;
    return CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone(
        local$phone, (e) => call(phone: e));
  }

  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post<
      TRes> get post {
    final local$post = _instance.post;
    return CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post(
        local$post, (e) => call(post: e));
  }

  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax<
      TRes> get fax {
    final local$fax = _instance.fax;
    return CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax(
        local$fax, (e) => call(fax: e));
  }
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences(
      this._res);

  TRes _res;

  call({
    Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile?
        mobile,
    Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email?
        email,
    Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone?
        phone,
    Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post?
        post,
    Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax?
        fax,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile<
          TRes>
      get mobile =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile
              .stub(_res);

  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email<
          TRes>
      get email =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email
              .stub(_res);

  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone<
          TRes>
      get phone =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone
              .stub(_res);

  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post<
          TRes>
      get post =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post
              .stub(_res);

  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax<
          TRes>
      get fax =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax
              .stub(_res);
}

class Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile {
  Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile.fromJson(
      Map<String, dynamic> json) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile(
      value: (l$value as String),
      enabled: (l$enabled as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final bool enabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$enabled = enabled;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      l$enabled,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile
    on Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile {
  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile<
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile>
      get copyWith =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile<
    TRes> {
  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile(
    Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile
        instance,
    TRes Function(
            Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile)
        then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile;

  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile;

  TRes call({
    String? value,
    bool? enabled,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile<
            TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile
      _instance;

  final TRes Function(
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile(
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
        enabled: enabled == _undefined || enabled == null
            ? _instance.enabled
            : (enabled as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$mobile(
      this._res);

  TRes _res;

  call({
    String? value,
    bool? enabled,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email {
  Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email.fromJson(
      Map<String, dynamic> json) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email(
      value: (l$value as String),
      enabled: (l$enabled as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final bool enabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$enabled = enabled;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      l$enabled,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email
    on Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email {
  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email<
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email>
      get copyWith =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email<
    TRes> {
  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email(
    Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email
        instance,
    TRes Function(
            Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email)
        then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email;

  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email;

  TRes call({
    String? value,
    bool? enabled,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email<
            TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email
      _instance;

  final TRes Function(
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email(
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
        enabled: enabled == _undefined || enabled == null
            ? _instance.enabled
            : (enabled as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$email(
      this._res);

  TRes _res;

  call({
    String? value,
    bool? enabled,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone {
  Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone.fromJson(
      Map<String, dynamic> json) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone(
      value: (l$value as String),
      enabled: (l$enabled as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final bool enabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$enabled = enabled;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      l$enabled,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone
    on Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone {
  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone<
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone>
      get copyWith =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone<
    TRes> {
  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone(
    Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone
        instance,
    TRes Function(
            Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone)
        then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone;

  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone;

  TRes call({
    String? value,
    bool? enabled,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone<
            TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone
      _instance;

  final TRes Function(
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone(
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
        enabled: enabled == _undefined || enabled == null
            ? _instance.enabled
            : (enabled as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$phone(
      this._res);

  TRes _res;

  call({
    String? value,
    bool? enabled,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post {
  Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post.fromJson(
      Map<String, dynamic> json) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post(
      value: (l$value as String),
      enabled: (l$enabled as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final bool enabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$enabled = enabled;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      l$enabled,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post
    on Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post {
  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post<
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post>
      get copyWith =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post<
    TRes> {
  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post(
    Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post
        instance,
    TRes Function(
            Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post)
        then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post;

  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post;

  TRes call({
    String? value,
    bool? enabled,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post<
            TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post
      _instance;

  final TRes Function(
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post(
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
        enabled: enabled == _undefined || enabled == null
            ? _instance.enabled
            : (enabled as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$post(
      this._res);

  TRes _res;

  call({
    String? value,
    bool? enabled,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax {
  Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax({
    required this.value,
    required this.enabled,
    this.$__typename = 'ContactMethod',
  });

  factory Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax.fromJson(
      Map<String, dynamic> json) {
    final l$value = json['value'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax(
      value: (l$value as String),
      enabled: (l$enabled as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String value;

  final bool enabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$value = value;
    _resultData['value'] = l$value;
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$value = value;
    final l$enabled = enabled;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$value,
      l$enabled,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax
    on Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax {
  CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax<
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax>
      get copyWith =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax<
    TRes> {
  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax(
    Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax
        instance,
    TRes Function(
            Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax)
        then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax;

  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax;

  TRes call({
    String? value,
    bool? enabled,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax<
            TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax
      _instance;

  final TRes Function(
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? value = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax(
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
        enabled: enabled == _undefined || enabled == null
            ? _instance.enabled
            : (enabled as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$contactPreferences$fax(
      this._res);

  TRes _res;

  call({
    String? value,
    bool? enabled,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAccountDetails$account$accountContacts$value$proofOfAddress {
  Query$GetAccountDetails$account$accountContacts$value$proofOfAddress({
    required this.media,
    required this.validFrom,
    required this.validTo,
    required this.type,
    required this.subType,
    this.$__typename = 'Identification',
  });

  factory Query$GetAccountDetails$account$accountContacts$value$proofOfAddress.fromJson(
      Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$validFrom = json['validFrom'];
    final l$validTo = json['validTo'];
    final l$type = json['type'];
    final l$subType = json['subType'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$accountContacts$value$proofOfAddress(
      media:
          Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media
              .fromJson((l$media as Map<String, dynamic>)),
      validFrom: DateTime.parse((l$validFrom as String)),
      validTo: DateTime.parse((l$validTo as String)),
      type: fromJson$Enum$IdentificationType((l$type as String)),
      subType: fromJson$Enum$IdentificationSubType((l$subType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media
      media;

  final DateTime validFrom;

  final DateTime validTo;

  final Enum$IdentificationType type;

  final Enum$IdentificationSubType subType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$validFrom = validFrom;
    _resultData['validFrom'] = l$validFrom.toIso8601String();
    final l$validTo = validTo;
    _resultData['validTo'] = l$validTo.toIso8601String();
    final l$type = type;
    _resultData['type'] = toJson$Enum$IdentificationType(l$type);
    final l$subType = subType;
    _resultData['subType'] = toJson$Enum$IdentificationSubType(l$subType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$validFrom = validFrom;
    final l$validTo = validTo;
    final l$type = type;
    final l$subType = subType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media,
      l$validFrom,
      l$validTo,
      l$type,
      l$subType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAccountDetails$account$accountContacts$value$proofOfAddress) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$validFrom = validFrom;
    final lOther$validFrom = other.validFrom;
    if (l$validFrom != lOther$validFrom) {
      return false;
    }
    final l$validTo = validTo;
    final lOther$validTo = other.validTo;
    if (l$validTo != lOther$validTo) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$subType = subType;
    final lOther$subType = other.subType;
    if (l$subType != lOther$subType) {
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

extension UtilityExtension$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress
    on Query$GetAccountDetails$account$accountContacts$value$proofOfAddress {
  CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress<
          Query$GetAccountDetails$account$accountContacts$value$proofOfAddress>
      get copyWith =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress<
    TRes> {
  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress(
    Query$GetAccountDetails$account$accountContacts$value$proofOfAddress
        instance,
    TRes Function(
            Query$GetAccountDetails$account$accountContacts$value$proofOfAddress)
        then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress;

  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress;

  TRes call({
    Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media?
        media,
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? $__typename,
  });
  CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media<
      TRes> get media;
}

class _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress<
            TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$accountContacts$value$proofOfAddress
      _instance;

  final TRes Function(
          Query$GetAccountDetails$account$accountContacts$value$proofOfAddress)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? validFrom = _undefined,
    Object? validTo = _undefined,
    Object? type = _undefined,
    Object? subType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAccountDetails$account$accountContacts$value$proofOfAddress(
        media: media == _undefined || media == null
            ? _instance.media
            : (media
                as Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media),
        validFrom: validFrom == _undefined || validFrom == null
            ? _instance.validFrom
            : (validFrom as DateTime),
        validTo: validTo == _undefined || validTo == null
            ? _instance.validTo
            : (validTo as DateTime),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$IdentificationType),
        subType: subType == _undefined || subType == null
            ? _instance.subType
            : (subType as Enum$IdentificationSubType),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media<
      TRes> get media {
    final local$media = _instance.media;
    return CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media(
        local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress(
      this._res);

  TRes _res;

  call({
    Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media?
        media,
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media<
          TRes>
      get media =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media
              .stub(_res);
}

class Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media {
  Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media.fromJson(
      Map<String, dynamic> json) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$url,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media
    on Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media {
  CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media<
          Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media>
      get copyWith =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media<
    TRes> {
  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media(
    Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media
        instance,
    TRes Function(
            Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media)
        then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media;

  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media;

  TRes call({
    String? url,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media<
            TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media
      _instance;

  final TRes Function(
          Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media(
        url: url == _undefined || url == null ? _instance.url : (url as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfAddress$media(
      this._res);

  TRes _res;

  call({
    String? url,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification {
  Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification({
    required this.media,
    required this.validFrom,
    required this.validTo,
    required this.type,
    required this.subType,
    this.$__typename = 'Identification',
  });

  factory Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification.fromJson(
      Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$validFrom = json['validFrom'];
    final l$validTo = json['validTo'];
    final l$type = json['type'];
    final l$subType = json['subType'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification(
      media:
          Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media
              .fromJson((l$media as Map<String, dynamic>)),
      validFrom: DateTime.parse((l$validFrom as String)),
      validTo: DateTime.parse((l$validTo as String)),
      type: fromJson$Enum$IdentificationType((l$type as String)),
      subType: fromJson$Enum$IdentificationSubType((l$subType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media
      media;

  final DateTime validFrom;

  final DateTime validTo;

  final Enum$IdentificationType type;

  final Enum$IdentificationSubType subType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$validFrom = validFrom;
    _resultData['validFrom'] = l$validFrom.toIso8601String();
    final l$validTo = validTo;
    _resultData['validTo'] = l$validTo.toIso8601String();
    final l$type = type;
    _resultData['type'] = toJson$Enum$IdentificationType(l$type);
    final l$subType = subType;
    _resultData['subType'] = toJson$Enum$IdentificationSubType(l$subType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$validFrom = validFrom;
    final l$validTo = validTo;
    final l$type = type;
    final l$subType = subType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media,
      l$validFrom,
      l$validTo,
      l$type,
      l$subType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$validFrom = validFrom;
    final lOther$validFrom = other.validFrom;
    if (l$validFrom != lOther$validFrom) {
      return false;
    }
    final l$validTo = validTo;
    final lOther$validTo = other.validTo;
    if (l$validTo != lOther$validTo) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$subType = subType;
    final lOther$subType = other.subType;
    if (l$subType != lOther$subType) {
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

extension UtilityExtension$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification
    on Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification {
  CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification<
          Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification>
      get copyWith =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification<
    TRes> {
  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification(
    Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification
        instance,
    TRes Function(
            Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification)
        then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification;

  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification;

  TRes call({
    Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media?
        media,
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? $__typename,
  });
  CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media<
      TRes> get media;
}

class _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification<
            TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification
      _instance;

  final TRes Function(
          Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? validFrom = _undefined,
    Object? validTo = _undefined,
    Object? type = _undefined,
    Object? subType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification(
        media: media == _undefined || media == null
            ? _instance.media
            : (media
                as Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media),
        validFrom: validFrom == _undefined || validFrom == null
            ? _instance.validFrom
            : (validFrom as DateTime),
        validTo: validTo == _undefined || validTo == null
            ? _instance.validTo
            : (validTo as DateTime),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$IdentificationType),
        subType: subType == _undefined || subType == null
            ? _instance.subType
            : (subType as Enum$IdentificationSubType),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media<
      TRes> get media {
    final local$media = _instance.media;
    return CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media(
        local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification(
      this._res);

  TRes _res;

  call({
    Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media?
        media,
    DateTime? validFrom,
    DateTime? validTo,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media<
          TRes>
      get media =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media
              .stub(_res);
}

class Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media {
  Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media.fromJson(
      Map<String, dynamic> json) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media(
      url: (l$url as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$url,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media
    on Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media {
  CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media<
          Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media>
      get copyWith =>
          CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media<
    TRes> {
  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media(
    Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media
        instance,
    TRes Function(
            Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media)
        then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media;

  factory CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media;

  TRes call({
    String? url,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media<
            TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media
      _instance;

  final TRes Function(
          Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media(
        url: url == _undefined || url == null ? _instance.url : (url as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$accountContacts$value$proofOfIdentification$media(
      this._res);

  TRes _res;

  call({
    String? url,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAccountDetails$account$accountAddresses {
  Query$GetAccountDetails$account$accountAddresses({
    this.key,
    this.address1,
    this.address2,
    this.address3,
    this.address4,
    this.address5,
    this.address6,
    this.postCode,
    this.countryCode,
    this.$__typename = 'AddressWithKey',
  });

  factory Query$GetAccountDetails$account$accountAddresses.fromJson(
      Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$address3 = json['address3'];
    final l$address4 = json['address4'];
    final l$address5 = json['address5'];
    final l$address6 = json['address6'];
    final l$postCode = json['postCode'];
    final l$countryCode = json['countryCode'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$accountAddresses(
      key: (l$key as String?),
      address1: (l$address1 as String?),
      address2: (l$address2 as String?),
      address3: (l$address3 as String?),
      address4: (l$address4 as String?),
      address5: (l$address5 as String?),
      address6: (l$address6 as String?),
      postCode: (l$postCode as String?),
      countryCode: (l$countryCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? key;

  final String? address1;

  final String? address2;

  final String? address3;

  final String? address4;

  final String? address5;

  final String? address6;

  final String? postCode;

  final String? countryCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
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
    final l$countryCode = countryCode;
    _resultData['countryCode'] = l$countryCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$address1 = address1;
    final l$address2 = address2;
    final l$address3 = address3;
    final l$address4 = address4;
    final l$address5 = address5;
    final l$address6 = address6;
    final l$postCode = postCode;
    final l$countryCode = countryCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$key,
      l$address1,
      l$address2,
      l$address3,
      l$address4,
      l$address5,
      l$address6,
      l$postCode,
      l$countryCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAccountDetails$account$accountAddresses) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
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

extension UtilityExtension$Query$GetAccountDetails$account$accountAddresses
    on Query$GetAccountDetails$account$accountAddresses {
  CopyWith$Query$GetAccountDetails$account$accountAddresses<
          Query$GetAccountDetails$account$accountAddresses>
      get copyWith => CopyWith$Query$GetAccountDetails$account$accountAddresses(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$accountAddresses<TRes> {
  factory CopyWith$Query$GetAccountDetails$account$accountAddresses(
    Query$GetAccountDetails$account$accountAddresses instance,
    TRes Function(Query$GetAccountDetails$account$accountAddresses) then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$accountAddresses;

  factory CopyWith$Query$GetAccountDetails$account$accountAddresses.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$accountAddresses;

  TRes call({
    String? key,
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? countryCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountDetails$account$accountAddresses<TRes>
    implements CopyWith$Query$GetAccountDetails$account$accountAddresses<TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$accountAddresses(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$accountAddresses _instance;

  final TRes Function(Query$GetAccountDetails$account$accountAddresses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? address3 = _undefined,
    Object? address4 = _undefined,
    Object? address5 = _undefined,
    Object? address6 = _undefined,
    Object? postCode = _undefined,
    Object? countryCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountDetails$account$accountAddresses(
        key: key == _undefined ? _instance.key : (key as String?),
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
        countryCode: countryCode == _undefined
            ? _instance.countryCode
            : (countryCode as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$accountAddresses<TRes>
    implements CopyWith$Query$GetAccountDetails$account$accountAddresses<TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$accountAddresses(this._res);

  TRes _res;

  call({
    String? key,
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? countryCode,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAccountDetails$account$businessDetail {
  Query$GetAccountDetails$account$businessDetail({
    this.vatNumber,
    this.paymentTerm,
    this.$__typename = 'BusinessDetail',
  });

  factory Query$GetAccountDetails$account$businessDetail.fromJson(
      Map<String, dynamic> json) {
    final l$vatNumber = json['vatNumber'];
    final l$paymentTerm = json['paymentTerm'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$businessDetail(
      vatNumber: (l$vatNumber as String?),
      paymentTerm: l$paymentTerm == null
          ? null
          : Query$GetAccountDetails$account$businessDetail$paymentTerm.fromJson(
              (l$paymentTerm as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? vatNumber;

  final Query$GetAccountDetails$account$businessDetail$paymentTerm? paymentTerm;

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
    if (!(other is Query$GetAccountDetails$account$businessDetail) ||
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

extension UtilityExtension$Query$GetAccountDetails$account$businessDetail
    on Query$GetAccountDetails$account$businessDetail {
  CopyWith$Query$GetAccountDetails$account$businessDetail<
          Query$GetAccountDetails$account$businessDetail>
      get copyWith => CopyWith$Query$GetAccountDetails$account$businessDetail(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$businessDetail<TRes> {
  factory CopyWith$Query$GetAccountDetails$account$businessDetail(
    Query$GetAccountDetails$account$businessDetail instance,
    TRes Function(Query$GetAccountDetails$account$businessDetail) then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$businessDetail;

  factory CopyWith$Query$GetAccountDetails$account$businessDetail.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$businessDetail;

  TRes call({
    String? vatNumber,
    Query$GetAccountDetails$account$businessDetail$paymentTerm? paymentTerm,
    String? $__typename,
  });
  CopyWith$Query$GetAccountDetails$account$businessDetail$paymentTerm<TRes>
      get paymentTerm;
}

class _CopyWithImpl$Query$GetAccountDetails$account$businessDetail<TRes>
    implements CopyWith$Query$GetAccountDetails$account$businessDetail<TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$businessDetail(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$businessDetail _instance;

  final TRes Function(Query$GetAccountDetails$account$businessDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? vatNumber = _undefined,
    Object? paymentTerm = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountDetails$account$businessDetail(
        vatNumber: vatNumber == _undefined
            ? _instance.vatNumber
            : (vatNumber as String?),
        paymentTerm: paymentTerm == _undefined
            ? _instance.paymentTerm
            : (paymentTerm
                as Query$GetAccountDetails$account$businessDetail$paymentTerm?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccountDetails$account$businessDetail$paymentTerm<TRes>
      get paymentTerm {
    final local$paymentTerm = _instance.paymentTerm;
    return local$paymentTerm == null
        ? CopyWith$Query$GetAccountDetails$account$businessDetail$paymentTerm
            .stub(_then(_instance))
        : CopyWith$Query$GetAccountDetails$account$businessDetail$paymentTerm(
            local$paymentTerm, (e) => call(paymentTerm: e));
  }
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$businessDetail<TRes>
    implements CopyWith$Query$GetAccountDetails$account$businessDetail<TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$businessDetail(this._res);

  TRes _res;

  call({
    String? vatNumber,
    Query$GetAccountDetails$account$businessDetail$paymentTerm? paymentTerm,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccountDetails$account$businessDetail$paymentTerm<TRes>
      get paymentTerm =>
          CopyWith$Query$GetAccountDetails$account$businessDetail$paymentTerm
              .stub(_res);
}

class Query$GetAccountDetails$account$businessDetail$paymentTerm {
  Query$GetAccountDetails$account$businessDetail$paymentTerm({
    required this.financialPaymentMethod,
    this.paymentTermTypeId,
    this.paymentTermTypeName,
    this.$__typename = 'PaymentTerm',
  });

  factory Query$GetAccountDetails$account$businessDetail$paymentTerm.fromJson(
      Map<String, dynamic> json) {
    final l$financialPaymentMethod = json['financialPaymentMethod'];
    final l$paymentTermTypeId = json['paymentTermTypeId'];
    final l$paymentTermTypeName = json['paymentTermTypeName'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$businessDetail$paymentTerm(
      financialPaymentMethod: (l$financialPaymentMethod as String),
      paymentTermTypeId: (l$paymentTermTypeId as String?),
      paymentTermTypeName: (l$paymentTermTypeName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String financialPaymentMethod;

  final String? paymentTermTypeId;

  final String? paymentTermTypeName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$financialPaymentMethod = financialPaymentMethod;
    _resultData['financialPaymentMethod'] = l$financialPaymentMethod;
    final l$paymentTermTypeId = paymentTermTypeId;
    _resultData['paymentTermTypeId'] = l$paymentTermTypeId;
    final l$paymentTermTypeName = paymentTermTypeName;
    _resultData['paymentTermTypeName'] = l$paymentTermTypeName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$financialPaymentMethod = financialPaymentMethod;
    final l$paymentTermTypeId = paymentTermTypeId;
    final l$paymentTermTypeName = paymentTermTypeName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$financialPaymentMethod,
      l$paymentTermTypeId,
      l$paymentTermTypeName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAccountDetails$account$businessDetail$paymentTerm) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$financialPaymentMethod = financialPaymentMethod;
    final lOther$financialPaymentMethod = other.financialPaymentMethod;
    if (l$financialPaymentMethod != lOther$financialPaymentMethod) {
      return false;
    }
    final l$paymentTermTypeId = paymentTermTypeId;
    final lOther$paymentTermTypeId = other.paymentTermTypeId;
    if (l$paymentTermTypeId != lOther$paymentTermTypeId) {
      return false;
    }
    final l$paymentTermTypeName = paymentTermTypeName;
    final lOther$paymentTermTypeName = other.paymentTermTypeName;
    if (l$paymentTermTypeName != lOther$paymentTermTypeName) {
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

extension UtilityExtension$Query$GetAccountDetails$account$businessDetail$paymentTerm
    on Query$GetAccountDetails$account$businessDetail$paymentTerm {
  CopyWith$Query$GetAccountDetails$account$businessDetail$paymentTerm<
          Query$GetAccountDetails$account$businessDetail$paymentTerm>
      get copyWith =>
          CopyWith$Query$GetAccountDetails$account$businessDetail$paymentTerm(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountDetails$account$businessDetail$paymentTerm<
    TRes> {
  factory CopyWith$Query$GetAccountDetails$account$businessDetail$paymentTerm(
    Query$GetAccountDetails$account$businessDetail$paymentTerm instance,
    TRes Function(Query$GetAccountDetails$account$businessDetail$paymentTerm)
        then,
  ) = _CopyWithImpl$Query$GetAccountDetails$account$businessDetail$paymentTerm;

  factory CopyWith$Query$GetAccountDetails$account$businessDetail$paymentTerm.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountDetails$account$businessDetail$paymentTerm;

  TRes call({
    String? financialPaymentMethod,
    String? paymentTermTypeId,
    String? paymentTermTypeName,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountDetails$account$businessDetail$paymentTerm<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$businessDetail$paymentTerm<
            TRes> {
  _CopyWithImpl$Query$GetAccountDetails$account$businessDetail$paymentTerm(
    this._instance,
    this._then,
  );

  final Query$GetAccountDetails$account$businessDetail$paymentTerm _instance;

  final TRes Function(
      Query$GetAccountDetails$account$businessDetail$paymentTerm) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? financialPaymentMethod = _undefined,
    Object? paymentTermTypeId = _undefined,
    Object? paymentTermTypeName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountDetails$account$businessDetail$paymentTerm(
        financialPaymentMethod: financialPaymentMethod == _undefined ||
                financialPaymentMethod == null
            ? _instance.financialPaymentMethod
            : (financialPaymentMethod as String),
        paymentTermTypeId: paymentTermTypeId == _undefined
            ? _instance.paymentTermTypeId
            : (paymentTermTypeId as String?),
        paymentTermTypeName: paymentTermTypeName == _undefined
            ? _instance.paymentTermTypeName
            : (paymentTermTypeName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccountDetails$account$businessDetail$paymentTerm<
        TRes>
    implements
        CopyWith$Query$GetAccountDetails$account$businessDetail$paymentTerm<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$businessDetail$paymentTerm(
      this._res);

  TRes _res;

  call({
    String? financialPaymentMethod,
    String? paymentTermTypeId,
    String? paymentTermTypeName,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAccountDetails$account$bankAccounts {
  Query$GetAccountDetails$account$bankAccounts({
    required this.accountNumber,
    required this.sortCode,
    this.reference,
    required this.bankName,
    required this.accountHolderName,
    this.ibanCode,
    this.swiftCode,
    this.$__typename = 'BankAccount',
  });

  factory Query$GetAccountDetails$account$bankAccounts.fromJson(
      Map<String, dynamic> json) {
    final l$accountNumber = json['accountNumber'];
    final l$sortCode = json['sortCode'];
    final l$reference = json['reference'];
    final l$bankName = json['bankName'];
    final l$accountHolderName = json['accountHolderName'];
    final l$ibanCode = json['ibanCode'];
    final l$swiftCode = json['swiftCode'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountDetails$account$bankAccounts(
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
    if (!(other is Query$GetAccountDetails$account$bankAccounts) ||
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
    Object? accountNumber = _undefined,
    Object? sortCode = _undefined,
    Object? reference = _undefined,
    Object? bankName = _undefined,
    Object? accountHolderName = _undefined,
    Object? ibanCode = _undefined,
    Object? swiftCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountDetails$account$bankAccounts(
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

class _CopyWithStubImpl$Query$GetAccountDetails$account$bankAccounts<TRes>
    implements CopyWith$Query$GetAccountDetails$account$bankAccounts<TRes> {
  _CopyWithStubImpl$Query$GetAccountDetails$account$bankAccounts(this._res);

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
