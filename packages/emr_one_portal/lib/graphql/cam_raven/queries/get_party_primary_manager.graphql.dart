import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Query$GetPartyPrimaryManager {
  Query$GetPartyPrimaryManager({
    required this.account,
    this.$__typename = 'Query',
  });

  factory Query$GetPartyPrimaryManager.fromJson(Map<String, dynamic> json) {
    final l$account = json['account'];
    final l$$__typename = json['__typename'];
    return Query$GetPartyPrimaryManager(
      account: Query$GetPartyPrimaryManager$account.fromJson(
          (l$account as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetPartyPrimaryManager$account account;

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
        account: account == _undefined || account == null
            ? _instance.account
            : (account as Query$GetPartyPrimaryManager$account),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetPartyPrimaryManager$account<TRes> get account {
    final local$account = _instance.account;
    return CopyWith$Query$GetPartyPrimaryManager$account(
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
                    name: NameNode(value: 'contactTypes'),
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
            name: NameNode(value: 'primaryManager'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'type'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'id'),
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
    required this.name,
    this.accountContacts,
    this.primaryManager,
    this.accountAddresses,
    this.defaultYardCode,
    this.$__typename = 'Account',
  });

  factory Query$GetPartyPrimaryManager$account.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$accountContacts = json['accountContacts'];
    final l$primaryManager = json['primaryManager'];
    final l$accountAddresses = json['accountAddresses'];
    final l$defaultYardCode = json['defaultYardCode'];
    final l$$__typename = json['__typename'];
    return Query$GetPartyPrimaryManager$account(
      name: (l$name as String),
      accountContacts: (l$accountContacts as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetPartyPrimaryManager$account$accountContacts.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      primaryManager: l$primaryManager == null
          ? null
          : Query$GetPartyPrimaryManager$account$primaryManager.fromJson(
              (l$primaryManager as Map<String, dynamic>)),
      accountAddresses: (l$accountAddresses as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetPartyPrimaryManager$account$accountAddresses.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      defaultYardCode: (l$defaultYardCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final List<Query$GetPartyPrimaryManager$account$accountContacts?>?
      accountContacts;

  final Query$GetPartyPrimaryManager$account$primaryManager? primaryManager;

  final List<Query$GetPartyPrimaryManager$account$accountAddresses?>?
      accountAddresses;

  final String? defaultYardCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$accountContacts = accountContacts;
    _resultData['accountContacts'] =
        l$accountContacts?.map((e) => e?.toJson()).toList();
    final l$primaryManager = primaryManager;
    _resultData['primaryManager'] = l$primaryManager?.toJson();
    final l$accountAddresses = accountAddresses;
    _resultData['accountAddresses'] =
        l$accountAddresses?.map((e) => e?.toJson()).toList();
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
    final l$primaryManager = primaryManager;
    final l$accountAddresses = accountAddresses;
    final l$defaultYardCode = defaultYardCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$accountContacts == null
          ? null
          : Object.hashAll(l$accountContacts.map((v) => v)),
      l$primaryManager,
      l$accountAddresses == null
          ? null
          : Object.hashAll(l$accountAddresses.map((v) => v)),
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
    final l$primaryManager = primaryManager;
    final lOther$primaryManager = other.primaryManager;
    if (l$primaryManager != lOther$primaryManager) {
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
    Query$GetPartyPrimaryManager$account$primaryManager? primaryManager,
    List<Query$GetPartyPrimaryManager$account$accountAddresses?>?
        accountAddresses,
    String? defaultYardCode,
    String? $__typename,
  });
  TRes accountContacts(
      Iterable<Query$GetPartyPrimaryManager$account$accountContacts?>? Function(
              Iterable<
                  CopyWith$Query$GetPartyPrimaryManager$account$accountContacts<
                      Query$GetPartyPrimaryManager$account$accountContacts>?>?)
          _fn);
  CopyWith$Query$GetPartyPrimaryManager$account$primaryManager<TRes>
      get primaryManager;
  TRes accountAddresses(
      Iterable<Query$GetPartyPrimaryManager$account$accountAddresses?>? Function(
              Iterable<
                  CopyWith$Query$GetPartyPrimaryManager$account$accountAddresses<
                      Query$GetPartyPrimaryManager$account$accountAddresses>?>?)
          _fn);
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
    Object? primaryManager = _undefined,
    Object? accountAddresses = _undefined,
    Object? defaultYardCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPartyPrimaryManager$account(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        accountContacts: accountContacts == _undefined
            ? _instance.accountContacts
            : (accountContacts as List<
                Query$GetPartyPrimaryManager$account$accountContacts?>?),
        primaryManager: primaryManager == _undefined
            ? _instance.primaryManager
            : (primaryManager
                as Query$GetPartyPrimaryManager$account$primaryManager?),
        accountAddresses: accountAddresses == _undefined
            ? _instance.accountAddresses
            : (accountAddresses as List<
                Query$GetPartyPrimaryManager$account$accountAddresses?>?),
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

  CopyWith$Query$GetPartyPrimaryManager$account$primaryManager<TRes>
      get primaryManager {
    final local$primaryManager = _instance.primaryManager;
    return local$primaryManager == null
        ? CopyWith$Query$GetPartyPrimaryManager$account$primaryManager.stub(
            _then(_instance))
        : CopyWith$Query$GetPartyPrimaryManager$account$primaryManager(
            local$primaryManager, (e) => call(primaryManager: e));
  }

  TRes accountAddresses(
          Iterable<Query$GetPartyPrimaryManager$account$accountAddresses?>? Function(
                  Iterable<
                      CopyWith$Query$GetPartyPrimaryManager$account$accountAddresses<
                          Query$GetPartyPrimaryManager$account$accountAddresses>?>?)
              _fn) =>
      call(
          accountAddresses: _fn(_instance.accountAddresses?.map((e) => e == null
              ? null
              : CopyWith$Query$GetPartyPrimaryManager$account$accountAddresses(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetPartyPrimaryManager$account<TRes>
    implements CopyWith$Query$GetPartyPrimaryManager$account<TRes> {
  _CopyWithStubImpl$Query$GetPartyPrimaryManager$account(this._res);

  TRes _res;

  call({
    String? name,
    List<Query$GetPartyPrimaryManager$account$accountContacts?>?
        accountContacts,
    Query$GetPartyPrimaryManager$account$primaryManager? primaryManager,
    List<Query$GetPartyPrimaryManager$account$accountAddresses?>?
        accountAddresses,
    String? defaultYardCode,
    String? $__typename,
  }) =>
      _res;

  accountContacts(_fn) => _res;

  CopyWith$Query$GetPartyPrimaryManager$account$primaryManager<TRes>
      get primaryManager =>
          CopyWith$Query$GetPartyPrimaryManager$account$primaryManager.stub(
              _res);

  accountAddresses(_fn) => _res;
}

class Query$GetPartyPrimaryManager$account$accountContacts {
  Query$GetPartyPrimaryManager$account$accountContacts({
    required this.value,
    this.$__typename = 'ContactWithKey',
  });

  factory Query$GetPartyPrimaryManager$account$accountContacts.fromJson(
      Map<String, dynamic> json) {
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetPartyPrimaryManager$account$accountContacts(
      value:
          Query$GetPartyPrimaryManager$account$accountContacts$value.fromJson(
              (l$value as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetPartyPrimaryManager$account$accountContacts$value value;

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
    if (!(other is Query$GetPartyPrimaryManager$account$accountContacts) ||
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
    Query$GetPartyPrimaryManager$account$accountContacts$value? value,
    String? $__typename,
  });
  CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$value<TRes>
      get value;
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
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPartyPrimaryManager$account$accountContacts(
        value: value == _undefined || value == null
            ? _instance.value
            : (value
                as Query$GetPartyPrimaryManager$account$accountContacts$value),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$value<TRes>
      get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$value(
        local$value, (e) => call(value: e));
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
    Query$GetPartyPrimaryManager$account$accountContacts$value? value,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$value<TRes>
      get value =>
          CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$value
              .stub(_res);
}

class Query$GetPartyPrimaryManager$account$accountContacts$value {
  Query$GetPartyPrimaryManager$account$accountContacts$value({
    required this.firstName,
    this.middleName,
    required this.lastName,
    required this.contactTypes,
    this.$__typename = 'Contact',
  });

  factory Query$GetPartyPrimaryManager$account$accountContacts$value.fromJson(
      Map<String, dynamic> json) {
    final l$firstName = json['firstName'];
    final l$middleName = json['middleName'];
    final l$lastName = json['lastName'];
    final l$contactTypes = json['contactTypes'];
    final l$$__typename = json['__typename'];
    return Query$GetPartyPrimaryManager$account$accountContacts$value(
      firstName: (l$firstName as String),
      middleName: (l$middleName as String?),
      lastName: (l$lastName as String),
      contactTypes: (l$contactTypes as List<dynamic>)
          .map((e) => fromJson$Enum$ContactType((e as String)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String firstName;

  final String? middleName;

  final String lastName;

  final List<Enum$ContactType> contactTypes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$middleName = middleName;
    _resultData['middleName'] = l$middleName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$contactTypes = contactTypes;
    _resultData['contactTypes'] =
        l$contactTypes.map((e) => toJson$Enum$ContactType(e)).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$middleName = middleName;
    final l$lastName = lastName;
    final l$contactTypes = contactTypes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$firstName,
      l$middleName,
      l$lastName,
      Object.hashAll(l$contactTypes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetPartyPrimaryManager$account$accountContacts$value) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetPartyPrimaryManager$account$accountContacts$value
    on Query$GetPartyPrimaryManager$account$accountContacts$value {
  CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$value<
          Query$GetPartyPrimaryManager$account$accountContacts$value>
      get copyWith =>
          CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$value(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$value<
    TRes> {
  factory CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$value(
    Query$GetPartyPrimaryManager$account$accountContacts$value instance,
    TRes Function(Query$GetPartyPrimaryManager$account$accountContacts$value)
        then,
  ) = _CopyWithImpl$Query$GetPartyPrimaryManager$account$accountContacts$value;

  factory CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$value.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$accountContacts$value;

  TRes call({
    String? firstName,
    String? middleName,
    String? lastName,
    List<Enum$ContactType>? contactTypes,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPartyPrimaryManager$account$accountContacts$value<
        TRes>
    implements
        CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$value<
            TRes> {
  _CopyWithImpl$Query$GetPartyPrimaryManager$account$accountContacts$value(
    this._instance,
    this._then,
  );

  final Query$GetPartyPrimaryManager$account$accountContacts$value _instance;

  final TRes Function(
      Query$GetPartyPrimaryManager$account$accountContacts$value) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? middleName = _undefined,
    Object? lastName = _undefined,
    Object? contactTypes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPartyPrimaryManager$account$accountContacts$value(
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        middleName: middleName == _undefined
            ? _instance.middleName
            : (middleName as String?),
        lastName: lastName == _undefined || lastName == null
            ? _instance.lastName
            : (lastName as String),
        contactTypes: contactTypes == _undefined || contactTypes == null
            ? _instance.contactTypes
            : (contactTypes as List<Enum$ContactType>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$accountContacts$value<
        TRes>
    implements
        CopyWith$Query$GetPartyPrimaryManager$account$accountContacts$value<
            TRes> {
  _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$accountContacts$value(
      this._res);

  TRes _res;

  call({
    String? firstName,
    String? middleName,
    String? lastName,
    List<Enum$ContactType>? contactTypes,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetPartyPrimaryManager$account$primaryManager {
  Query$GetPartyPrimaryManager$account$primaryManager({
    this.type,
    this.id,
    this.name,
    this.$__typename = 'ManagementDetail',
  });

  factory Query$GetPartyPrimaryManager$account$primaryManager.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetPartyPrimaryManager$account$primaryManager(
      type: l$type == null
          ? null
          : fromJson$Enum$ManagementType((l$type as String)),
      id: (l$id as String?),
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$ManagementType? type;

  final String? id;

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$ManagementType(l$type);
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetPartyPrimaryManager$account$primaryManager) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetPartyPrimaryManager$account$primaryManager
    on Query$GetPartyPrimaryManager$account$primaryManager {
  CopyWith$Query$GetPartyPrimaryManager$account$primaryManager<
          Query$GetPartyPrimaryManager$account$primaryManager>
      get copyWith =>
          CopyWith$Query$GetPartyPrimaryManager$account$primaryManager(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPartyPrimaryManager$account$primaryManager<
    TRes> {
  factory CopyWith$Query$GetPartyPrimaryManager$account$primaryManager(
    Query$GetPartyPrimaryManager$account$primaryManager instance,
    TRes Function(Query$GetPartyPrimaryManager$account$primaryManager) then,
  ) = _CopyWithImpl$Query$GetPartyPrimaryManager$account$primaryManager;

  factory CopyWith$Query$GetPartyPrimaryManager$account$primaryManager.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$primaryManager;

  TRes call({
    Enum$ManagementType? type,
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPartyPrimaryManager$account$primaryManager<TRes>
    implements
        CopyWith$Query$GetPartyPrimaryManager$account$primaryManager<TRes> {
  _CopyWithImpl$Query$GetPartyPrimaryManager$account$primaryManager(
    this._instance,
    this._then,
  );

  final Query$GetPartyPrimaryManager$account$primaryManager _instance;

  final TRes Function(Query$GetPartyPrimaryManager$account$primaryManager)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPartyPrimaryManager$account$primaryManager(
        type: type == _undefined
            ? _instance.type
            : (type as Enum$ManagementType?),
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$primaryManager<
        TRes>
    implements
        CopyWith$Query$GetPartyPrimaryManager$account$primaryManager<TRes> {
  _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$primaryManager(
      this._res);

  TRes _res;

  call({
    Enum$ManagementType? type,
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetPartyPrimaryManager$account$accountAddresses {
  Query$GetPartyPrimaryManager$account$accountAddresses({
    this.key,
    this.address1,
    this.postCode,
    this.countryCode,
    this.$__typename = 'AddressWithKey',
  });

  factory Query$GetPartyPrimaryManager$account$accountAddresses.fromJson(
      Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$address1 = json['address1'];
    final l$postCode = json['postCode'];
    final l$countryCode = json['countryCode'];
    final l$$__typename = json['__typename'];
    return Query$GetPartyPrimaryManager$account$accountAddresses(
      key: (l$key as String?),
      address1: (l$address1 as String?),
      postCode: (l$postCode as String?),
      countryCode: (l$countryCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? key;

  final String? address1;

  final String? postCode;

  final String? countryCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$address1 = address1;
    _resultData['address1'] = l$address1;
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
    final l$postCode = postCode;
    final l$countryCode = countryCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$key,
      l$address1,
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
    if (!(other is Query$GetPartyPrimaryManager$account$accountAddresses) ||
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

extension UtilityExtension$Query$GetPartyPrimaryManager$account$accountAddresses
    on Query$GetPartyPrimaryManager$account$accountAddresses {
  CopyWith$Query$GetPartyPrimaryManager$account$accountAddresses<
          Query$GetPartyPrimaryManager$account$accountAddresses>
      get copyWith =>
          CopyWith$Query$GetPartyPrimaryManager$account$accountAddresses(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPartyPrimaryManager$account$accountAddresses<
    TRes> {
  factory CopyWith$Query$GetPartyPrimaryManager$account$accountAddresses(
    Query$GetPartyPrimaryManager$account$accountAddresses instance,
    TRes Function(Query$GetPartyPrimaryManager$account$accountAddresses) then,
  ) = _CopyWithImpl$Query$GetPartyPrimaryManager$account$accountAddresses;

  factory CopyWith$Query$GetPartyPrimaryManager$account$accountAddresses.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$accountAddresses;

  TRes call({
    String? key,
    String? address1,
    String? postCode,
    String? countryCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPartyPrimaryManager$account$accountAddresses<TRes>
    implements
        CopyWith$Query$GetPartyPrimaryManager$account$accountAddresses<TRes> {
  _CopyWithImpl$Query$GetPartyPrimaryManager$account$accountAddresses(
    this._instance,
    this._then,
  );

  final Query$GetPartyPrimaryManager$account$accountAddresses _instance;

  final TRes Function(Query$GetPartyPrimaryManager$account$accountAddresses)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? address1 = _undefined,
    Object? postCode = _undefined,
    Object? countryCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPartyPrimaryManager$account$accountAddresses(
        key: key == _undefined ? _instance.key : (key as String?),
        address1:
            address1 == _undefined ? _instance.address1 : (address1 as String?),
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

class _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$accountAddresses<
        TRes>
    implements
        CopyWith$Query$GetPartyPrimaryManager$account$accountAddresses<TRes> {
  _CopyWithStubImpl$Query$GetPartyPrimaryManager$account$accountAddresses(
      this._res);

  TRes _res;

  call({
    String? key,
    String? address1,
    String? postCode,
    String? countryCode,
    String? $__typename,
  }) =>
      _res;
}
