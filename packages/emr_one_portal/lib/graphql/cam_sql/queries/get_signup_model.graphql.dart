import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Query$GetSignupModel {
  Query$GetSignupModel({
    this.account,
    this.$__typename = 'Query',
  });

  factory Query$GetSignupModel.fromJson(Map<String, dynamic> json) {
    final l$account = json['account'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModel(
      account: l$account == null
          ? null
          : Query$GetSignupModel$account.fromJson(
              (l$account as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetSignupModel$account? account;

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
    if (!(other is Query$GetSignupModel) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetSignupModel on Query$GetSignupModel {
  CopyWith$Query$GetSignupModel<Query$GetSignupModel> get copyWith =>
      CopyWith$Query$GetSignupModel(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetSignupModel<TRes> {
  factory CopyWith$Query$GetSignupModel(
    Query$GetSignupModel instance,
    TRes Function(Query$GetSignupModel) then,
  ) = _CopyWithImpl$Query$GetSignupModel;

  factory CopyWith$Query$GetSignupModel.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSignupModel;

  TRes call({
    Query$GetSignupModel$account? account,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModel$account<TRes> get account;
}

class _CopyWithImpl$Query$GetSignupModel<TRes>
    implements CopyWith$Query$GetSignupModel<TRes> {
  _CopyWithImpl$Query$GetSignupModel(
    this._instance,
    this._then,
  );

  final Query$GetSignupModel _instance;

  final TRes Function(Query$GetSignupModel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? account = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSignupModel(
        account: account == _undefined
            ? _instance.account
            : (account as Query$GetSignupModel$account?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetSignupModel$account<TRes> get account {
    final local$account = _instance.account;
    return local$account == null
        ? CopyWith$Query$GetSignupModel$account.stub(_then(_instance))
        : CopyWith$Query$GetSignupModel$account(
            local$account, (e) => call(account: e));
  }
}

class _CopyWithStubImpl$Query$GetSignupModel<TRes>
    implements CopyWith$Query$GetSignupModel<TRes> {
  _CopyWithStubImpl$Query$GetSignupModel(this._res);

  TRes _res;

  call({
    Query$GetSignupModel$account? account,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetSignupModel$account<TRes> get account =>
      CopyWith$Query$GetSignupModel$account.stub(_res);
}

const documentNodeQueryGetSignupModel = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetSignupModel'),
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
            name: NameNode(value: 'accountNumber'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
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
            name: NameNode(value: 'industryGroupTypeId'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'agreeToCELEncashment'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'visitFrequency'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'defaultYardCode'),
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
                        name: NameNode(value: 'countryId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
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
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'contactPreferences'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'contactPreferenceTypeId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'value'),
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
                    name: NameNode(value: 'documents'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'documentTypeId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'documentSubTypeId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'expirationDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'active'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'fileId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'fileName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'filePath'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'issuedByCounty'),
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
                name: NameNode(value: 'accountHolderName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
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
                name: NameNode(value: 'bankName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'active'),
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
                name: NameNode(value: 'postCode'),
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

class Query$GetSignupModel$account {
  Query$GetSignupModel$account({
    this.accountNumber,
    this.name,
    this.countryId,
    this.industryGroupTypeId,
    required this.agreeToCELEncashment,
    this.visitFrequency,
    this.defaultYardCode,
    this.accountContacts,
    this.bankAccounts,
    this.address,
    this.$__typename = 'Account',
  });

  factory Query$GetSignupModel$account.fromJson(Map<String, dynamic> json) {
    final l$accountNumber = json['accountNumber'];
    final l$name = json['name'];
    final l$countryId = json['countryId'];
    final l$industryGroupTypeId = json['industryGroupTypeId'];
    final l$agreeToCELEncashment = json['agreeToCELEncashment'];
    final l$visitFrequency = json['visitFrequency'];
    final l$defaultYardCode = json['defaultYardCode'];
    final l$accountContacts = json['accountContacts'];
    final l$bankAccounts = json['bankAccounts'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModel$account(
      accountNumber: (l$accountNumber as String?),
      name: (l$name as String?),
      countryId: l$countryId == null
          ? null
          : fromJson$Enum$CountryId((l$countryId as String)),
      industryGroupTypeId: l$industryGroupTypeId == null
          ? null
          : fromJson$Enum$IndustryGroupTypeId(
              (l$industryGroupTypeId as String)),
      agreeToCELEncashment: (l$agreeToCELEncashment as bool),
      visitFrequency: l$visitFrequency == null
          ? null
          : fromJson$Enum$VisitFrequency((l$visitFrequency as String)),
      defaultYardCode: (l$defaultYardCode as String?),
      accountContacts: (l$accountContacts as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetSignupModel$account$accountContacts.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      bankAccounts: (l$bankAccounts as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetSignupModel$account$bankAccounts.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      address: l$address == null
          ? null
          : Query$GetSignupModel$account$address.fromJson(
              (l$address as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? accountNumber;

  final String? name;

  final Enum$CountryId? countryId;

  final Enum$IndustryGroupTypeId? industryGroupTypeId;

  final bool agreeToCELEncashment;

  final Enum$VisitFrequency? visitFrequency;

  final String? defaultYardCode;

  final List<Query$GetSignupModel$account$accountContacts?>? accountContacts;

  final List<Query$GetSignupModel$account$bankAccounts?>? bankAccounts;

  final Query$GetSignupModel$account$address? address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$countryId = countryId;
    _resultData['countryId'] =
        l$countryId == null ? null : toJson$Enum$CountryId(l$countryId);
    final l$industryGroupTypeId = industryGroupTypeId;
    _resultData['industryGroupTypeId'] = l$industryGroupTypeId == null
        ? null
        : toJson$Enum$IndustryGroupTypeId(l$industryGroupTypeId);
    final l$agreeToCELEncashment = agreeToCELEncashment;
    _resultData['agreeToCELEncashment'] = l$agreeToCELEncashment;
    final l$visitFrequency = visitFrequency;
    _resultData['visitFrequency'] = l$visitFrequency == null
        ? null
        : toJson$Enum$VisitFrequency(l$visitFrequency);
    final l$defaultYardCode = defaultYardCode;
    _resultData['defaultYardCode'] = l$defaultYardCode;
    final l$accountContacts = accountContacts;
    _resultData['accountContacts'] =
        l$accountContacts?.map((e) => e?.toJson()).toList();
    final l$bankAccounts = bankAccounts;
    _resultData['bankAccounts'] =
        l$bankAccounts?.map((e) => e?.toJson()).toList();
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountNumber = accountNumber;
    final l$name = name;
    final l$countryId = countryId;
    final l$industryGroupTypeId = industryGroupTypeId;
    final l$agreeToCELEncashment = agreeToCELEncashment;
    final l$visitFrequency = visitFrequency;
    final l$defaultYardCode = defaultYardCode;
    final l$accountContacts = accountContacts;
    final l$bankAccounts = bankAccounts;
    final l$address = address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountNumber,
      l$name,
      l$countryId,
      l$industryGroupTypeId,
      l$agreeToCELEncashment,
      l$visitFrequency,
      l$defaultYardCode,
      l$accountContacts == null
          ? null
          : Object.hashAll(l$accountContacts.map((v) => v)),
      l$bankAccounts == null
          ? null
          : Object.hashAll(l$bankAccounts.map((v) => v)),
      l$address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSignupModel$account) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$countryId = countryId;
    final lOther$countryId = other.countryId;
    if (l$countryId != lOther$countryId) {
      return false;
    }
    final l$industryGroupTypeId = industryGroupTypeId;
    final lOther$industryGroupTypeId = other.industryGroupTypeId;
    if (l$industryGroupTypeId != lOther$industryGroupTypeId) {
      return false;
    }
    final l$agreeToCELEncashment = agreeToCELEncashment;
    final lOther$agreeToCELEncashment = other.agreeToCELEncashment;
    if (l$agreeToCELEncashment != lOther$agreeToCELEncashment) {
      return false;
    }
    final l$visitFrequency = visitFrequency;
    final lOther$visitFrequency = other.visitFrequency;
    if (l$visitFrequency != lOther$visitFrequency) {
      return false;
    }
    final l$defaultYardCode = defaultYardCode;
    final lOther$defaultYardCode = other.defaultYardCode;
    if (l$defaultYardCode != lOther$defaultYardCode) {
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

extension UtilityExtension$Query$GetSignupModel$account
    on Query$GetSignupModel$account {
  CopyWith$Query$GetSignupModel$account<Query$GetSignupModel$account>
      get copyWith => CopyWith$Query$GetSignupModel$account(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSignupModel$account<TRes> {
  factory CopyWith$Query$GetSignupModel$account(
    Query$GetSignupModel$account instance,
    TRes Function(Query$GetSignupModel$account) then,
  ) = _CopyWithImpl$Query$GetSignupModel$account;

  factory CopyWith$Query$GetSignupModel$account.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSignupModel$account;

  TRes call({
    String? accountNumber,
    String? name,
    Enum$CountryId? countryId,
    Enum$IndustryGroupTypeId? industryGroupTypeId,
    bool? agreeToCELEncashment,
    Enum$VisitFrequency? visitFrequency,
    String? defaultYardCode,
    List<Query$GetSignupModel$account$accountContacts?>? accountContacts,
    List<Query$GetSignupModel$account$bankAccounts?>? bankAccounts,
    Query$GetSignupModel$account$address? address,
    String? $__typename,
  });
  TRes accountContacts(
      Iterable<Query$GetSignupModel$account$accountContacts?>? Function(
              Iterable<
                  CopyWith$Query$GetSignupModel$account$accountContacts<
                      Query$GetSignupModel$account$accountContacts>?>?)
          _fn);
  TRes bankAccounts(
      Iterable<Query$GetSignupModel$account$bankAccounts?>? Function(
              Iterable<
                  CopyWith$Query$GetSignupModel$account$bankAccounts<
                      Query$GetSignupModel$account$bankAccounts>?>?)
          _fn);
  CopyWith$Query$GetSignupModel$account$address<TRes> get address;
}

class _CopyWithImpl$Query$GetSignupModel$account<TRes>
    implements CopyWith$Query$GetSignupModel$account<TRes> {
  _CopyWithImpl$Query$GetSignupModel$account(
    this._instance,
    this._then,
  );

  final Query$GetSignupModel$account _instance;

  final TRes Function(Query$GetSignupModel$account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountNumber = _undefined,
    Object? name = _undefined,
    Object? countryId = _undefined,
    Object? industryGroupTypeId = _undefined,
    Object? agreeToCELEncashment = _undefined,
    Object? visitFrequency = _undefined,
    Object? defaultYardCode = _undefined,
    Object? accountContacts = _undefined,
    Object? bankAccounts = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSignupModel$account(
        accountNumber: accountNumber == _undefined
            ? _instance.accountNumber
            : (accountNumber as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        countryId: countryId == _undefined
            ? _instance.countryId
            : (countryId as Enum$CountryId?),
        industryGroupTypeId: industryGroupTypeId == _undefined
            ? _instance.industryGroupTypeId
            : (industryGroupTypeId as Enum$IndustryGroupTypeId?),
        agreeToCELEncashment:
            agreeToCELEncashment == _undefined || agreeToCELEncashment == null
                ? _instance.agreeToCELEncashment
                : (agreeToCELEncashment as bool),
        visitFrequency: visitFrequency == _undefined
            ? _instance.visitFrequency
            : (visitFrequency as Enum$VisitFrequency?),
        defaultYardCode: defaultYardCode == _undefined
            ? _instance.defaultYardCode
            : (defaultYardCode as String?),
        accountContacts: accountContacts == _undefined
            ? _instance.accountContacts
            : (accountContacts
                as List<Query$GetSignupModel$account$accountContacts?>?),
        bankAccounts: bankAccounts == _undefined
            ? _instance.bankAccounts
            : (bankAccounts
                as List<Query$GetSignupModel$account$bankAccounts?>?),
        address: address == _undefined
            ? _instance.address
            : (address as Query$GetSignupModel$account$address?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes accountContacts(
          Iterable<Query$GetSignupModel$account$accountContacts?>? Function(
                  Iterable<
                      CopyWith$Query$GetSignupModel$account$accountContacts<
                          Query$GetSignupModel$account$accountContacts>?>?)
              _fn) =>
      call(
          accountContacts: _fn(_instance.accountContacts?.map((e) => e == null
              ? null
              : CopyWith$Query$GetSignupModel$account$accountContacts(
                  e,
                  (i) => i,
                )))?.toList());

  TRes bankAccounts(
          Iterable<Query$GetSignupModel$account$bankAccounts?>? Function(
                  Iterable<
                      CopyWith$Query$GetSignupModel$account$bankAccounts<
                          Query$GetSignupModel$account$bankAccounts>?>?)
              _fn) =>
      call(
          bankAccounts: _fn(_instance.bankAccounts?.map((e) => e == null
              ? null
              : CopyWith$Query$GetSignupModel$account$bankAccounts(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$GetSignupModel$account$address<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith$Query$GetSignupModel$account$address.stub(_then(_instance))
        : CopyWith$Query$GetSignupModel$account$address(
            local$address, (e) => call(address: e));
  }
}

class _CopyWithStubImpl$Query$GetSignupModel$account<TRes>
    implements CopyWith$Query$GetSignupModel$account<TRes> {
  _CopyWithStubImpl$Query$GetSignupModel$account(this._res);

  TRes _res;

  call({
    String? accountNumber,
    String? name,
    Enum$CountryId? countryId,
    Enum$IndustryGroupTypeId? industryGroupTypeId,
    bool? agreeToCELEncashment,
    Enum$VisitFrequency? visitFrequency,
    String? defaultYardCode,
    List<Query$GetSignupModel$account$accountContacts?>? accountContacts,
    List<Query$GetSignupModel$account$bankAccounts?>? bankAccounts,
    Query$GetSignupModel$account$address? address,
    String? $__typename,
  }) =>
      _res;

  accountContacts(_fn) => _res;

  bankAccounts(_fn) => _res;

  CopyWith$Query$GetSignupModel$account$address<TRes> get address =>
      CopyWith$Query$GetSignupModel$account$address.stub(_res);
}

class Query$GetSignupModel$account$accountContacts {
  Query$GetSignupModel$account$accountContacts({
    required this.accountContactTypeId,
    this.contact,
    this.$__typename = 'AccountContact',
  });

  factory Query$GetSignupModel$account$accountContacts.fromJson(
      Map<String, dynamic> json) {
    final l$accountContactTypeId = json['accountContactTypeId'];
    final l$contact = json['contact'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModel$account$accountContacts(
      accountContactTypeId: fromJson$Enum$AccountContactTypeId(
          (l$accountContactTypeId as String)),
      contact: l$contact == null
          ? null
          : Query$GetSignupModel$account$accountContacts$contact.fromJson(
              (l$contact as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$AccountContactTypeId accountContactTypeId;

  final Query$GetSignupModel$account$accountContacts$contact? contact;

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
    if (!(other is Query$GetSignupModel$account$accountContacts) ||
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

extension UtilityExtension$Query$GetSignupModel$account$accountContacts
    on Query$GetSignupModel$account$accountContacts {
  CopyWith$Query$GetSignupModel$account$accountContacts<
          Query$GetSignupModel$account$accountContacts>
      get copyWith => CopyWith$Query$GetSignupModel$account$accountContacts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSignupModel$account$accountContacts<TRes> {
  factory CopyWith$Query$GetSignupModel$account$accountContacts(
    Query$GetSignupModel$account$accountContacts instance,
    TRes Function(Query$GetSignupModel$account$accountContacts) then,
  ) = _CopyWithImpl$Query$GetSignupModel$account$accountContacts;

  factory CopyWith$Query$GetSignupModel$account$accountContacts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSignupModel$account$accountContacts;

  TRes call({
    Enum$AccountContactTypeId? accountContactTypeId,
    Query$GetSignupModel$account$accountContacts$contact? contact,
    String? $__typename,
  });
  CopyWith$Query$GetSignupModel$account$accountContacts$contact<TRes>
      get contact;
}

class _CopyWithImpl$Query$GetSignupModel$account$accountContacts<TRes>
    implements CopyWith$Query$GetSignupModel$account$accountContacts<TRes> {
  _CopyWithImpl$Query$GetSignupModel$account$accountContacts(
    this._instance,
    this._then,
  );

  final Query$GetSignupModel$account$accountContacts _instance;

  final TRes Function(Query$GetSignupModel$account$accountContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountContactTypeId = _undefined,
    Object? contact = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSignupModel$account$accountContacts(
        accountContactTypeId:
            accountContactTypeId == _undefined || accountContactTypeId == null
                ? _instance.accountContactTypeId
                : (accountContactTypeId as Enum$AccountContactTypeId),
        contact: contact == _undefined
            ? _instance.contact
            : (contact
                as Query$GetSignupModel$account$accountContacts$contact?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetSignupModel$account$accountContacts$contact<TRes>
      get contact {
    final local$contact = _instance.contact;
    return local$contact == null
        ? CopyWith$Query$GetSignupModel$account$accountContacts$contact.stub(
            _then(_instance))
        : CopyWith$Query$GetSignupModel$account$accountContacts$contact(
            local$contact, (e) => call(contact: e));
  }
}

class _CopyWithStubImpl$Query$GetSignupModel$account$accountContacts<TRes>
    implements CopyWith$Query$GetSignupModel$account$accountContacts<TRes> {
  _CopyWithStubImpl$Query$GetSignupModel$account$accountContacts(this._res);

  TRes _res;

  call({
    Enum$AccountContactTypeId? accountContactTypeId,
    Query$GetSignupModel$account$accountContacts$contact? contact,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetSignupModel$account$accountContacts$contact<TRes>
      get contact =>
          CopyWith$Query$GetSignupModel$account$accountContacts$contact.stub(
              _res);
}

class Query$GetSignupModel$account$accountContacts$contact {
  Query$GetSignupModel$account$accountContacts$contact({
    this.firstName,
    this.lastName,
    this.contactInformation,
    this.contactPreferences,
    this.documents,
    this.$__typename = 'Contact',
  });

  factory Query$GetSignupModel$account$accountContacts$contact.fromJson(
      Map<String, dynamic> json) {
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$contactInformation = json['contactInformation'];
    final l$contactPreferences = json['contactPreferences'];
    final l$documents = json['documents'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModel$account$accountContacts$contact(
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      contactInformation: (l$contactInformation as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetSignupModel$account$accountContacts$contact$contactInformation
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      contactPreferences: (l$contactPreferences as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetSignupModel$account$accountContacts$contact$contactPreferences
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      documents: (l$documents as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetSignupModel$account$accountContacts$contact$documents
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? firstName;

  final String? lastName;

  final List<
          Query$GetSignupModel$account$accountContacts$contact$contactInformation?>?
      contactInformation;

  final List<
          Query$GetSignupModel$account$accountContacts$contact$contactPreferences?>?
      contactPreferences;

  final List<Query$GetSignupModel$account$accountContacts$contact$documents?>?
      documents;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$contactInformation = contactInformation;
    _resultData['contactInformation'] =
        l$contactInformation?.map((e) => e?.toJson()).toList();
    final l$contactPreferences = contactPreferences;
    _resultData['contactPreferences'] =
        l$contactPreferences?.map((e) => e?.toJson()).toList();
    final l$documents = documents;
    _resultData['documents'] = l$documents?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$contactInformation = contactInformation;
    final l$contactPreferences = contactPreferences;
    final l$documents = documents;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$firstName,
      l$lastName,
      l$contactInformation == null
          ? null
          : Object.hashAll(l$contactInformation.map((v) => v)),
      l$contactPreferences == null
          ? null
          : Object.hashAll(l$contactPreferences.map((v) => v)),
      l$documents == null ? null : Object.hashAll(l$documents.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSignupModel$account$accountContacts$contact) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
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
    final l$contactPreferences = contactPreferences;
    final lOther$contactPreferences = other.contactPreferences;
    if (l$contactPreferences != null && lOther$contactPreferences != null) {
      if (l$contactPreferences.length != lOther$contactPreferences.length) {
        return false;
      }
      for (int i = 0; i < l$contactPreferences.length; i++) {
        final l$contactPreferences$entry = l$contactPreferences[i];
        final lOther$contactPreferences$entry = lOther$contactPreferences[i];
        if (l$contactPreferences$entry != lOther$contactPreferences$entry) {
          return false;
        }
      }
    } else if (l$contactPreferences != lOther$contactPreferences) {
      return false;
    }
    final l$documents = documents;
    final lOther$documents = other.documents;
    if (l$documents != null && lOther$documents != null) {
      if (l$documents.length != lOther$documents.length) {
        return false;
      }
      for (int i = 0; i < l$documents.length; i++) {
        final l$documents$entry = l$documents[i];
        final lOther$documents$entry = lOther$documents[i];
        if (l$documents$entry != lOther$documents$entry) {
          return false;
        }
      }
    } else if (l$documents != lOther$documents) {
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

extension UtilityExtension$Query$GetSignupModel$account$accountContacts$contact
    on Query$GetSignupModel$account$accountContacts$contact {
  CopyWith$Query$GetSignupModel$account$accountContacts$contact<
          Query$GetSignupModel$account$accountContacts$contact>
      get copyWith =>
          CopyWith$Query$GetSignupModel$account$accountContacts$contact(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSignupModel$account$accountContacts$contact<
    TRes> {
  factory CopyWith$Query$GetSignupModel$account$accountContacts$contact(
    Query$GetSignupModel$account$accountContacts$contact instance,
    TRes Function(Query$GetSignupModel$account$accountContacts$contact) then,
  ) = _CopyWithImpl$Query$GetSignupModel$account$accountContacts$contact;

  factory CopyWith$Query$GetSignupModel$account$accountContacts$contact.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSignupModel$account$accountContacts$contact;

  TRes call({
    String? firstName,
    String? lastName,
    List<Query$GetSignupModel$account$accountContacts$contact$contactInformation?>?
        contactInformation,
    List<Query$GetSignupModel$account$accountContacts$contact$contactPreferences?>?
        contactPreferences,
    List<Query$GetSignupModel$account$accountContacts$contact$documents?>?
        documents,
    String? $__typename,
  });
  TRes contactInformation(
      Iterable<Query$GetSignupModel$account$accountContacts$contact$contactInformation?>? Function(
              Iterable<
                  CopyWith$Query$GetSignupModel$account$accountContacts$contact$contactInformation<
                      Query$GetSignupModel$account$accountContacts$contact$contactInformation>?>?)
          _fn);
  TRes contactPreferences(
      Iterable<Query$GetSignupModel$account$accountContacts$contact$contactPreferences?>? Function(
              Iterable<
                  CopyWith$Query$GetSignupModel$account$accountContacts$contact$contactPreferences<
                      Query$GetSignupModel$account$accountContacts$contact$contactPreferences>?>?)
          _fn);
  TRes documents(
      Iterable<Query$GetSignupModel$account$accountContacts$contact$documents?>? Function(
              Iterable<
                  CopyWith$Query$GetSignupModel$account$accountContacts$contact$documents<
                      Query$GetSignupModel$account$accountContacts$contact$documents>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetSignupModel$account$accountContacts$contact<TRes>
    implements
        CopyWith$Query$GetSignupModel$account$accountContacts$contact<TRes> {
  _CopyWithImpl$Query$GetSignupModel$account$accountContacts$contact(
    this._instance,
    this._then,
  );

  final Query$GetSignupModel$account$accountContacts$contact _instance;

  final TRes Function(Query$GetSignupModel$account$accountContacts$contact)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? contactInformation = _undefined,
    Object? contactPreferences = _undefined,
    Object? documents = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSignupModel$account$accountContacts$contact(
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        contactInformation: contactInformation == _undefined
            ? _instance.contactInformation
            : (contactInformation as List<
                Query$GetSignupModel$account$accountContacts$contact$contactInformation?>?),
        contactPreferences: contactPreferences == _undefined
            ? _instance.contactPreferences
            : (contactPreferences as List<
                Query$GetSignupModel$account$accountContacts$contact$contactPreferences?>?),
        documents: documents == _undefined
            ? _instance.documents
            : (documents as List<
                Query$GetSignupModel$account$accountContacts$contact$documents?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes contactInformation(
          Iterable<Query$GetSignupModel$account$accountContacts$contact$contactInformation?>? Function(
                  Iterable<
                      CopyWith$Query$GetSignupModel$account$accountContacts$contact$contactInformation<
                          Query$GetSignupModel$account$accountContacts$contact$contactInformation>?>?)
              _fn) =>
      call(
          contactInformation: _fn(_instance.contactInformation?.map((e) => e ==
                  null
              ? null
              : CopyWith$Query$GetSignupModel$account$accountContacts$contact$contactInformation(
                  e,
                  (i) => i,
                )))?.toList());

  TRes contactPreferences(
          Iterable<Query$GetSignupModel$account$accountContacts$contact$contactPreferences?>? Function(
                  Iterable<
                      CopyWith$Query$GetSignupModel$account$accountContacts$contact$contactPreferences<
                          Query$GetSignupModel$account$accountContacts$contact$contactPreferences>?>?)
              _fn) =>
      call(
          contactPreferences: _fn(_instance.contactPreferences?.map((e) => e ==
                  null
              ? null
              : CopyWith$Query$GetSignupModel$account$accountContacts$contact$contactPreferences(
                  e,
                  (i) => i,
                )))?.toList());

  TRes documents(
          Iterable<Query$GetSignupModel$account$accountContacts$contact$documents?>? Function(
                  Iterable<
                      CopyWith$Query$GetSignupModel$account$accountContacts$contact$documents<
                          Query$GetSignupModel$account$accountContacts$contact$documents>?>?)
              _fn) =>
      call(
          documents: _fn(_instance.documents?.map((e) => e == null
              ? null
              : CopyWith$Query$GetSignupModel$account$accountContacts$contact$documents(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetSignupModel$account$accountContacts$contact<
        TRes>
    implements
        CopyWith$Query$GetSignupModel$account$accountContacts$contact<TRes> {
  _CopyWithStubImpl$Query$GetSignupModel$account$accountContacts$contact(
      this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    List<Query$GetSignupModel$account$accountContacts$contact$contactInformation?>?
        contactInformation,
    List<Query$GetSignupModel$account$accountContacts$contact$contactPreferences?>?
        contactPreferences,
    List<Query$GetSignupModel$account$accountContacts$contact$documents?>?
        documents,
    String? $__typename,
  }) =>
      _res;

  contactInformation(_fn) => _res;

  contactPreferences(_fn) => _res;

  documents(_fn) => _res;
}

class Query$GetSignupModel$account$accountContacts$contact$contactInformation {
  Query$GetSignupModel$account$accountContacts$contact$contactInformation({
    required this.countryId,
    this.value,
    required this.contactInformationTypeId,
    this.$__typename = 'ContactInformation',
  });

  factory Query$GetSignupModel$account$accountContacts$contact$contactInformation.fromJson(
      Map<String, dynamic> json) {
    final l$countryId = json['countryId'];
    final l$value = json['value'];
    final l$contactInformationTypeId = json['contactInformationTypeId'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModel$account$accountContacts$contact$contactInformation(
      countryId: fromJson$Enum$CountryId((l$countryId as String)),
      value: (l$value as String?),
      contactInformationTypeId: fromJson$Enum$ContactInformationTypeId(
          (l$contactInformationTypeId as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$CountryId countryId;

  final String? value;

  final Enum$ContactInformationTypeId contactInformationTypeId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$countryId = countryId;
    _resultData['countryId'] = toJson$Enum$CountryId(l$countryId);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$contactInformationTypeId = contactInformationTypeId;
    _resultData['contactInformationTypeId'] =
        toJson$Enum$ContactInformationTypeId(l$contactInformationTypeId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$countryId = countryId;
    final l$value = value;
    final l$contactInformationTypeId = contactInformationTypeId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$countryId,
      l$value,
      l$contactInformationTypeId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetSignupModel$account$accountContacts$contact$contactInformation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$countryId = countryId;
    final lOther$countryId = other.countryId;
    if (l$countryId != lOther$countryId) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetSignupModel$account$accountContacts$contact$contactInformation
    on Query$GetSignupModel$account$accountContacts$contact$contactInformation {
  CopyWith$Query$GetSignupModel$account$accountContacts$contact$contactInformation<
          Query$GetSignupModel$account$accountContacts$contact$contactInformation>
      get copyWith =>
          CopyWith$Query$GetSignupModel$account$accountContacts$contact$contactInformation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSignupModel$account$accountContacts$contact$contactInformation<
    TRes> {
  factory CopyWith$Query$GetSignupModel$account$accountContacts$contact$contactInformation(
    Query$GetSignupModel$account$accountContacts$contact$contactInformation
        instance,
    TRes Function(
            Query$GetSignupModel$account$accountContacts$contact$contactInformation)
        then,
  ) = _CopyWithImpl$Query$GetSignupModel$account$accountContacts$contact$contactInformation;

  factory CopyWith$Query$GetSignupModel$account$accountContacts$contact$contactInformation.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSignupModel$account$accountContacts$contact$contactInformation;

  TRes call({
    Enum$CountryId? countryId,
    String? value,
    Enum$ContactInformationTypeId? contactInformationTypeId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSignupModel$account$accountContacts$contact$contactInformation<
        TRes>
    implements
        CopyWith$Query$GetSignupModel$account$accountContacts$contact$contactInformation<
            TRes> {
  _CopyWithImpl$Query$GetSignupModel$account$accountContacts$contact$contactInformation(
    this._instance,
    this._then,
  );

  final Query$GetSignupModel$account$accountContacts$contact$contactInformation
      _instance;

  final TRes Function(
          Query$GetSignupModel$account$accountContacts$contact$contactInformation)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countryId = _undefined,
    Object? value = _undefined,
    Object? contactInformationTypeId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetSignupModel$account$accountContacts$contact$contactInformation(
        countryId: countryId == _undefined || countryId == null
            ? _instance.countryId
            : (countryId as Enum$CountryId),
        value: value == _undefined ? _instance.value : (value as String?),
        contactInformationTypeId: contactInformationTypeId == _undefined ||
                contactInformationTypeId == null
            ? _instance.contactInformationTypeId
            : (contactInformationTypeId as Enum$ContactInformationTypeId),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetSignupModel$account$accountContacts$contact$contactInformation<
        TRes>
    implements
        CopyWith$Query$GetSignupModel$account$accountContacts$contact$contactInformation<
            TRes> {
  _CopyWithStubImpl$Query$GetSignupModel$account$accountContacts$contact$contactInformation(
      this._res);

  TRes _res;

  call({
    Enum$CountryId? countryId,
    String? value,
    Enum$ContactInformationTypeId? contactInformationTypeId,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetSignupModel$account$accountContacts$contact$contactPreferences {
  Query$GetSignupModel$account$accountContacts$contact$contactPreferences({
    required this.contactPreferenceTypeId,
    required this.value,
    this.$__typename = 'ContactPreference',
  });

  factory Query$GetSignupModel$account$accountContacts$contact$contactPreferences.fromJson(
      Map<String, dynamic> json) {
    final l$contactPreferenceTypeId = json['contactPreferenceTypeId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModel$account$accountContacts$contact$contactPreferences(
      contactPreferenceTypeId: fromJson$Enum$ContactPreferenceTypeId(
          (l$contactPreferenceTypeId as String)),
      value: (l$value as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$ContactPreferenceTypeId contactPreferenceTypeId;

  final bool value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contactPreferenceTypeId = contactPreferenceTypeId;
    _resultData['contactPreferenceTypeId'] =
        toJson$Enum$ContactPreferenceTypeId(l$contactPreferenceTypeId);
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contactPreferenceTypeId = contactPreferenceTypeId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contactPreferenceTypeId,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetSignupModel$account$accountContacts$contact$contactPreferences) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contactPreferenceTypeId = contactPreferenceTypeId;
    final lOther$contactPreferenceTypeId = other.contactPreferenceTypeId;
    if (l$contactPreferenceTypeId != lOther$contactPreferenceTypeId) {
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

extension UtilityExtension$Query$GetSignupModel$account$accountContacts$contact$contactPreferences
    on Query$GetSignupModel$account$accountContacts$contact$contactPreferences {
  CopyWith$Query$GetSignupModel$account$accountContacts$contact$contactPreferences<
          Query$GetSignupModel$account$accountContacts$contact$contactPreferences>
      get copyWith =>
          CopyWith$Query$GetSignupModel$account$accountContacts$contact$contactPreferences(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSignupModel$account$accountContacts$contact$contactPreferences<
    TRes> {
  factory CopyWith$Query$GetSignupModel$account$accountContacts$contact$contactPreferences(
    Query$GetSignupModel$account$accountContacts$contact$contactPreferences
        instance,
    TRes Function(
            Query$GetSignupModel$account$accountContacts$contact$contactPreferences)
        then,
  ) = _CopyWithImpl$Query$GetSignupModel$account$accountContacts$contact$contactPreferences;

  factory CopyWith$Query$GetSignupModel$account$accountContacts$contact$contactPreferences.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSignupModel$account$accountContacts$contact$contactPreferences;

  TRes call({
    Enum$ContactPreferenceTypeId? contactPreferenceTypeId,
    bool? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSignupModel$account$accountContacts$contact$contactPreferences<
        TRes>
    implements
        CopyWith$Query$GetSignupModel$account$accountContacts$contact$contactPreferences<
            TRes> {
  _CopyWithImpl$Query$GetSignupModel$account$accountContacts$contact$contactPreferences(
    this._instance,
    this._then,
  );

  final Query$GetSignupModel$account$accountContacts$contact$contactPreferences
      _instance;

  final TRes Function(
          Query$GetSignupModel$account$accountContacts$contact$contactPreferences)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contactPreferenceTypeId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetSignupModel$account$accountContacts$contact$contactPreferences(
        contactPreferenceTypeId: contactPreferenceTypeId == _undefined ||
                contactPreferenceTypeId == null
            ? _instance.contactPreferenceTypeId
            : (contactPreferenceTypeId as Enum$ContactPreferenceTypeId),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetSignupModel$account$accountContacts$contact$contactPreferences<
        TRes>
    implements
        CopyWith$Query$GetSignupModel$account$accountContacts$contact$contactPreferences<
            TRes> {
  _CopyWithStubImpl$Query$GetSignupModel$account$accountContacts$contact$contactPreferences(
      this._res);

  TRes _res;

  call({
    Enum$ContactPreferenceTypeId? contactPreferenceTypeId,
    bool? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetSignupModel$account$accountContacts$contact$documents {
  Query$GetSignupModel$account$accountContacts$contact$documents({
    required this.documentTypeId,
    required this.documentSubTypeId,
    required this.expirationDate,
    required this.active,
    this.fileId,
    this.fileName,
    this.filePath,
    this.issuedByCounty,
    this.$__typename = 'Document',
  });

  factory Query$GetSignupModel$account$accountContacts$contact$documents.fromJson(
      Map<String, dynamic> json) {
    final l$documentTypeId = json['documentTypeId'];
    final l$documentSubTypeId = json['documentSubTypeId'];
    final l$expirationDate = json['expirationDate'];
    final l$active = json['active'];
    final l$fileId = json['fileId'];
    final l$fileName = json['fileName'];
    final l$filePath = json['filePath'];
    final l$issuedByCounty = json['issuedByCounty'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModel$account$accountContacts$contact$documents(
      documentTypeId:
          fromJson$Enum$DocumentTypeId((l$documentTypeId as String)),
      documentSubTypeId:
          fromJson$Enum$DocumentSubTypeId((l$documentSubTypeId as String)),
      expirationDate: DateTime.parse((l$expirationDate as String)),
      active: (l$active as bool),
      fileId: (l$fileId as String?),
      fileName: (l$fileName as String?),
      filePath: (l$filePath as String?),
      issuedByCounty: (l$issuedByCounty as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$DocumentTypeId documentTypeId;

  final Enum$DocumentSubTypeId documentSubTypeId;

  final DateTime expirationDate;

  final bool active;

  final String? fileId;

  final String? fileName;

  final String? filePath;

  final String? issuedByCounty;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$documentTypeId = documentTypeId;
    _resultData['documentTypeId'] =
        toJson$Enum$DocumentTypeId(l$documentTypeId);
    final l$documentSubTypeId = documentSubTypeId;
    _resultData['documentSubTypeId'] =
        toJson$Enum$DocumentSubTypeId(l$documentSubTypeId);
    final l$expirationDate = expirationDate;
    _resultData['expirationDate'] = l$expirationDate.toIso8601String();
    final l$active = active;
    _resultData['active'] = l$active;
    final l$fileId = fileId;
    _resultData['fileId'] = l$fileId;
    final l$fileName = fileName;
    _resultData['fileName'] = l$fileName;
    final l$filePath = filePath;
    _resultData['filePath'] = l$filePath;
    final l$issuedByCounty = issuedByCounty;
    _resultData['issuedByCounty'] = l$issuedByCounty;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$documentTypeId = documentTypeId;
    final l$documentSubTypeId = documentSubTypeId;
    final l$expirationDate = expirationDate;
    final l$active = active;
    final l$fileId = fileId;
    final l$fileName = fileName;
    final l$filePath = filePath;
    final l$issuedByCounty = issuedByCounty;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$documentTypeId,
      l$documentSubTypeId,
      l$expirationDate,
      l$active,
      l$fileId,
      l$fileName,
      l$filePath,
      l$issuedByCounty,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetSignupModel$account$accountContacts$contact$documents) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$documentTypeId = documentTypeId;
    final lOther$documentTypeId = other.documentTypeId;
    if (l$documentTypeId != lOther$documentTypeId) {
      return false;
    }
    final l$documentSubTypeId = documentSubTypeId;
    final lOther$documentSubTypeId = other.documentSubTypeId;
    if (l$documentSubTypeId != lOther$documentSubTypeId) {
      return false;
    }
    final l$expirationDate = expirationDate;
    final lOther$expirationDate = other.expirationDate;
    if (l$expirationDate != lOther$expirationDate) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$fileId = fileId;
    final lOther$fileId = other.fileId;
    if (l$fileId != lOther$fileId) {
      return false;
    }
    final l$fileName = fileName;
    final lOther$fileName = other.fileName;
    if (l$fileName != lOther$fileName) {
      return false;
    }
    final l$filePath = filePath;
    final lOther$filePath = other.filePath;
    if (l$filePath != lOther$filePath) {
      return false;
    }
    final l$issuedByCounty = issuedByCounty;
    final lOther$issuedByCounty = other.issuedByCounty;
    if (l$issuedByCounty != lOther$issuedByCounty) {
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

extension UtilityExtension$Query$GetSignupModel$account$accountContacts$contact$documents
    on Query$GetSignupModel$account$accountContacts$contact$documents {
  CopyWith$Query$GetSignupModel$account$accountContacts$contact$documents<
          Query$GetSignupModel$account$accountContacts$contact$documents>
      get copyWith =>
          CopyWith$Query$GetSignupModel$account$accountContacts$contact$documents(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSignupModel$account$accountContacts$contact$documents<
    TRes> {
  factory CopyWith$Query$GetSignupModel$account$accountContacts$contact$documents(
    Query$GetSignupModel$account$accountContacts$contact$documents instance,
    TRes Function(
            Query$GetSignupModel$account$accountContacts$contact$documents)
        then,
  ) = _CopyWithImpl$Query$GetSignupModel$account$accountContacts$contact$documents;

  factory CopyWith$Query$GetSignupModel$account$accountContacts$contact$documents.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetSignupModel$account$accountContacts$contact$documents;

  TRes call({
    Enum$DocumentTypeId? documentTypeId,
    Enum$DocumentSubTypeId? documentSubTypeId,
    DateTime? expirationDate,
    bool? active,
    String? fileId,
    String? fileName,
    String? filePath,
    String? issuedByCounty,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSignupModel$account$accountContacts$contact$documents<
        TRes>
    implements
        CopyWith$Query$GetSignupModel$account$accountContacts$contact$documents<
            TRes> {
  _CopyWithImpl$Query$GetSignupModel$account$accountContacts$contact$documents(
    this._instance,
    this._then,
  );

  final Query$GetSignupModel$account$accountContacts$contact$documents
      _instance;

  final TRes Function(
      Query$GetSignupModel$account$accountContacts$contact$documents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? documentTypeId = _undefined,
    Object? documentSubTypeId = _undefined,
    Object? expirationDate = _undefined,
    Object? active = _undefined,
    Object? fileId = _undefined,
    Object? fileName = _undefined,
    Object? filePath = _undefined,
    Object? issuedByCounty = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSignupModel$account$accountContacts$contact$documents(
        documentTypeId: documentTypeId == _undefined || documentTypeId == null
            ? _instance.documentTypeId
            : (documentTypeId as Enum$DocumentTypeId),
        documentSubTypeId:
            documentSubTypeId == _undefined || documentSubTypeId == null
                ? _instance.documentSubTypeId
                : (documentSubTypeId as Enum$DocumentSubTypeId),
        expirationDate: expirationDate == _undefined || expirationDate == null
            ? _instance.expirationDate
            : (expirationDate as DateTime),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        fileId: fileId == _undefined ? _instance.fileId : (fileId as String?),
        fileName:
            fileName == _undefined ? _instance.fileName : (fileName as String?),
        filePath:
            filePath == _undefined ? _instance.filePath : (filePath as String?),
        issuedByCounty: issuedByCounty == _undefined
            ? _instance.issuedByCounty
            : (issuedByCounty as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetSignupModel$account$accountContacts$contact$documents<
        TRes>
    implements
        CopyWith$Query$GetSignupModel$account$accountContacts$contact$documents<
            TRes> {
  _CopyWithStubImpl$Query$GetSignupModel$account$accountContacts$contact$documents(
      this._res);

  TRes _res;

  call({
    Enum$DocumentTypeId? documentTypeId,
    Enum$DocumentSubTypeId? documentSubTypeId,
    DateTime? expirationDate,
    bool? active,
    String? fileId,
    String? fileName,
    String? filePath,
    String? issuedByCounty,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetSignupModel$account$bankAccounts {
  Query$GetSignupModel$account$bankAccounts({
    this.accountHolderName,
    this.bankAccountNumber,
    this.sortCode,
    this.bankName,
    required this.active,
    this.$__typename = 'BankAccount',
  });

  factory Query$GetSignupModel$account$bankAccounts.fromJson(
      Map<String, dynamic> json) {
    final l$accountHolderName = json['accountHolderName'];
    final l$bankAccountNumber = json['bankAccountNumber'];
    final l$sortCode = json['sortCode'];
    final l$bankName = json['bankName'];
    final l$active = json['active'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModel$account$bankAccounts(
      accountHolderName: (l$accountHolderName as String?),
      bankAccountNumber: (l$bankAccountNumber as String?),
      sortCode: (l$sortCode as String?),
      bankName: (l$bankName as String?),
      active: (l$active as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? accountHolderName;

  final String? bankAccountNumber;

  final String? sortCode;

  final String? bankName;

  final bool active;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountHolderName = accountHolderName;
    _resultData['accountHolderName'] = l$accountHolderName;
    final l$bankAccountNumber = bankAccountNumber;
    _resultData['bankAccountNumber'] = l$bankAccountNumber;
    final l$sortCode = sortCode;
    _resultData['sortCode'] = l$sortCode;
    final l$bankName = bankName;
    _resultData['bankName'] = l$bankName;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountHolderName = accountHolderName;
    final l$bankAccountNumber = bankAccountNumber;
    final l$sortCode = sortCode;
    final l$bankName = bankName;
    final l$active = active;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountHolderName,
      l$bankAccountNumber,
      l$sortCode,
      l$bankName,
      l$active,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSignupModel$account$bankAccounts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accountHolderName = accountHolderName;
    final lOther$accountHolderName = other.accountHolderName;
    if (l$accountHolderName != lOther$accountHolderName) {
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
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (l$bankName != lOther$bankName) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
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

extension UtilityExtension$Query$GetSignupModel$account$bankAccounts
    on Query$GetSignupModel$account$bankAccounts {
  CopyWith$Query$GetSignupModel$account$bankAccounts<
          Query$GetSignupModel$account$bankAccounts>
      get copyWith => CopyWith$Query$GetSignupModel$account$bankAccounts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSignupModel$account$bankAccounts<TRes> {
  factory CopyWith$Query$GetSignupModel$account$bankAccounts(
    Query$GetSignupModel$account$bankAccounts instance,
    TRes Function(Query$GetSignupModel$account$bankAccounts) then,
  ) = _CopyWithImpl$Query$GetSignupModel$account$bankAccounts;

  factory CopyWith$Query$GetSignupModel$account$bankAccounts.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSignupModel$account$bankAccounts;

  TRes call({
    String? accountHolderName,
    String? bankAccountNumber,
    String? sortCode,
    String? bankName,
    bool? active,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSignupModel$account$bankAccounts<TRes>
    implements CopyWith$Query$GetSignupModel$account$bankAccounts<TRes> {
  _CopyWithImpl$Query$GetSignupModel$account$bankAccounts(
    this._instance,
    this._then,
  );

  final Query$GetSignupModel$account$bankAccounts _instance;

  final TRes Function(Query$GetSignupModel$account$bankAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountHolderName = _undefined,
    Object? bankAccountNumber = _undefined,
    Object? sortCode = _undefined,
    Object? bankName = _undefined,
    Object? active = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSignupModel$account$bankAccounts(
        accountHolderName: accountHolderName == _undefined
            ? _instance.accountHolderName
            : (accountHolderName as String?),
        bankAccountNumber: bankAccountNumber == _undefined
            ? _instance.bankAccountNumber
            : (bankAccountNumber as String?),
        sortCode:
            sortCode == _undefined ? _instance.sortCode : (sortCode as String?),
        bankName:
            bankName == _undefined ? _instance.bankName : (bankName as String?),
        active: active == _undefined || active == null
            ? _instance.active
            : (active as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetSignupModel$account$bankAccounts<TRes>
    implements CopyWith$Query$GetSignupModel$account$bankAccounts<TRes> {
  _CopyWithStubImpl$Query$GetSignupModel$account$bankAccounts(this._res);

  TRes _res;

  call({
    String? accountHolderName,
    String? bankAccountNumber,
    String? sortCode,
    String? bankName,
    bool? active,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetSignupModel$account$address {
  Query$GetSignupModel$account$address({
    this.address1,
    this.address2,
    this.address3,
    this.postCode,
    required this.countryId,
    this.$__typename = 'Address',
  });

  factory Query$GetSignupModel$account$address.fromJson(
      Map<String, dynamic> json) {
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$address3 = json['address3'];
    final l$postCode = json['postCode'];
    final l$countryId = json['countryId'];
    final l$$__typename = json['__typename'];
    return Query$GetSignupModel$account$address(
      address1: (l$address1 as String?),
      address2: (l$address2 as String?),
      address3: (l$address3 as String?),
      postCode: (l$postCode as String?),
      countryId: fromJson$Enum$CountryId((l$countryId as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? address1;

  final String? address2;

  final String? address3;

  final String? postCode;

  final Enum$CountryId countryId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address1 = address1;
    _resultData['address1'] = l$address1;
    final l$address2 = address2;
    _resultData['address2'] = l$address2;
    final l$address3 = address3;
    _resultData['address3'] = l$address3;
    final l$postCode = postCode;
    _resultData['postCode'] = l$postCode;
    final l$countryId = countryId;
    _resultData['countryId'] = toJson$Enum$CountryId(l$countryId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address1 = address1;
    final l$address2 = address2;
    final l$address3 = address3;
    final l$postCode = postCode;
    final l$countryId = countryId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address1,
      l$address2,
      l$address3,
      l$postCode,
      l$countryId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetSignupModel$account$address) ||
        runtimeType != other.runtimeType) {
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
    final l$postCode = postCode;
    final lOther$postCode = other.postCode;
    if (l$postCode != lOther$postCode) {
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

extension UtilityExtension$Query$GetSignupModel$account$address
    on Query$GetSignupModel$account$address {
  CopyWith$Query$GetSignupModel$account$address<
          Query$GetSignupModel$account$address>
      get copyWith => CopyWith$Query$GetSignupModel$account$address(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetSignupModel$account$address<TRes> {
  factory CopyWith$Query$GetSignupModel$account$address(
    Query$GetSignupModel$account$address instance,
    TRes Function(Query$GetSignupModel$account$address) then,
  ) = _CopyWithImpl$Query$GetSignupModel$account$address;

  factory CopyWith$Query$GetSignupModel$account$address.stub(TRes res) =
      _CopyWithStubImpl$Query$GetSignupModel$account$address;

  TRes call({
    String? address1,
    String? address2,
    String? address3,
    String? postCode,
    Enum$CountryId? countryId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetSignupModel$account$address<TRes>
    implements CopyWith$Query$GetSignupModel$account$address<TRes> {
  _CopyWithImpl$Query$GetSignupModel$account$address(
    this._instance,
    this._then,
  );

  final Query$GetSignupModel$account$address _instance;

  final TRes Function(Query$GetSignupModel$account$address) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? address3 = _undefined,
    Object? postCode = _undefined,
    Object? countryId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetSignupModel$account$address(
        address1:
            address1 == _undefined ? _instance.address1 : (address1 as String?),
        address2:
            address2 == _undefined ? _instance.address2 : (address2 as String?),
        address3:
            address3 == _undefined ? _instance.address3 : (address3 as String?),
        postCode:
            postCode == _undefined ? _instance.postCode : (postCode as String?),
        countryId: countryId == _undefined || countryId == null
            ? _instance.countryId
            : (countryId as Enum$CountryId),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetSignupModel$account$address<TRes>
    implements CopyWith$Query$GetSignupModel$account$address<TRes> {
  _CopyWithStubImpl$Query$GetSignupModel$account$address(this._res);

  TRes _res;

  call({
    String? address1,
    String? address2,
    String? address3,
    String? postCode,
    Enum$CountryId? countryId,
    String? $__typename,
  }) =>
      _res;
}
