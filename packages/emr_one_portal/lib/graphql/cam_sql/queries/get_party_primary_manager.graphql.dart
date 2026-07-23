import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Query$GetPartyPrimaryManager {
  Query$GetPartyPrimaryManager({
    this.account,
    this.$__typename = 'Query',
  });

  factory Query$GetPartyPrimaryManager.fromJson(Map<String, dynamic> json) {
    final l$account = json['account'];
    final l$$__typename = json['__typename'];
    return Query$GetPartyPrimaryManager(
      account: l$account == null
          ? null
          : Query$GetPartyPrimaryManager$account.fromJson(
              (l$account as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetPartyPrimaryManager$account? account;

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
    if (!(other is Query$GetPartyPrimaryManager) ||
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

extension UtilityExtension$Query$GetPartyPrimaryManager
    on Query$GetPartyPrimaryManager {
  CopyWith$Query$GetPartyPrimaryManager<Query$GetPartyPrimaryManager>
      get copyWith => CopyWith$Query$GetPartyPrimaryManager(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPartyPrimaryManager<TRes> {
  factory CopyWith$Query$GetPartyPrimaryManager(
    Query$GetPartyPrimaryManager instance,
    TRes Function(Query$GetPartyPrimaryManager) then,
  ) = _CopyWithImpl$Query$GetPartyPrimaryManager;

  factory CopyWith$Query$GetPartyPrimaryManager.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPartyPrimaryManager;

  TRes call({
    Query$GetPartyPrimaryManager$account? account,
    String? $__typename,
  });
  CopyWith$Query$GetPartyPrimaryManager$account<TRes> get account;
}

class _CopyWithImpl$Query$GetPartyPrimaryManager<TRes>
    implements CopyWith$Query$GetPartyPrimaryManager<TRes> {
  _CopyWithImpl$Query$GetPartyPrimaryManager(
    this._instance,
    this._then,
  );

  final Query$GetPartyPrimaryManager _instance;

  final TRes Function(Query$GetPartyPrimaryManager) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? account = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPartyPrimaryManager(
        account: account == _undefined
            ? _instance.account
            : (account as Query$GetPartyPrimaryManager$account?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetPartyPrimaryManager$account<TRes> get account {
    final local$account = _instance.account;
    return local$account == null
        ? CopyWith$Query$GetPartyPrimaryManager$account.stub(_then(_instance))
        : CopyWith$Query$GetPartyPrimaryManager$account(
            local$account, (e) => call(account: e));
  }
}

class _CopyWithStubImpl$Query$GetPartyPrimaryManager<TRes>
    implements CopyWith$Query$GetPartyPrimaryManager<TRes> {
  _CopyWithStubImpl$Query$GetPartyPrimaryManager(this._res);

  TRes _res;

  call({
    Query$GetPartyPrimaryManager$account? account,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetPartyPrimaryManager$account<TRes> get account =>
      CopyWith$Query$GetPartyPrimaryManager$account.stub(_res);
}

const documentNodeQueryGetPartyPrimaryManager = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetPartyPrimaryManager'),
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
            name: NameNode(value: 'primaryAccountManager'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'manager'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'userId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'accountManagerTypeId'),
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
                    name: NameNode(value: 'tradeManagerId'),
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
                name: NameNode(value: 'user'),
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
                    name: NameNode(value: 'emailAddress'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'defaultYardCode'),
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

class Query$GetPartyPrimaryManager$account {
  Query$GetPartyPrimaryManager$account({
    this.name,
    this.accountContacts,
    this.primaryAccountManager,
    this.address,
    this.defaultYardCode,
    this.$__typename = 'Account',
  });

  factory Query$GetPartyPrimaryManager$account.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$accountContacts = json['accountContacts'];
    final l$primaryAccountManager = json['primaryAccountManager'];
    final l$address = json['address'];
    final l$defaultYardCode = json['defaultYardCode'];
    final l$$__typename = json['__typename'];
    return Query$GetPartyPrimaryManager$account(
      name: (l$name as String?),
      accountContacts: (l$accountContacts as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetPartyPrimaryManager$account$accountContacts.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      primaryAccountManager: l$primaryAccountManager == null
          ? null
          : Query$GetPartyPrimaryManager$account$primaryAccountManager.fromJson(
              (l$primaryAccountManager as Map<String, dynamic>)),
      address: l$address == null
          ? null
          : Query$GetPartyPrimaryManager$account$address.fromJson(
              (l$address as Map<String, dynamic>)),
      defaultYardCode: (l$defaultYardCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final List<Query$GetPartyPrimaryManager$account$accountContacts?>?
      accountContacts;

  final Query$GetPartyPrimaryManager$account$primaryAccountManager?
      primaryAccountManager;

  final Query$GetPartyPrimaryManager$account$address? address;

  final String? defaultYardCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$accountContacts = accountContacts;
    _resultData['accountContacts'] =
        l$accountContacts?.map((e) => e?.toJson()).toList();
    final l$primaryAccountManager = primaryAccountManager;
    _resultData['primaryAccountManager'] = l$primaryAccountManager?.toJson();
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
    final l$defaultYardCode = defaultYardCode;
    _resultData['defaultYardCode'] = l$defaultYardCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$accountContacts = accountContacts;
    final l$primaryAccountManager = primaryAccountManager;
    final l$address = address;
    final l$defaultYardCode = defaultYardCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$accountContacts == null
          ? null
          : Object.hashAll(l$accountContacts.map((v) => v)),
      l$primaryAccountManager,
      l$address,
      l$defaultYardCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetPartyPrimaryManager$account) ||
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
    final l$primaryAccountManager = primaryAccountManager;
    final lOther$primaryAccountManager = other.primaryAccountManager;
    if (l$primaryAccountManager != lOther$primaryAccountManager) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$defaultYardCode = defaultYardCode;
    final lOther$defaultYardCode = other.defaultYardCode;
    if (l$defaultYardCode != lOther$defaultYardCode) {
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

extension UtilityExtension$Query$GetPartyPrimaryManager$account
    on Query$GetPartyPrimaryManager$account {
  CopyWith$Query$GetPartyPrimaryManager$account<
          Query$GetPartyPrimaryManager$account>
      get copyWith => CopyWith$Query$GetPartyPrimaryManager$account(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPartyPrimaryManager$account<TRes> {
  factory CopyWith$Query$GetPartyPrimaryManager$account(
    Query$GetPartyPrimaryManager$account instance,
    TRes Function(Query$GetPartyPrimaryManager$account) then,
  ) = _CopyWithImpl$Query$GetPartyPrimaryManager$account;

  factory CopyWith$Query$GetPartyPrimaryManager$account.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPartyPrimaryManager$account;

  TRes call({
    String? name,
    List<Query$GetPartyPrimaryManager$account$accountContacts?>?
        accountContacts,
    Query$GetPartyPrimaryManager$account$primaryAccountManager?
        primaryAccountManager,
    Query$GetPartyPrimaryManager$account$address? address,
    String? defaultYardCode,
    String? $__typename,
  });
  TRes accountContacts(
      Iterable<Query$GetPartyPrimaryManager$account$accountContacts?>? Function(
              Iterable<
                  CopyWith$Query$GetPartyPrimaryManager$account$accountContacts<
                      Query$GetPartyPrimaryManager$account$accountContacts>?>?)
          _fn);
  CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager<TRes>
      get primaryAccountManager;
  CopyWith$Query$GetPartyPrimaryManager$account$address<TRes> get address;
}

class _CopyWithImpl$Query$GetPartyPrimaryManager$account<TRes>
    implements CopyWith$Query$GetPartyPrimaryManager$account<TRes> {
  _CopyWithImpl$Query$GetPartyPrimaryManager$account(
    this._instance,
    this._then,
  );

  final Query$GetPartyPrimaryManager$account _instance;

  final TRes Function(Query$GetPartyPrimaryManager$account) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? accountContacts = _undefined,
    Object? primaryAccountManager = _undefined,
    Object? address = _undefined,
    Object? defaultYardCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPartyPrimaryManager$account(
        name: name == _undefined ? _instance.name : (name as String?),
        accountContacts: accountContacts == _undefined
            ? _instance.accountContacts
            : (accountContacts as List<
                Query$GetPartyPrimaryManager$account$accountContacts?>?),
        primaryAccountManager: primaryAccountManager == _undefined
            ? _instance.primaryAccountManager
            : (primaryAccountManager
                as Query$GetPartyPrimaryManager$account$primaryAccountManager?),
        address: address == _undefined
            ? _instance.address
            : (address as Query$GetPartyPrimaryManager$account$address?),
        defaultYardCode: defaultYardCode == _undefined
            ? _instance.defaultYardCode
            : (defaultYardCode as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes accountContacts(
          Iterable<Query$GetPartyPrimaryManager$account$accountContacts?>? Function(
                  Iterable<
                      CopyWith$Query$GetPartyPrimaryManager$account$accountContacts<
                          Query$GetPartyPrimaryManager$account$accountContacts>?>?)
              _fn) =>
      call(
          accountContacts: _fn(_instance.accountContacts?.map((e) => e == null
              ? null
              : CopyWith$Query$GetPartyPrimaryManager$account$accountContacts(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager<TRes>
      get primaryAccountManager {
    final local$primaryAccountManager = _instance.primaryAccountManager;
    return local$primaryAccountManager == null
        ? CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager
            .stub(_then(_instance))
        : CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager(
            local$primaryAccountManager, (e) => call(primaryAccountManager: e));
  }

  CopyWith$Query$GetPartyPrimaryManager$account$address<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith$Query$GetPartyPrimaryManager$account$address.stub(
            _then(_instance))
        : CopyWith$Query$GetPartyPrimaryManager$account$address(
            local$address, (e) => call(address: e));
  }
}

class _CopyWithStubImpl$Query$GetPartyPrimaryManager$account<TRes>
    implements CopyWith$Query$GetPartyPrimaryManager$account<TRes> {
  _CopyWithStubImpl$Query$GetPartyPrimaryManager$account(this._res);

  TRes _res;

  call({
    String? name,
    List<Query$GetPartyPrimaryManager$account$accountContacts?>?
        accountContacts,
    Query$GetPartyPrimaryManager$account$primaryAccountManager?
        primaryAccountManager,
    Query$GetPartyPrimaryManager$account$address? address,
    String? defaultYardCode,
    String? $__typename,
  }) =>
      _res;

  accountContacts(_fn) => _res;

  CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager<TRes>
      get primaryAccountManager =>
          CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager
              .stub(_res);

  CopyWith$Query$GetPartyPrimaryManager$account$address<TRes> get address =>
      CopyWith$Query$GetPartyPrimaryManager$account$address.stub(_res);
}

class Query$GetPartyPrimaryManager$account$accountContacts {
  Query$GetPartyPrimaryManager$account$accountContacts({
    required this.accountContactTypeId,
    this.contact,
    this.$__typename = 'AccountContact',
  });

  factory Query$GetPartyPrimaryManager$account$accountContacts.fromJson(
      Map<String, dynamic> json) {
    final l$accountContactTypeId = json['accountContactTypeId'];
    final l$contact = json['contact'];
    final l$$__typename = json['__typename'];
    return Query$GetPartyPrimaryManager$account$accountContacts(
      accountContactTypeId: fromJson$Enum$AccountContactTypeId(
          (l$accountContactTypeId as String)),
      contact: l$contact == null
          ? null
          : Query$GetPartyPrimaryManager$account$accountContacts$contact
              .fromJson((l$contact as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$AccountContactTypeId accountContactTypeId;

  final Query$GetPartyPrimaryManager$account$accountContacts$contact? contact;

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
    if (!(other is Query$GetPartyPrimaryManager$account$accountContacts) ||
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

extension UtilityExtension$Query$GetPartyPrimaryManager$account$accountContacts
    on Query$GetPartyPrimaryManager$account$accountContacts {
  CopyWith$Query$GetPartyPrimaryManager$account$accountContacts<
          Query$GetPartyPrimaryManager$account$accountContacts>
      get copyWith =>
          CopyWith$Query$GetPartyPrimaryManager$account$accountContacts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPartyPrimaryManager$account$accountContacts<
    TRes> {
  factory CopyWith$Query$GetPartyPrimaryManager$account$accountContacts(
    Query$GetPartyPrimaryManager$account$accountContacts instance,
    TRes Function(Query$GetPartyPrimaryManager$account$accountContacts) then,
  ) = _CopyWithImpl$Query$GetPartyPrimaryManager$account$accountContacts;

  factory CopyWith$Query$GetPartyPrimaryManager$account$accountContacts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$accountContacts;

  TRes call({
    Enum$AccountContactTypeId? accountContactTypeId,
    Query$GetPartyPrimaryManager$account$accountContacts$contact? contact,
    String? $__typename,
  });
  CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact<TRes>
      get contact;
}

class _CopyWithImpl$Query$GetPartyPrimaryManager$account$accountContacts<TRes>
    implements
        CopyWith$Query$GetPartyPrimaryManager$account$accountContacts<TRes> {
  _CopyWithImpl$Query$GetPartyPrimaryManager$account$accountContacts(
    this._instance,
    this._then,
  );

  final Query$GetPartyPrimaryManager$account$accountContacts _instance;

  final TRes Function(Query$GetPartyPrimaryManager$account$accountContacts)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountContactTypeId = _undefined,
    Object? contact = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPartyPrimaryManager$account$accountContacts(
        accountContactTypeId:
            accountContactTypeId == _undefined || accountContactTypeId == null
                ? _instance.accountContactTypeId
                : (accountContactTypeId as Enum$AccountContactTypeId),
        contact: contact == _undefined
            ? _instance.contact
            : (contact
                as Query$GetPartyPrimaryManager$account$accountContacts$contact?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact<TRes>
      get contact {
    final local$contact = _instance.contact;
    return local$contact == null
        ? CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact
            .stub(_then(_instance))
        : CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact(
            local$contact, (e) => call(contact: e));
  }
}

class _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$accountContacts<
        TRes>
    implements
        CopyWith$Query$GetPartyPrimaryManager$account$accountContacts<TRes> {
  _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$accountContacts(
      this._res);

  TRes _res;

  call({
    Enum$AccountContactTypeId? accountContactTypeId,
    Query$GetPartyPrimaryManager$account$accountContacts$contact? contact,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact<TRes>
      get contact =>
          CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact
              .stub(_res);
}

class Query$GetPartyPrimaryManager$account$accountContacts$contact {
  Query$GetPartyPrimaryManager$account$accountContacts$contact({
    this.firstName,
    this.middleName,
    this.lastName,
    this.address,
    this.$__typename = 'Contact',
  });

  factory Query$GetPartyPrimaryManager$account$accountContacts$contact.fromJson(
      Map<String, dynamic> json) {
    final l$firstName = json['firstName'];
    final l$middleName = json['middleName'];
    final l$lastName = json['lastName'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Query$GetPartyPrimaryManager$account$accountContacts$contact(
      firstName: (l$firstName as String?),
      middleName: (l$middleName as String?),
      lastName: (l$lastName as String?),
      address: l$address == null
          ? null
          : Query$GetPartyPrimaryManager$account$accountContacts$contact$address
              .fromJson((l$address as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? firstName;

  final String? middleName;

  final String? lastName;

  final Query$GetPartyPrimaryManager$account$accountContacts$contact$address?
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
    final l$address = address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$firstName,
      l$middleName,
      l$lastName,
      l$address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetPartyPrimaryManager$account$accountContacts$contact) ||
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

extension UtilityExtension$Query$GetPartyPrimaryManager$account$accountContacts$contact
    on Query$GetPartyPrimaryManager$account$accountContacts$contact {
  CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact<
          Query$GetPartyPrimaryManager$account$accountContacts$contact>
      get copyWith =>
          CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact<
    TRes> {
  factory CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact(
    Query$GetPartyPrimaryManager$account$accountContacts$contact instance,
    TRes Function(Query$GetPartyPrimaryManager$account$accountContacts$contact)
        then,
  ) = _CopyWithImpl$Query$GetPartyPrimaryManager$account$accountContacts$contact;

  factory CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$accountContacts$contact;

  TRes call({
    String? firstName,
    String? middleName,
    String? lastName,
    Query$GetPartyPrimaryManager$account$accountContacts$contact$address?
        address,
    String? $__typename,
  });
  CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact$address<
      TRes> get address;
}

class _CopyWithImpl$Query$GetPartyPrimaryManager$account$accountContacts$contact<
        TRes>
    implements
        CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact<
            TRes> {
  _CopyWithImpl$Query$GetPartyPrimaryManager$account$accountContacts$contact(
    this._instance,
    this._then,
  );

  final Query$GetPartyPrimaryManager$account$accountContacts$contact _instance;

  final TRes Function(
      Query$GetPartyPrimaryManager$account$accountContacts$contact) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? middleName = _undefined,
    Object? lastName = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPartyPrimaryManager$account$accountContacts$contact(
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        middleName: middleName == _undefined
            ? _instance.middleName
            : (middleName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        address: address == _undefined
            ? _instance.address
            : (address
                as Query$GetPartyPrimaryManager$account$accountContacts$contact$address?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact$address<
      TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact$address
            .stub(_then(_instance))
        : CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact$address(
            local$address, (e) => call(address: e));
  }
}

class _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$accountContacts$contact<
        TRes>
    implements
        CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact<
            TRes> {
  _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$accountContacts$contact(
      this._res);

  TRes _res;

  call({
    String? firstName,
    String? middleName,
    String? lastName,
    Query$GetPartyPrimaryManager$account$accountContacts$contact$address?
        address,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact$address<
          TRes>
      get address =>
          CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact$address
              .stub(_res);
}

class Query$GetPartyPrimaryManager$account$accountContacts$contact$address {
  Query$GetPartyPrimaryManager$account$accountContacts$contact$address({
    required this.countryId,
    this.$__typename = 'Address',
  });

  factory Query$GetPartyPrimaryManager$account$accountContacts$contact$address.fromJson(
      Map<String, dynamic> json) {
    final l$countryId = json['countryId'];
    final l$$__typename = json['__typename'];
    return Query$GetPartyPrimaryManager$account$accountContacts$contact$address(
      countryId: fromJson$Enum$CountryId((l$countryId as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$CountryId countryId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$countryId = countryId;
    _resultData['countryId'] = toJson$Enum$CountryId(l$countryId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$countryId = countryId;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
            is Query$GetPartyPrimaryManager$account$accountContacts$contact$address) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetPartyPrimaryManager$account$accountContacts$contact$address
    on Query$GetPartyPrimaryManager$account$accountContacts$contact$address {
  CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact$address<
          Query$GetPartyPrimaryManager$account$accountContacts$contact$address>
      get copyWith =>
          CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact$address(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact$address<
    TRes> {
  factory CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact$address(
    Query$GetPartyPrimaryManager$account$accountContacts$contact$address
        instance,
    TRes Function(
            Query$GetPartyPrimaryManager$account$accountContacts$contact$address)
        then,
  ) = _CopyWithImpl$Query$GetPartyPrimaryManager$account$accountContacts$contact$address;

  factory CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact$address.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$accountContacts$contact$address;

  TRes call({
    Enum$CountryId? countryId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPartyPrimaryManager$account$accountContacts$contact$address<
        TRes>
    implements
        CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact$address<
            TRes> {
  _CopyWithImpl$Query$GetPartyPrimaryManager$account$accountContacts$contact$address(
    this._instance,
    this._then,
  );

  final Query$GetPartyPrimaryManager$account$accountContacts$contact$address
      _instance;

  final TRes Function(
          Query$GetPartyPrimaryManager$account$accountContacts$contact$address)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countryId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetPartyPrimaryManager$account$accountContacts$contact$address(
        countryId: countryId == _undefined || countryId == null
            ? _instance.countryId
            : (countryId as Enum$CountryId),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$accountContacts$contact$address<
        TRes>
    implements
        CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$contact$address<
            TRes> {
  _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$accountContacts$contact$address(
      this._res);

  TRes _res;

  call({
    Enum$CountryId? countryId,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetPartyPrimaryManager$account$primaryAccountManager {
  Query$GetPartyPrimaryManager$account$primaryAccountManager({
    this.manager,
    this.user,
    this.$__typename = 'AccountManagerAndUser',
  });

  factory Query$GetPartyPrimaryManager$account$primaryAccountManager.fromJson(
      Map<String, dynamic> json) {
    final l$manager = json['manager'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$GetPartyPrimaryManager$account$primaryAccountManager(
      manager: l$manager == null
          ? null
          : Query$GetPartyPrimaryManager$account$primaryAccountManager$manager
              .fromJson((l$manager as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : Query$GetPartyPrimaryManager$account$primaryAccountManager$user
              .fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetPartyPrimaryManager$account$primaryAccountManager$manager?
      manager;

  final Query$GetPartyPrimaryManager$account$primaryAccountManager$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$manager = manager;
    _resultData['manager'] = l$manager?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$manager = manager;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$manager,
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetPartyPrimaryManager$account$primaryAccountManager) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$manager = manager;
    final lOther$manager = other.manager;
    if (l$manager != lOther$manager) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$GetPartyPrimaryManager$account$primaryAccountManager
    on Query$GetPartyPrimaryManager$account$primaryAccountManager {
  CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager<
          Query$GetPartyPrimaryManager$account$primaryAccountManager>
      get copyWith =>
          CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager<
    TRes> {
  factory CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager(
    Query$GetPartyPrimaryManager$account$primaryAccountManager instance,
    TRes Function(Query$GetPartyPrimaryManager$account$primaryAccountManager)
        then,
  ) = _CopyWithImpl$Query$GetPartyPrimaryManager$account$primaryAccountManager;

  factory CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$primaryAccountManager;

  TRes call({
    Query$GetPartyPrimaryManager$account$primaryAccountManager$manager? manager,
    Query$GetPartyPrimaryManager$account$primaryAccountManager$user? user,
    String? $__typename,
  });
  CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$manager<
      TRes> get manager;
  CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$user<TRes>
      get user;
}

class _CopyWithImpl$Query$GetPartyPrimaryManager$account$primaryAccountManager<
        TRes>
    implements
        CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager<
            TRes> {
  _CopyWithImpl$Query$GetPartyPrimaryManager$account$primaryAccountManager(
    this._instance,
    this._then,
  );

  final Query$GetPartyPrimaryManager$account$primaryAccountManager _instance;

  final TRes Function(
      Query$GetPartyPrimaryManager$account$primaryAccountManager) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? manager = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPartyPrimaryManager$account$primaryAccountManager(
        manager: manager == _undefined
            ? _instance.manager
            : (manager
                as Query$GetPartyPrimaryManager$account$primaryAccountManager$manager?),
        user: user == _undefined
            ? _instance.user
            : (user
                as Query$GetPartyPrimaryManager$account$primaryAccountManager$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$manager<
      TRes> get manager {
    final local$manager = _instance.manager;
    return local$manager == null
        ? CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$manager
            .stub(_then(_instance))
        : CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$manager(
            local$manager, (e) => call(manager: e));
  }

  CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$user<TRes>
      get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$user
            .stub(_then(_instance))
        : CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$primaryAccountManager<
        TRes>
    implements
        CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager<
            TRes> {
  _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$primaryAccountManager(
      this._res);

  TRes _res;

  call({
    Query$GetPartyPrimaryManager$account$primaryAccountManager$manager? manager,
    Query$GetPartyPrimaryManager$account$primaryAccountManager$user? user,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$manager<
          TRes>
      get manager =>
          CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$manager
              .stub(_res);

  CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$user<TRes>
      get user =>
          CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$user
              .stub(_res);
}

class Query$GetPartyPrimaryManager$account$primaryAccountManager$manager {
  Query$GetPartyPrimaryManager$account$primaryAccountManager$manager({
    this.userId,
    required this.accountManagerTypeId,
    this.active,
    this.tradeManagerId,
    this.$__typename = 'AccountManager',
  });

  factory Query$GetPartyPrimaryManager$account$primaryAccountManager$manager.fromJson(
      Map<String, dynamic> json) {
    final l$userId = json['userId'];
    final l$accountManagerTypeId = json['accountManagerTypeId'];
    final l$active = json['active'];
    final l$tradeManagerId = json['tradeManagerId'];
    final l$$__typename = json['__typename'];
    return Query$GetPartyPrimaryManager$account$primaryAccountManager$manager(
      userId: (l$userId as String?),
      accountManagerTypeId: fromJson$Enum$AccountManagerTypeId(
          (l$accountManagerTypeId as String)),
      active: (l$active as bool?),
      tradeManagerId: (l$tradeManagerId as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userId;

  final Enum$AccountManagerTypeId accountManagerTypeId;

  final bool? active;

  final int? tradeManagerId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$accountManagerTypeId = accountManagerTypeId;
    _resultData['accountManagerTypeId'] =
        toJson$Enum$AccountManagerTypeId(l$accountManagerTypeId);
    final l$active = active;
    _resultData['active'] = l$active;
    final l$tradeManagerId = tradeManagerId;
    _resultData['tradeManagerId'] = l$tradeManagerId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$accountManagerTypeId = accountManagerTypeId;
    final l$active = active;
    final l$tradeManagerId = tradeManagerId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userId,
      l$accountManagerTypeId,
      l$active,
      l$tradeManagerId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetPartyPrimaryManager$account$primaryAccountManager$manager) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$accountManagerTypeId = accountManagerTypeId;
    final lOther$accountManagerTypeId = other.accountManagerTypeId;
    if (l$accountManagerTypeId != lOther$accountManagerTypeId) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$tradeManagerId = tradeManagerId;
    final lOther$tradeManagerId = other.tradeManagerId;
    if (l$tradeManagerId != lOther$tradeManagerId) {
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

extension UtilityExtension$Query$GetPartyPrimaryManager$account$primaryAccountManager$manager
    on Query$GetPartyPrimaryManager$account$primaryAccountManager$manager {
  CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$manager<
          Query$GetPartyPrimaryManager$account$primaryAccountManager$manager>
      get copyWith =>
          CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$manager(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$manager<
    TRes> {
  factory CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$manager(
    Query$GetPartyPrimaryManager$account$primaryAccountManager$manager instance,
    TRes Function(
            Query$GetPartyPrimaryManager$account$primaryAccountManager$manager)
        then,
  ) = _CopyWithImpl$Query$GetPartyPrimaryManager$account$primaryAccountManager$manager;

  factory CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$manager.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$primaryAccountManager$manager;

  TRes call({
    String? userId,
    Enum$AccountManagerTypeId? accountManagerTypeId,
    bool? active,
    int? tradeManagerId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPartyPrimaryManager$account$primaryAccountManager$manager<
        TRes>
    implements
        CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$manager<
            TRes> {
  _CopyWithImpl$Query$GetPartyPrimaryManager$account$primaryAccountManager$manager(
    this._instance,
    this._then,
  );

  final Query$GetPartyPrimaryManager$account$primaryAccountManager$manager
      _instance;

  final TRes Function(
      Query$GetPartyPrimaryManager$account$primaryAccountManager$manager) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? accountManagerTypeId = _undefined,
    Object? active = _undefined,
    Object? tradeManagerId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPartyPrimaryManager$account$primaryAccountManager$manager(
        userId: userId == _undefined ? _instance.userId : (userId as String?),
        accountManagerTypeId:
            accountManagerTypeId == _undefined || accountManagerTypeId == null
                ? _instance.accountManagerTypeId
                : (accountManagerTypeId as Enum$AccountManagerTypeId),
        active: active == _undefined ? _instance.active : (active as bool?),
        tradeManagerId: tradeManagerId == _undefined
            ? _instance.tradeManagerId
            : (tradeManagerId as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$primaryAccountManager$manager<
        TRes>
    implements
        CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$manager<
            TRes> {
  _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$primaryAccountManager$manager(
      this._res);

  TRes _res;

  call({
    String? userId,
    Enum$AccountManagerTypeId? accountManagerTypeId,
    bool? active,
    int? tradeManagerId,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetPartyPrimaryManager$account$primaryAccountManager$user {
  Query$GetPartyPrimaryManager$account$primaryAccountManager$user({
    required this.name,
    required this.emailAddress,
    this.$__typename = 'UserInfo',
  });

  factory Query$GetPartyPrimaryManager$account$primaryAccountManager$user.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$emailAddress = json['emailAddress'];
    final l$$__typename = json['__typename'];
    return Query$GetPartyPrimaryManager$account$primaryAccountManager$user(
      name: (l$name as String),
      emailAddress: (l$emailAddress as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String emailAddress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$emailAddress = emailAddress;
    _resultData['emailAddress'] = l$emailAddress;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$emailAddress = emailAddress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$emailAddress,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetPartyPrimaryManager$account$primaryAccountManager$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
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

extension UtilityExtension$Query$GetPartyPrimaryManager$account$primaryAccountManager$user
    on Query$GetPartyPrimaryManager$account$primaryAccountManager$user {
  CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$user<
          Query$GetPartyPrimaryManager$account$primaryAccountManager$user>
      get copyWith =>
          CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$user<
    TRes> {
  factory CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$user(
    Query$GetPartyPrimaryManager$account$primaryAccountManager$user instance,
    TRes Function(
            Query$GetPartyPrimaryManager$account$primaryAccountManager$user)
        then,
  ) = _CopyWithImpl$Query$GetPartyPrimaryManager$account$primaryAccountManager$user;

  factory CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$primaryAccountManager$user;

  TRes call({
    String? name,
    String? emailAddress,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPartyPrimaryManager$account$primaryAccountManager$user<
        TRes>
    implements
        CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$user<
            TRes> {
  _CopyWithImpl$Query$GetPartyPrimaryManager$account$primaryAccountManager$user(
    this._instance,
    this._then,
  );

  final Query$GetPartyPrimaryManager$account$primaryAccountManager$user
      _instance;

  final TRes Function(
      Query$GetPartyPrimaryManager$account$primaryAccountManager$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? emailAddress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPartyPrimaryManager$account$primaryAccountManager$user(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        emailAddress: emailAddress == _undefined || emailAddress == null
            ? _instance.emailAddress
            : (emailAddress as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$primaryAccountManager$user<
        TRes>
    implements
        CopyWith$Query$GetPartyPrimaryManager$account$primaryAccountManager$user<
            TRes> {
  _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$primaryAccountManager$user(
      this._res);

  TRes _res;

  call({
    String? name,
    String? emailAddress,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetPartyPrimaryManager$account$address {
  Query$GetPartyPrimaryManager$account$address({
    required this.countryId,
    this.$__typename = 'Address',
  });

  factory Query$GetPartyPrimaryManager$account$address.fromJson(
      Map<String, dynamic> json) {
    final l$countryId = json['countryId'];
    final l$$__typename = json['__typename'];
    return Query$GetPartyPrimaryManager$account$address(
      countryId: fromJson$Enum$CountryId((l$countryId as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$CountryId countryId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$countryId = countryId;
    _resultData['countryId'] = toJson$Enum$CountryId(l$countryId);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$countryId = countryId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$countryId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetPartyPrimaryManager$account$address) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetPartyPrimaryManager$account$address
    on Query$GetPartyPrimaryManager$account$address {
  CopyWith$Query$GetPartyPrimaryManager$account$address<
          Query$GetPartyPrimaryManager$account$address>
      get copyWith => CopyWith$Query$GetPartyPrimaryManager$account$address(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPartyPrimaryManager$account$address<TRes> {
  factory CopyWith$Query$GetPartyPrimaryManager$account$address(
    Query$GetPartyPrimaryManager$account$address instance,
    TRes Function(Query$GetPartyPrimaryManager$account$address) then,
  ) = _CopyWithImpl$Query$GetPartyPrimaryManager$account$address;

  factory CopyWith$Query$GetPartyPrimaryManager$account$address.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$address;

  TRes call({
    Enum$CountryId? countryId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPartyPrimaryManager$account$address<TRes>
    implements CopyWith$Query$GetPartyPrimaryManager$account$address<TRes> {
  _CopyWithImpl$Query$GetPartyPrimaryManager$account$address(
    this._instance,
    this._then,
  );

  final Query$GetPartyPrimaryManager$account$address _instance;

  final TRes Function(Query$GetPartyPrimaryManager$account$address) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countryId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPartyPrimaryManager$account$address(
        countryId: countryId == _undefined || countryId == null
            ? _instance.countryId
            : (countryId as Enum$CountryId),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$address<TRes>
    implements CopyWith$Query$GetPartyPrimaryManager$account$address<TRes> {
  _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$address(this._res);

  TRes _res;

  call({
    Enum$CountryId? countryId,
    String? $__typename,
  }) =>
      _res;
}
