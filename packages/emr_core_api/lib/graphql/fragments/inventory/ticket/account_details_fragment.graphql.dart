import '../../../schema.graphql.dart';
import 'package:emr_core_api/models/local_date.dart';
import 'package:gql/ast.dart';

class Fragment$AccountDetails {
  Fragment$AccountDetails({
    this.accountContacts,
    required this.id,
    required this.type,
    required this.code,
    required this.name,
    this.sicCodeId,
    required this.allowPayment,
    this.celAgreement,
    this.secoreAgreement,
    required this.preferredPaymentMethod,
    required this.bankAccounts,
    required this.prepaymentCards,
    required this.accountStatus,
    required this.settings,
    required this.addresses,
    required this.locations,
    this.$__typename = 'Account',
  });

  factory Fragment$AccountDetails.fromJson(Map<String, dynamic> json) {
    final l$accountContacts = json['accountContacts'];
    final l$id = json['id'];
    final l$type = json['type'];
    final l$code = json['code'];
    final l$name = json['name'];
    final l$sicCodeId = json['sicCodeId'];
    final l$allowPayment = json['allowPayment'];
    final l$celAgreement = json['celAgreement'];
    final l$secoreAgreement = json['secoreAgreement'];
    final l$preferredPaymentMethod = json['preferredPaymentMethod'];
    final l$bankAccounts = json['bankAccounts'];
    final l$prepaymentCards = json['prepaymentCards'];
    final l$accountStatus = json['accountStatus'];
    final l$settings = json['settings'];
    final l$addresses = json['addresses'];
    final l$locations = json['locations'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountDetails(
      accountContacts: (l$accountContacts as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Fragment$AccountDetails$accountContacts.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      id: (l$id as String),
      type: fromJson$Enum$AccountType((l$type as String)),
      code: (l$code as String),
      name: (l$name as String),
      sicCodeId: (l$sicCodeId as String?),
      allowPayment: (l$allowPayment as bool),
      celAgreement: l$celAgreement == null
          ? null
          : Fragment$AccountDetails$celAgreement.fromJson(
              (l$celAgreement as Map<String, dynamic>),
            ),
      secoreAgreement: l$secoreAgreement == null
          ? null
          : Fragment$AccountDetails$secoreAgreement.fromJson(
              (l$secoreAgreement as Map<String, dynamic>),
            ),
      preferredPaymentMethod: fromJson$Enum$PaymentMethod(
        (l$preferredPaymentMethod as String),
      ),
      bankAccounts: (l$bankAccounts as List<dynamic>)
          .map(
            (e) => Fragment$AccountDetails$bankAccounts.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      prepaymentCards: (l$prepaymentCards as List<dynamic>)
          .map(
            (e) => Fragment$AccountDetails$prepaymentCards.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      accountStatus: fromJson$Enum$AccountStatus((l$accountStatus as String)),
      settings: Fragment$AccountDetails$settings.fromJson(
        (l$settings as Map<String, dynamic>),
      ),
      addresses: (l$addresses as List<dynamic>)
          .map(
            (e) => Fragment$AccountDetails$addresses.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      locations: (l$locations as List<dynamic>)
          .map(
            (e) => Fragment$AccountDetails$locations.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$AccountDetails$accountContacts?>? accountContacts;

  final String id;

  final Enum$AccountType type;

  final String code;

  final String name;

  final String? sicCodeId;

  final bool allowPayment;

  final Fragment$AccountDetails$celAgreement? celAgreement;

  final Fragment$AccountDetails$secoreAgreement? secoreAgreement;

  final Enum$PaymentMethod preferredPaymentMethod;

  final List<Fragment$AccountDetails$bankAccounts> bankAccounts;

  final List<Fragment$AccountDetails$prepaymentCards> prepaymentCards;

  final Enum$AccountStatus accountStatus;

  final Fragment$AccountDetails$settings settings;

  final List<Fragment$AccountDetails$addresses> addresses;

  final List<Fragment$AccountDetails$locations> locations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accountContacts = accountContacts;
    _resultData['accountContacts'] = l$accountContacts
        ?.map((e) => e?.toJson())
        .toList();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = toJson$Enum$AccountType(l$type);
    final l$code = code;
    _resultData['code'] = l$code;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$sicCodeId = sicCodeId;
    _resultData['sicCodeId'] = l$sicCodeId;
    final l$allowPayment = allowPayment;
    _resultData['allowPayment'] = l$allowPayment;
    final l$celAgreement = celAgreement;
    _resultData['celAgreement'] = l$celAgreement?.toJson();
    final l$secoreAgreement = secoreAgreement;
    _resultData['secoreAgreement'] = l$secoreAgreement?.toJson();
    final l$preferredPaymentMethod = preferredPaymentMethod;
    _resultData['preferredPaymentMethod'] = toJson$Enum$PaymentMethod(
      l$preferredPaymentMethod,
    );
    final l$bankAccounts = bankAccounts;
    _resultData['bankAccounts'] = l$bankAccounts
        .map((e) => e.toJson())
        .toList();
    final l$prepaymentCards = prepaymentCards;
    _resultData['prepaymentCards'] = l$prepaymentCards
        .map((e) => e.toJson())
        .toList();
    final l$accountStatus = accountStatus;
    _resultData['accountStatus'] = toJson$Enum$AccountStatus(l$accountStatus);
    final l$settings = settings;
    _resultData['settings'] = l$settings.toJson();
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e.toJson()).toList();
    final l$locations = locations;
    _resultData['locations'] = l$locations.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accountContacts = accountContacts;
    final l$id = id;
    final l$type = type;
    final l$code = code;
    final l$name = name;
    final l$sicCodeId = sicCodeId;
    final l$allowPayment = allowPayment;
    final l$celAgreement = celAgreement;
    final l$secoreAgreement = secoreAgreement;
    final l$preferredPaymentMethod = preferredPaymentMethod;
    final l$bankAccounts = bankAccounts;
    final l$prepaymentCards = prepaymentCards;
    final l$accountStatus = accountStatus;
    final l$settings = settings;
    final l$addresses = addresses;
    final l$locations = locations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accountContacts == null
          ? null
          : Object.hashAll(l$accountContacts.map((v) => v)),
      l$id,
      l$type,
      l$code,
      l$name,
      l$sicCodeId,
      l$allowPayment,
      l$celAgreement,
      l$secoreAgreement,
      l$preferredPaymentMethod,
      Object.hashAll(l$bankAccounts.map((v) => v)),
      Object.hashAll(l$prepaymentCards.map((v) => v)),
      l$accountStatus,
      l$settings,
      Object.hashAll(l$addresses.map((v) => v)),
      Object.hashAll(l$locations.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AccountDetails || runtimeType != other.runtimeType) {
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
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$sicCodeId = sicCodeId;
    final lOther$sicCodeId = other.sicCodeId;
    if (l$sicCodeId != lOther$sicCodeId) {
      return false;
    }
    final l$allowPayment = allowPayment;
    final lOther$allowPayment = other.allowPayment;
    if (l$allowPayment != lOther$allowPayment) {
      return false;
    }
    final l$celAgreement = celAgreement;
    final lOther$celAgreement = other.celAgreement;
    if (l$celAgreement != lOther$celAgreement) {
      return false;
    }
    final l$secoreAgreement = secoreAgreement;
    final lOther$secoreAgreement = other.secoreAgreement;
    if (l$secoreAgreement != lOther$secoreAgreement) {
      return false;
    }
    final l$preferredPaymentMethod = preferredPaymentMethod;
    final lOther$preferredPaymentMethod = other.preferredPaymentMethod;
    if (l$preferredPaymentMethod != lOther$preferredPaymentMethod) {
      return false;
    }
    final l$bankAccounts = bankAccounts;
    final lOther$bankAccounts = other.bankAccounts;
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
    final l$prepaymentCards = prepaymentCards;
    final lOther$prepaymentCards = other.prepaymentCards;
    if (l$prepaymentCards.length != lOther$prepaymentCards.length) {
      return false;
    }
    for (int i = 0; i < l$prepaymentCards.length; i++) {
      final l$prepaymentCards$entry = l$prepaymentCards[i];
      final lOther$prepaymentCards$entry = lOther$prepaymentCards[i];
      if (l$prepaymentCards$entry != lOther$prepaymentCards$entry) {
        return false;
      }
    }
    final l$accountStatus = accountStatus;
    final lOther$accountStatus = other.accountStatus;
    if (l$accountStatus != lOther$accountStatus) {
      return false;
    }
    final l$settings = settings;
    final lOther$settings = other.settings;
    if (l$settings != lOther$settings) {
      return false;
    }
    final l$addresses = addresses;
    final lOther$addresses = other.addresses;
    if (l$addresses.length != lOther$addresses.length) {
      return false;
    }
    for (int i = 0; i < l$addresses.length; i++) {
      final l$addresses$entry = l$addresses[i];
      final lOther$addresses$entry = lOther$addresses[i];
      if (l$addresses$entry != lOther$addresses$entry) {
        return false;
      }
    }
    final l$locations = locations;
    final lOther$locations = other.locations;
    if (l$locations.length != lOther$locations.length) {
      return false;
    }
    for (int i = 0; i < l$locations.length; i++) {
      final l$locations$entry = l$locations[i];
      final lOther$locations$entry = lOther$locations[i];
      if (l$locations$entry != lOther$locations$entry) {
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

extension UtilityExtension$Fragment$AccountDetails on Fragment$AccountDetails {
  CopyWith$Fragment$AccountDetails<Fragment$AccountDetails> get copyWith =>
      CopyWith$Fragment$AccountDetails(this, (i) => i);
}

abstract class CopyWith$Fragment$AccountDetails<TRes> {
  factory CopyWith$Fragment$AccountDetails(
    Fragment$AccountDetails instance,
    TRes Function(Fragment$AccountDetails) then,
  ) = _CopyWithImpl$Fragment$AccountDetails;

  factory CopyWith$Fragment$AccountDetails.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AccountDetails;

  TRes call({
    List<Fragment$AccountDetails$accountContacts?>? accountContacts,
    String? id,
    Enum$AccountType? type,
    String? code,
    String? name,
    String? sicCodeId,
    bool? allowPayment,
    Fragment$AccountDetails$celAgreement? celAgreement,
    Fragment$AccountDetails$secoreAgreement? secoreAgreement,
    Enum$PaymentMethod? preferredPaymentMethod,
    List<Fragment$AccountDetails$bankAccounts>? bankAccounts,
    List<Fragment$AccountDetails$prepaymentCards>? prepaymentCards,
    Enum$AccountStatus? accountStatus,
    Fragment$AccountDetails$settings? settings,
    List<Fragment$AccountDetails$addresses>? addresses,
    List<Fragment$AccountDetails$locations>? locations,
    String? $__typename,
  });
  TRes accountContacts(
    Iterable<Fragment$AccountDetails$accountContacts?>? Function(
      Iterable<
        CopyWith$Fragment$AccountDetails$accountContacts<
          Fragment$AccountDetails$accountContacts
        >?
      >?,
    )
    _fn,
  );
  CopyWith$Fragment$AccountDetails$celAgreement<TRes> get celAgreement;
  CopyWith$Fragment$AccountDetails$secoreAgreement<TRes> get secoreAgreement;
  TRes bankAccounts(
    Iterable<Fragment$AccountDetails$bankAccounts> Function(
      Iterable<
        CopyWith$Fragment$AccountDetails$bankAccounts<
          Fragment$AccountDetails$bankAccounts
        >
      >,
    )
    _fn,
  );
  TRes prepaymentCards(
    Iterable<Fragment$AccountDetails$prepaymentCards> Function(
      Iterable<
        CopyWith$Fragment$AccountDetails$prepaymentCards<
          Fragment$AccountDetails$prepaymentCards
        >
      >,
    )
    _fn,
  );
  CopyWith$Fragment$AccountDetails$settings<TRes> get settings;
  TRes addresses(
    Iterable<Fragment$AccountDetails$addresses> Function(
      Iterable<
        CopyWith$Fragment$AccountDetails$addresses<
          Fragment$AccountDetails$addresses
        >
      >,
    )
    _fn,
  );
  TRes locations(
    Iterable<Fragment$AccountDetails$locations> Function(
      Iterable<
        CopyWith$Fragment$AccountDetails$locations<
          Fragment$AccountDetails$locations
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$AccountDetails<TRes>
    implements CopyWith$Fragment$AccountDetails<TRes> {
  _CopyWithImpl$Fragment$AccountDetails(this._instance, this._then);

  final Fragment$AccountDetails _instance;

  final TRes Function(Fragment$AccountDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accountContacts = _undefined,
    Object? id = _undefined,
    Object? type = _undefined,
    Object? code = _undefined,
    Object? name = _undefined,
    Object? sicCodeId = _undefined,
    Object? allowPayment = _undefined,
    Object? celAgreement = _undefined,
    Object? secoreAgreement = _undefined,
    Object? preferredPaymentMethod = _undefined,
    Object? bankAccounts = _undefined,
    Object? prepaymentCards = _undefined,
    Object? accountStatus = _undefined,
    Object? settings = _undefined,
    Object? addresses = _undefined,
    Object? locations = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountDetails(
      accountContacts: accountContacts == _undefined
          ? _instance.accountContacts
          : (accountContacts
                as List<Fragment$AccountDetails$accountContacts?>?),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$AccountType),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      sicCodeId: sicCodeId == _undefined
          ? _instance.sicCodeId
          : (sicCodeId as String?),
      allowPayment: allowPayment == _undefined || allowPayment == null
          ? _instance.allowPayment
          : (allowPayment as bool),
      celAgreement: celAgreement == _undefined
          ? _instance.celAgreement
          : (celAgreement as Fragment$AccountDetails$celAgreement?),
      secoreAgreement: secoreAgreement == _undefined
          ? _instance.secoreAgreement
          : (secoreAgreement as Fragment$AccountDetails$secoreAgreement?),
      preferredPaymentMethod:
          preferredPaymentMethod == _undefined || preferredPaymentMethod == null
          ? _instance.preferredPaymentMethod
          : (preferredPaymentMethod as Enum$PaymentMethod),
      bankAccounts: bankAccounts == _undefined || bankAccounts == null
          ? _instance.bankAccounts
          : (bankAccounts as List<Fragment$AccountDetails$bankAccounts>),
      prepaymentCards: prepaymentCards == _undefined || prepaymentCards == null
          ? _instance.prepaymentCards
          : (prepaymentCards as List<Fragment$AccountDetails$prepaymentCards>),
      accountStatus: accountStatus == _undefined || accountStatus == null
          ? _instance.accountStatus
          : (accountStatus as Enum$AccountStatus),
      settings: settings == _undefined || settings == null
          ? _instance.settings
          : (settings as Fragment$AccountDetails$settings),
      addresses: addresses == _undefined || addresses == null
          ? _instance.addresses
          : (addresses as List<Fragment$AccountDetails$addresses>),
      locations: locations == _undefined || locations == null
          ? _instance.locations
          : (locations as List<Fragment$AccountDetails$locations>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes accountContacts(
    Iterable<Fragment$AccountDetails$accountContacts?>? Function(
      Iterable<
        CopyWith$Fragment$AccountDetails$accountContacts<
          Fragment$AccountDetails$accountContacts
        >?
      >?,
    )
    _fn,
  ) => call(
    accountContacts: _fn(
      _instance.accountContacts?.map(
        (e) => e == null
            ? null
            : CopyWith$Fragment$AccountDetails$accountContacts(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Fragment$AccountDetails$celAgreement<TRes> get celAgreement {
    final local$celAgreement = _instance.celAgreement;
    return local$celAgreement == null
        ? CopyWith$Fragment$AccountDetails$celAgreement.stub(_then(_instance))
        : CopyWith$Fragment$AccountDetails$celAgreement(
            local$celAgreement,
            (e) => call(celAgreement: e),
          );
  }

  CopyWith$Fragment$AccountDetails$secoreAgreement<TRes> get secoreAgreement {
    final local$secoreAgreement = _instance.secoreAgreement;
    return local$secoreAgreement == null
        ? CopyWith$Fragment$AccountDetails$secoreAgreement.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$AccountDetails$secoreAgreement(
            local$secoreAgreement,
            (e) => call(secoreAgreement: e),
          );
  }

  TRes bankAccounts(
    Iterable<Fragment$AccountDetails$bankAccounts> Function(
      Iterable<
        CopyWith$Fragment$AccountDetails$bankAccounts<
          Fragment$AccountDetails$bankAccounts
        >
      >,
    )
    _fn,
  ) => call(
    bankAccounts: _fn(
      _instance.bankAccounts.map(
        (e) => CopyWith$Fragment$AccountDetails$bankAccounts(e, (i) => i),
      ),
    ).toList(),
  );

  TRes prepaymentCards(
    Iterable<Fragment$AccountDetails$prepaymentCards> Function(
      Iterable<
        CopyWith$Fragment$AccountDetails$prepaymentCards<
          Fragment$AccountDetails$prepaymentCards
        >
      >,
    )
    _fn,
  ) => call(
    prepaymentCards: _fn(
      _instance.prepaymentCards.map(
        (e) => CopyWith$Fragment$AccountDetails$prepaymentCards(e, (i) => i),
      ),
    ).toList(),
  );

  CopyWith$Fragment$AccountDetails$settings<TRes> get settings {
    final local$settings = _instance.settings;
    return CopyWith$Fragment$AccountDetails$settings(
      local$settings,
      (e) => call(settings: e),
    );
  }

  TRes addresses(
    Iterable<Fragment$AccountDetails$addresses> Function(
      Iterable<
        CopyWith$Fragment$AccountDetails$addresses<
          Fragment$AccountDetails$addresses
        >
      >,
    )
    _fn,
  ) => call(
    addresses: _fn(
      _instance.addresses.map(
        (e) => CopyWith$Fragment$AccountDetails$addresses(e, (i) => i),
      ),
    ).toList(),
  );

  TRes locations(
    Iterable<Fragment$AccountDetails$locations> Function(
      Iterable<
        CopyWith$Fragment$AccountDetails$locations<
          Fragment$AccountDetails$locations
        >
      >,
    )
    _fn,
  ) => call(
    locations: _fn(
      _instance.locations.map(
        (e) => CopyWith$Fragment$AccountDetails$locations(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$AccountDetails<TRes>
    implements CopyWith$Fragment$AccountDetails<TRes> {
  _CopyWithStubImpl$Fragment$AccountDetails(this._res);

  TRes _res;

  call({
    List<Fragment$AccountDetails$accountContacts?>? accountContacts,
    String? id,
    Enum$AccountType? type,
    String? code,
    String? name,
    String? sicCodeId,
    bool? allowPayment,
    Fragment$AccountDetails$celAgreement? celAgreement,
    Fragment$AccountDetails$secoreAgreement? secoreAgreement,
    Enum$PaymentMethod? preferredPaymentMethod,
    List<Fragment$AccountDetails$bankAccounts>? bankAccounts,
    List<Fragment$AccountDetails$prepaymentCards>? prepaymentCards,
    Enum$AccountStatus? accountStatus,
    Fragment$AccountDetails$settings? settings,
    List<Fragment$AccountDetails$addresses>? addresses,
    List<Fragment$AccountDetails$locations>? locations,
    String? $__typename,
  }) => _res;

  accountContacts(_fn) => _res;

  CopyWith$Fragment$AccountDetails$celAgreement<TRes> get celAgreement =>
      CopyWith$Fragment$AccountDetails$celAgreement.stub(_res);

  CopyWith$Fragment$AccountDetails$secoreAgreement<TRes> get secoreAgreement =>
      CopyWith$Fragment$AccountDetails$secoreAgreement.stub(_res);

  bankAccounts(_fn) => _res;

  prepaymentCards(_fn) => _res;

  CopyWith$Fragment$AccountDetails$settings<TRes> get settings =>
      CopyWith$Fragment$AccountDetails$settings.stub(_res);

  addresses(_fn) => _res;

  locations(_fn) => _res;
}

const fragmentDefinitionAccountDetails = FragmentDefinitionNode(
  name: NameNode(value: 'AccountDetails'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Account'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'accountContacts'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'key'),
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
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
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
                    name: NameNode(value: 'contactPreferences'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'mobile'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(
                            selections: [
                              FieldNode(
                                name: NameNode(value: 'enabled'),
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
                            ],
                          ),
                        ),
                        FieldNode(
                          name: NameNode(value: 'email'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(
                            selections: [
                              FieldNode(
                                name: NameNode(value: 'enabled'),
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
                    name: NameNode(value: 'signature'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
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
                      ],
                    ),
                  ),
                  FieldNode(
                    name: NameNode(value: 'proofOfIdentification'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'media'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(
                            selections: [
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
                            ],
                          ),
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
                    name: NameNode(value: 'proofOfAddress'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'media'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(
                            selections: [
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
                            ],
                          ),
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
      FieldNode(
        name: NameNode(value: 'id'),
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
        name: NameNode(value: 'code'),
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
        name: NameNode(value: 'sicCodeId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'allowPayment'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'celAgreement'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'agreementDate'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'expiryDate'),
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
        name: NameNode(value: 'secoreAgreement'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'agreementDate'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'expiryDate'),
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
        name: NameNode(value: 'preferredPaymentMethod'),
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
        selectionSet: SelectionSetNode(
          selections: [
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
        name: NameNode(value: 'prepaymentCards'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'code'),
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
              name: NameNode(value: 'panDigits'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'issuerType'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'issueDate'),
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
        name: NameNode(value: 'accountStatus'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'settings'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'isDigitalWalletActivated'),
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
        name: NameNode(value: 'addresses'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'key'),
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
              selectionSet: SelectionSetNode(
                selections: [
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
                    name: NameNode(value: 'what3Words'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'geoLocation'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(
                      selections: [
                        FieldNode(
                          name: NameNode(value: 'latitude'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null,
                        ),
                        FieldNode(
                          name: NameNode(value: 'longitude'),
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
      FieldNode(
        name: NameNode(value: 'locations'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'includeOnlyMatchedLocations'),
            value: BooleanValueNode(value: false),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FieldNode(
              name: NameNode(value: 'code'),
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
);
const documentNodeFragmentAccountDetails = DocumentNode(
  definitions: [fragmentDefinitionAccountDetails],
);

class Fragment$AccountDetails$accountContacts {
  Fragment$AccountDetails$accountContacts({
    required this.key,
    required this.value,
    this.$__typename = 'ContactWithKey',
  });

  factory Fragment$AccountDetails$accountContacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountDetails$accountContacts(
      key: (l$key as String),
      value: Fragment$AccountDetails$accountContacts$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Fragment$AccountDetails$accountContacts$value value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AccountDetails$accountContacts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Fragment$AccountDetails$accountContacts
    on Fragment$AccountDetails$accountContacts {
  CopyWith$Fragment$AccountDetails$accountContacts<
    Fragment$AccountDetails$accountContacts
  >
  get copyWith =>
      CopyWith$Fragment$AccountDetails$accountContacts(this, (i) => i);
}

abstract class CopyWith$Fragment$AccountDetails$accountContacts<TRes> {
  factory CopyWith$Fragment$AccountDetails$accountContacts(
    Fragment$AccountDetails$accountContacts instance,
    TRes Function(Fragment$AccountDetails$accountContacts) then,
  ) = _CopyWithImpl$Fragment$AccountDetails$accountContacts;

  factory CopyWith$Fragment$AccountDetails$accountContacts.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AccountDetails$accountContacts;

  TRes call({
    String? key,
    Fragment$AccountDetails$accountContacts$value? value,
    String? $__typename,
  });
  CopyWith$Fragment$AccountDetails$accountContacts$value<TRes> get value;
}

class _CopyWithImpl$Fragment$AccountDetails$accountContacts<TRes>
    implements CopyWith$Fragment$AccountDetails$accountContacts<TRes> {
  _CopyWithImpl$Fragment$AccountDetails$accountContacts(
    this._instance,
    this._then,
  );

  final Fragment$AccountDetails$accountContacts _instance;

  final TRes Function(Fragment$AccountDetails$accountContacts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountDetails$accountContacts(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Fragment$AccountDetails$accountContacts$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$AccountDetails$accountContacts$value<TRes> get value {
    final local$value = _instance.value;
    return CopyWith$Fragment$AccountDetails$accountContacts$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$AccountDetails$accountContacts<TRes>
    implements CopyWith$Fragment$AccountDetails$accountContacts<TRes> {
  _CopyWithStubImpl$Fragment$AccountDetails$accountContacts(this._res);

  TRes _res;

  call({
    String? key,
    Fragment$AccountDetails$accountContacts$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$AccountDetails$accountContacts$value<TRes> get value =>
      CopyWith$Fragment$AccountDetails$accountContacts$value.stub(_res);
}

class Fragment$AccountDetails$accountContacts$value {
  Fragment$AccountDetails$accountContacts$value({
    required this.title,
    required this.firstName,
    required this.lastName,
    this.dateOfBirth,
    required this.contactTypes,
    required this.contactPreferences,
    this.signature,
    required this.proofOfIdentification,
    required this.proofOfAddress,
    this.$__typename = 'Contact',
  });

  factory Fragment$AccountDetails$accountContacts$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$title = json['title'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$dateOfBirth = json['dateOfBirth'];
    final l$contactTypes = json['contactTypes'];
    final l$contactPreferences = json['contactPreferences'];
    final l$signature = json['signature'];
    final l$proofOfIdentification = json['proofOfIdentification'];
    final l$proofOfAddress = json['proofOfAddress'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountDetails$accountContacts$value(
      title: (l$title as String),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      dateOfBirth: l$dateOfBirth == null
          ? null
          : LocalDate.fromJson(l$dateOfBirth),
      contactTypes: (l$contactTypes as List<dynamic>)
          .map((e) => fromJson$Enum$ContactType((e as String)))
          .toList(),
      contactPreferences:
          Fragment$AccountDetails$accountContacts$value$contactPreferences.fromJson(
            (l$contactPreferences as Map<String, dynamic>),
          ),
      signature: l$signature == null
          ? null
          : Fragment$AccountDetails$accountContacts$value$signature.fromJson(
              (l$signature as Map<String, dynamic>),
            ),
      proofOfIdentification: (l$proofOfIdentification as List<dynamic>)
          .map(
            (e) =>
                Fragment$AccountDetails$accountContacts$value$proofOfIdentification.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      proofOfAddress: (l$proofOfAddress as List<dynamic>)
          .map(
            (e) =>
                Fragment$AccountDetails$accountContacts$value$proofOfAddress.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String title;

  final String firstName;

  final String lastName;

  final DateTime? dateOfBirth;

  final List<Enum$ContactType> contactTypes;

  final Fragment$AccountDetails$accountContacts$value$contactPreferences
  contactPreferences;

  final Fragment$AccountDetails$accountContacts$value$signature? signature;

  final List<
    Fragment$AccountDetails$accountContacts$value$proofOfIdentification
  >
  proofOfIdentification;

  final List<Fragment$AccountDetails$accountContacts$value$proofOfAddress>
  proofOfAddress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$dateOfBirth = dateOfBirth;
    _resultData['dateOfBirth'] = l$dateOfBirth == null
        ? null
        : LocalDate.toJson(l$dateOfBirth);
    final l$contactTypes = contactTypes;
    _resultData['contactTypes'] = l$contactTypes
        .map((e) => toJson$Enum$ContactType(e))
        .toList();
    final l$contactPreferences = contactPreferences;
    _resultData['contactPreferences'] = l$contactPreferences.toJson();
    final l$signature = signature;
    _resultData['signature'] = l$signature?.toJson();
    final l$proofOfIdentification = proofOfIdentification;
    _resultData['proofOfIdentification'] = l$proofOfIdentification
        .map((e) => e.toJson())
        .toList();
    final l$proofOfAddress = proofOfAddress;
    _resultData['proofOfAddress'] = l$proofOfAddress
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$dateOfBirth = dateOfBirth;
    final l$contactTypes = contactTypes;
    final l$contactPreferences = contactPreferences;
    final l$signature = signature;
    final l$proofOfIdentification = proofOfIdentification;
    final l$proofOfAddress = proofOfAddress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$firstName,
      l$lastName,
      l$dateOfBirth,
      Object.hashAll(l$contactTypes.map((v) => v)),
      l$contactPreferences,
      l$signature,
      Object.hashAll(l$proofOfIdentification.map((v) => v)),
      Object.hashAll(l$proofOfAddress.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AccountDetails$accountContacts$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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
    final l$contactPreferences = contactPreferences;
    final lOther$contactPreferences = other.contactPreferences;
    if (l$contactPreferences != lOther$contactPreferences) {
      return false;
    }
    final l$signature = signature;
    final lOther$signature = other.signature;
    if (l$signature != lOther$signature) {
      return false;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$AccountDetails$accountContacts$value
    on Fragment$AccountDetails$accountContacts$value {
  CopyWith$Fragment$AccountDetails$accountContacts$value<
    Fragment$AccountDetails$accountContacts$value
  >
  get copyWith =>
      CopyWith$Fragment$AccountDetails$accountContacts$value(this, (i) => i);
}

abstract class CopyWith$Fragment$AccountDetails$accountContacts$value<TRes> {
  factory CopyWith$Fragment$AccountDetails$accountContacts$value(
    Fragment$AccountDetails$accountContacts$value instance,
    TRes Function(Fragment$AccountDetails$accountContacts$value) then,
  ) = _CopyWithImpl$Fragment$AccountDetails$accountContacts$value;

  factory CopyWith$Fragment$AccountDetails$accountContacts$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value;

  TRes call({
    String? title,
    String? firstName,
    String? lastName,
    DateTime? dateOfBirth,
    List<Enum$ContactType>? contactTypes,
    Fragment$AccountDetails$accountContacts$value$contactPreferences?
    contactPreferences,
    Fragment$AccountDetails$accountContacts$value$signature? signature,
    List<Fragment$AccountDetails$accountContacts$value$proofOfIdentification>?
    proofOfIdentification,
    List<Fragment$AccountDetails$accountContacts$value$proofOfAddress>?
    proofOfAddress,
    String? $__typename,
  });
  CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences<
    TRes
  >
  get contactPreferences;
  CopyWith$Fragment$AccountDetails$accountContacts$value$signature<TRes>
  get signature;
  TRes proofOfIdentification(
    Iterable<
      Fragment$AccountDetails$accountContacts$value$proofOfIdentification
    >
    Function(
      Iterable<
        CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification<
          Fragment$AccountDetails$accountContacts$value$proofOfIdentification
        >
      >,
    )
    _fn,
  );
  TRes proofOfAddress(
    Iterable<Fragment$AccountDetails$accountContacts$value$proofOfAddress>
    Function(
      Iterable<
        CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress<
          Fragment$AccountDetails$accountContacts$value$proofOfAddress
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$AccountDetails$accountContacts$value<TRes>
    implements CopyWith$Fragment$AccountDetails$accountContacts$value<TRes> {
  _CopyWithImpl$Fragment$AccountDetails$accountContacts$value(
    this._instance,
    this._then,
  );

  final Fragment$AccountDetails$accountContacts$value _instance;

  final TRes Function(Fragment$AccountDetails$accountContacts$value) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? dateOfBirth = _undefined,
    Object? contactTypes = _undefined,
    Object? contactPreferences = _undefined,
    Object? signature = _undefined,
    Object? proofOfIdentification = _undefined,
    Object? proofOfAddress = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountDetails$accountContacts$value(
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      firstName: firstName == _undefined || firstName == null
          ? _instance.firstName
          : (firstName as String),
      lastName: lastName == _undefined || lastName == null
          ? _instance.lastName
          : (lastName as String),
      dateOfBirth: dateOfBirth == _undefined
          ? _instance.dateOfBirth
          : (dateOfBirth as DateTime?),
      contactTypes: contactTypes == _undefined || contactTypes == null
          ? _instance.contactTypes
          : (contactTypes as List<Enum$ContactType>),
      contactPreferences:
          contactPreferences == _undefined || contactPreferences == null
          ? _instance.contactPreferences
          : (contactPreferences
                as Fragment$AccountDetails$accountContacts$value$contactPreferences),
      signature: signature == _undefined
          ? _instance.signature
          : (signature
                as Fragment$AccountDetails$accountContacts$value$signature?),
      proofOfIdentification:
          proofOfIdentification == _undefined || proofOfIdentification == null
          ? _instance.proofOfIdentification
          : (proofOfIdentification
                as List<
                  Fragment$AccountDetails$accountContacts$value$proofOfIdentification
                >),
      proofOfAddress: proofOfAddress == _undefined || proofOfAddress == null
          ? _instance.proofOfAddress
          : (proofOfAddress
                as List<
                  Fragment$AccountDetails$accountContacts$value$proofOfAddress
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences<
    TRes
  >
  get contactPreferences {
    final local$contactPreferences = _instance.contactPreferences;
    return CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences(
      local$contactPreferences,
      (e) => call(contactPreferences: e),
    );
  }

  CopyWith$Fragment$AccountDetails$accountContacts$value$signature<TRes>
  get signature {
    final local$signature = _instance.signature;
    return local$signature == null
        ? CopyWith$Fragment$AccountDetails$accountContacts$value$signature.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$AccountDetails$accountContacts$value$signature(
            local$signature,
            (e) => call(signature: e),
          );
  }

  TRes proofOfIdentification(
    Iterable<
      Fragment$AccountDetails$accountContacts$value$proofOfIdentification
    >
    Function(
      Iterable<
        CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification<
          Fragment$AccountDetails$accountContacts$value$proofOfIdentification
        >
      >,
    )
    _fn,
  ) => call(
    proofOfIdentification: _fn(
      _instance.proofOfIdentification.map(
        (e) =>
            CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );

  TRes proofOfAddress(
    Iterable<Fragment$AccountDetails$accountContacts$value$proofOfAddress>
    Function(
      Iterable<
        CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress<
          Fragment$AccountDetails$accountContacts$value$proofOfAddress
        >
      >,
    )
    _fn,
  ) => call(
    proofOfAddress: _fn(
      _instance.proofOfAddress.map(
        (e) =>
            CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value<TRes>
    implements CopyWith$Fragment$AccountDetails$accountContacts$value<TRes> {
  _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value(this._res);

  TRes _res;

  call({
    String? title,
    String? firstName,
    String? lastName,
    DateTime? dateOfBirth,
    List<Enum$ContactType>? contactTypes,
    Fragment$AccountDetails$accountContacts$value$contactPreferences?
    contactPreferences,
    Fragment$AccountDetails$accountContacts$value$signature? signature,
    List<Fragment$AccountDetails$accountContacts$value$proofOfIdentification>?
    proofOfIdentification,
    List<Fragment$AccountDetails$accountContacts$value$proofOfAddress>?
    proofOfAddress,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences<
    TRes
  >
  get contactPreferences =>
      CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences.stub(
        _res,
      );

  CopyWith$Fragment$AccountDetails$accountContacts$value$signature<TRes>
  get signature =>
      CopyWith$Fragment$AccountDetails$accountContacts$value$signature.stub(
        _res,
      );

  proofOfIdentification(_fn) => _res;

  proofOfAddress(_fn) => _res;
}

class Fragment$AccountDetails$accountContacts$value$contactPreferences {
  Fragment$AccountDetails$accountContacts$value$contactPreferences({
    required this.mobile,
    required this.email,
    this.$__typename = 'ContactPreferences',
  });

  factory Fragment$AccountDetails$accountContacts$value$contactPreferences.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mobile = json['mobile'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountDetails$accountContacts$value$contactPreferences(
      mobile:
          Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile.fromJson(
            (l$mobile as Map<String, dynamic>),
          ),
      email:
          Fragment$AccountDetails$accountContacts$value$contactPreferences$email.fromJson(
            (l$email as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile
  mobile;

  final Fragment$AccountDetails$accountContacts$value$contactPreferences$email
  email;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mobile = mobile;
    _resultData['mobile'] = l$mobile.toJson();
    final l$email = email;
    _resultData['email'] = l$email.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mobile = mobile;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mobile, l$email, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$AccountDetails$accountContacts$value$contactPreferences ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$AccountDetails$accountContacts$value$contactPreferences
    on Fragment$AccountDetails$accountContacts$value$contactPreferences {
  CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences<
    Fragment$AccountDetails$accountContacts$value$contactPreferences
  >
  get copyWith =>
      CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences<
  TRes
> {
  factory CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences(
    Fragment$AccountDetails$accountContacts$value$contactPreferences instance,
    TRes Function(
      Fragment$AccountDetails$accountContacts$value$contactPreferences,
    )
    then,
  ) = _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$contactPreferences;

  factory CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$contactPreferences;

  TRes call({
    Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile?
    mobile,
    Fragment$AccountDetails$accountContacts$value$contactPreferences$email?
    email,
    String? $__typename,
  });
  CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile;
  CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$email<
    TRes
  >
  get email;
}

class _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$contactPreferences<
  TRes
>
    implements
        CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences<
          TRes
        > {
  _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$contactPreferences(
    this._instance,
    this._then,
  );

  final Fragment$AccountDetails$accountContacts$value$contactPreferences
  _instance;

  final TRes Function(
    Fragment$AccountDetails$accountContacts$value$contactPreferences,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mobile = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountDetails$accountContacts$value$contactPreferences(
      mobile: mobile == _undefined || mobile == null
          ? _instance.mobile
          : (mobile
                as Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile),
      email: email == _undefined || email == null
          ? _instance.email
          : (email
                as Fragment$AccountDetails$accountContacts$value$contactPreferences$email),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile {
    final local$mobile = _instance.mobile;
    return CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile(
      local$mobile,
      (e) => call(mobile: e),
    );
  }

  CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$email<
    TRes
  >
  get email {
    final local$email = _instance.email;
    return CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$email(
      local$email,
      (e) => call(email: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$contactPreferences<
  TRes
>
    implements
        CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences<
          TRes
        > {
  _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$contactPreferences(
    this._res,
  );

  TRes _res;

  call({
    Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile?
    mobile,
    Fragment$AccountDetails$accountContacts$value$contactPreferences$email?
    email,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile<
    TRes
  >
  get mobile =>
      CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile.stub(
        _res,
      );

  CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$email<
    TRes
  >
  get email =>
      CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$email.stub(
        _res,
      );
}

class Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile {
  Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile({
    required this.enabled,
    required this.value,
    this.$__typename = 'ContactMethod',
  });

  factory Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile(
      enabled: (l$enabled as bool),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$enabled, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile
    on Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile {
  CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile<
    Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile
  >
  get copyWith =>
      CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile<
  TRes
> {
  factory CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile(
    Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile
    instance,
    TRes Function(
      Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile,
    )
    then,
  ) = _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile;

  factory CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile;

  TRes call({bool? enabled, String? value, String? $__typename});
}

class _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile<
  TRes
>
    implements
        CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile<
          TRes
        > {
  _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile(
    this._instance,
    this._then,
  );

  final Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile
  _instance;

  final TRes Function(
    Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile<
  TRes
>
    implements
        CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile<
          TRes
        > {
  _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$contactPreferences$mobile(
    this._res,
  );

  TRes _res;

  call({bool? enabled, String? value, String? $__typename}) => _res;
}

class Fragment$AccountDetails$accountContacts$value$contactPreferences$email {
  Fragment$AccountDetails$accountContacts$value$contactPreferences$email({
    required this.enabled,
    required this.value,
    this.$__typename = 'ContactMethod',
  });

  factory Fragment$AccountDetails$accountContacts$value$contactPreferences$email.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$enabled = json['enabled'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountDetails$accountContacts$value$contactPreferences$email(
      enabled: (l$enabled as bool),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final bool enabled;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$enabled = enabled;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$enabled, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$AccountDetails$accountContacts$value$contactPreferences$email ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Fragment$AccountDetails$accountContacts$value$contactPreferences$email
    on Fragment$AccountDetails$accountContacts$value$contactPreferences$email {
  CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$email<
    Fragment$AccountDetails$accountContacts$value$contactPreferences$email
  >
  get copyWith =>
      CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$email(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$email<
  TRes
> {
  factory CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$email(
    Fragment$AccountDetails$accountContacts$value$contactPreferences$email
    instance,
    TRes Function(
      Fragment$AccountDetails$accountContacts$value$contactPreferences$email,
    )
    then,
  ) = _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$contactPreferences$email;

  factory CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$email.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$contactPreferences$email;

  TRes call({bool? enabled, String? value, String? $__typename});
}

class _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$contactPreferences$email<
  TRes
>
    implements
        CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$email<
          TRes
        > {
  _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$contactPreferences$email(
    this._instance,
    this._then,
  );

  final Fragment$AccountDetails$accountContacts$value$contactPreferences$email
  _instance;

  final TRes Function(
    Fragment$AccountDetails$accountContacts$value$contactPreferences$email,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? enabled = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountDetails$accountContacts$value$contactPreferences$email(
      enabled: enabled == _undefined || enabled == null
          ? _instance.enabled
          : (enabled as bool),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$contactPreferences$email<
  TRes
>
    implements
        CopyWith$Fragment$AccountDetails$accountContacts$value$contactPreferences$email<
          TRes
        > {
  _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$contactPreferences$email(
    this._res,
  );

  TRes _res;

  call({bool? enabled, String? value, String? $__typename}) => _res;
}

class Fragment$AccountDetails$accountContacts$value$signature {
  Fragment$AccountDetails$accountContacts$value$signature({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Fragment$AccountDetails$accountContacts$value$signature.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountDetails$accountContacts$value$signature(
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
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AccountDetails$accountContacts$value$signature ||
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

extension UtilityExtension$Fragment$AccountDetails$accountContacts$value$signature
    on Fragment$AccountDetails$accountContacts$value$signature {
  CopyWith$Fragment$AccountDetails$accountContacts$value$signature<
    Fragment$AccountDetails$accountContacts$value$signature
  >
  get copyWith =>
      CopyWith$Fragment$AccountDetails$accountContacts$value$signature(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$AccountDetails$accountContacts$value$signature<
  TRes
> {
  factory CopyWith$Fragment$AccountDetails$accountContacts$value$signature(
    Fragment$AccountDetails$accountContacts$value$signature instance,
    TRes Function(Fragment$AccountDetails$accountContacts$value$signature) then,
  ) = _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$signature;

  factory CopyWith$Fragment$AccountDetails$accountContacts$value$signature.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$signature;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$signature<
  TRes
>
    implements
        CopyWith$Fragment$AccountDetails$accountContacts$value$signature<TRes> {
  _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$signature(
    this._instance,
    this._then,
  );

  final Fragment$AccountDetails$accountContacts$value$signature _instance;

  final TRes Function(Fragment$AccountDetails$accountContacts$value$signature)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? url = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$AccountDetails$accountContacts$value$signature(
          url: url == _undefined || url == null
              ? _instance.url
              : (url as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$signature<
  TRes
>
    implements
        CopyWith$Fragment$AccountDetails$accountContacts$value$signature<TRes> {
  _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$signature(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Fragment$AccountDetails$accountContacts$value$proofOfIdentification {
  Fragment$AccountDetails$accountContacts$value$proofOfIdentification({
    required this.media,
    required this.type,
    required this.subType,
    required this.validFrom,
    required this.validTo,
    this.$__typename = 'Identification',
  });

  factory Fragment$AccountDetails$accountContacts$value$proofOfIdentification.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$media = json['media'];
    final l$type = json['type'];
    final l$subType = json['subType'];
    final l$validFrom = json['validFrom'];
    final l$validTo = json['validTo'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountDetails$accountContacts$value$proofOfIdentification(
      media:
          Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media.fromJson(
            (l$media as Map<String, dynamic>),
          ),
      type: fromJson$Enum$IdentificationType((l$type as String)),
      subType: fromJson$Enum$IdentificationSubType((l$subType as String)),
      validFrom: DateTime.parse((l$validFrom as String)),
      validTo: DateTime.parse((l$validTo as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media
  media;

  final Enum$IdentificationType type;

  final Enum$IdentificationSubType subType;

  final DateTime validFrom;

  final DateTime validTo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$type = type;
    _resultData['type'] = toJson$Enum$IdentificationType(l$type);
    final l$subType = subType;
    _resultData['subType'] = toJson$Enum$IdentificationSubType(l$subType);
    final l$validFrom = validFrom;
    _resultData['validFrom'] = l$validFrom.toIso8601String();
    final l$validTo = validTo;
    _resultData['validTo'] = l$validTo.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$type = type;
    final l$subType = subType;
    final l$validFrom = validFrom;
    final l$validTo = validTo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media,
      l$type,
      l$subType,
      l$validFrom,
      l$validTo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$AccountDetails$accountContacts$value$proofOfIdentification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$AccountDetails$accountContacts$value$proofOfIdentification
    on Fragment$AccountDetails$accountContacts$value$proofOfIdentification {
  CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification<
    Fragment$AccountDetails$accountContacts$value$proofOfIdentification
  >
  get copyWith =>
      CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification<
  TRes
> {
  factory CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification(
    Fragment$AccountDetails$accountContacts$value$proofOfIdentification
    instance,
    TRes Function(
      Fragment$AccountDetails$accountContacts$value$proofOfIdentification,
    )
    then,
  ) = _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$proofOfIdentification;

  factory CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$proofOfIdentification;

  TRes call({
    Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media?
    media,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    DateTime? validFrom,
    DateTime? validTo,
    String? $__typename,
  });
  CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media<
    TRes
  >
  get media;
}

class _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$proofOfIdentification<
  TRes
>
    implements
        CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification<
          TRes
        > {
  _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$proofOfIdentification(
    this._instance,
    this._then,
  );

  final Fragment$AccountDetails$accountContacts$value$proofOfIdentification
  _instance;

  final TRes Function(
    Fragment$AccountDetails$accountContacts$value$proofOfIdentification,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? type = _undefined,
    Object? subType = _undefined,
    Object? validFrom = _undefined,
    Object? validTo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountDetails$accountContacts$value$proofOfIdentification(
      media: media == _undefined || media == null
          ? _instance.media
          : (media
                as Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$IdentificationType),
      subType: subType == _undefined || subType == null
          ? _instance.subType
          : (subType as Enum$IdentificationSubType),
      validFrom: validFrom == _undefined || validFrom == null
          ? _instance.validFrom
          : (validFrom as DateTime),
      validTo: validTo == _undefined || validTo == null
          ? _instance.validTo
          : (validTo as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media<
    TRes
  >
  get media {
    final local$media = _instance.media;
    return CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media(
      local$media,
      (e) => call(media: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$proofOfIdentification<
  TRes
>
    implements
        CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification<
          TRes
        > {
  _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$proofOfIdentification(
    this._res,
  );

  TRes _res;

  call({
    Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media?
    media,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    DateTime? validFrom,
    DateTime? validTo,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media<
    TRes
  >
  get media =>
      CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media.stub(
        _res,
      );
}

class Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media {
  Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media(
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
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media ||
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

extension UtilityExtension$Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media
    on Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media {
  CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media<
    Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media
  >
  get copyWith =>
      CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media<
  TRes
> {
  factory CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media(
    Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media
    instance,
    TRes Function(
      Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media,
    )
    then,
  ) = _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media;

  factory CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media<
  TRes
>
    implements
        CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media<
          TRes
        > {
  _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media(
    this._instance,
    this._then,
  );

  final Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media
  _instance;

  final TRes Function(
    Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media(
      url: url == _undefined || url == null ? _instance.url : (url as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media<
  TRes
>
    implements
        CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media<
          TRes
        > {
  _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$proofOfIdentification$media(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Fragment$AccountDetails$accountContacts$value$proofOfAddress {
  Fragment$AccountDetails$accountContacts$value$proofOfAddress({
    required this.media,
    required this.type,
    required this.subType,
    required this.validFrom,
    required this.validTo,
    this.$__typename = 'Identification',
  });

  factory Fragment$AccountDetails$accountContacts$value$proofOfAddress.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$media = json['media'];
    final l$type = json['type'];
    final l$subType = json['subType'];
    final l$validFrom = json['validFrom'];
    final l$validTo = json['validTo'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountDetails$accountContacts$value$proofOfAddress(
      media:
          Fragment$AccountDetails$accountContacts$value$proofOfAddress$media.fromJson(
            (l$media as Map<String, dynamic>),
          ),
      type: fromJson$Enum$IdentificationType((l$type as String)),
      subType: fromJson$Enum$IdentificationSubType((l$subType as String)),
      validFrom: DateTime.parse((l$validFrom as String)),
      validTo: DateTime.parse((l$validTo as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$AccountDetails$accountContacts$value$proofOfAddress$media
  media;

  final Enum$IdentificationType type;

  final Enum$IdentificationSubType subType;

  final DateTime validFrom;

  final DateTime validTo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$type = type;
    _resultData['type'] = toJson$Enum$IdentificationType(l$type);
    final l$subType = subType;
    _resultData['subType'] = toJson$Enum$IdentificationSubType(l$subType);
    final l$validFrom = validFrom;
    _resultData['validFrom'] = l$validFrom.toIso8601String();
    final l$validTo = validTo;
    _resultData['validTo'] = l$validTo.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$type = type;
    final l$subType = subType;
    final l$validFrom = validFrom;
    final l$validTo = validTo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media,
      l$type,
      l$subType,
      l$validFrom,
      l$validTo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$AccountDetails$accountContacts$value$proofOfAddress ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$AccountDetails$accountContacts$value$proofOfAddress
    on Fragment$AccountDetails$accountContacts$value$proofOfAddress {
  CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress<
    Fragment$AccountDetails$accountContacts$value$proofOfAddress
  >
  get copyWith =>
      CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress<
  TRes
> {
  factory CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress(
    Fragment$AccountDetails$accountContacts$value$proofOfAddress instance,
    TRes Function(Fragment$AccountDetails$accountContacts$value$proofOfAddress)
    then,
  ) = _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$proofOfAddress;

  factory CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$proofOfAddress;

  TRes call({
    Fragment$AccountDetails$accountContacts$value$proofOfAddress$media? media,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    DateTime? validFrom,
    DateTime? validTo,
    String? $__typename,
  });
  CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress$media<
    TRes
  >
  get media;
}

class _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$proofOfAddress<
  TRes
>
    implements
        CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress<
          TRes
        > {
  _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$proofOfAddress(
    this._instance,
    this._then,
  );

  final Fragment$AccountDetails$accountContacts$value$proofOfAddress _instance;

  final TRes Function(
    Fragment$AccountDetails$accountContacts$value$proofOfAddress,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? type = _undefined,
    Object? subType = _undefined,
    Object? validFrom = _undefined,
    Object? validTo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountDetails$accountContacts$value$proofOfAddress(
      media: media == _undefined || media == null
          ? _instance.media
          : (media
                as Fragment$AccountDetails$accountContacts$value$proofOfAddress$media),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$IdentificationType),
      subType: subType == _undefined || subType == null
          ? _instance.subType
          : (subType as Enum$IdentificationSubType),
      validFrom: validFrom == _undefined || validFrom == null
          ? _instance.validFrom
          : (validFrom as DateTime),
      validTo: validTo == _undefined || validTo == null
          ? _instance.validTo
          : (validTo as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress$media<
    TRes
  >
  get media {
    final local$media = _instance.media;
    return CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress$media(
      local$media,
      (e) => call(media: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$proofOfAddress<
  TRes
>
    implements
        CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress<
          TRes
        > {
  _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$proofOfAddress(
    this._res,
  );

  TRes _res;

  call({
    Fragment$AccountDetails$accountContacts$value$proofOfAddress$media? media,
    Enum$IdentificationType? type,
    Enum$IdentificationSubType? subType,
    DateTime? validFrom,
    DateTime? validTo,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress$media<
    TRes
  >
  get media =>
      CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress$media.stub(
        _res,
      );
}

class Fragment$AccountDetails$accountContacts$value$proofOfAddress$media {
  Fragment$AccountDetails$accountContacts$value$proofOfAddress$media({
    required this.url,
    this.$__typename = 'MediaAsset',
  });

  factory Fragment$AccountDetails$accountContacts$value$proofOfAddress$media.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountDetails$accountContacts$value$proofOfAddress$media(
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
    return Object.hashAll([l$url, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Fragment$AccountDetails$accountContacts$value$proofOfAddress$media ||
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

extension UtilityExtension$Fragment$AccountDetails$accountContacts$value$proofOfAddress$media
    on Fragment$AccountDetails$accountContacts$value$proofOfAddress$media {
  CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress$media<
    Fragment$AccountDetails$accountContacts$value$proofOfAddress$media
  >
  get copyWith =>
      CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress$media<
  TRes
> {
  factory CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress$media(
    Fragment$AccountDetails$accountContacts$value$proofOfAddress$media instance,
    TRes Function(
      Fragment$AccountDetails$accountContacts$value$proofOfAddress$media,
    )
    then,
  ) = _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$proofOfAddress$media;

  factory CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress$media.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$proofOfAddress$media;

  TRes call({String? url, String? $__typename});
}

class _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$proofOfAddress$media<
  TRes
>
    implements
        CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress$media<
          TRes
        > {
  _CopyWithImpl$Fragment$AccountDetails$accountContacts$value$proofOfAddress$media(
    this._instance,
    this._then,
  );

  final Fragment$AccountDetails$accountContacts$value$proofOfAddress$media
  _instance;

  final TRes Function(
    Fragment$AccountDetails$accountContacts$value$proofOfAddress$media,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? url = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Fragment$AccountDetails$accountContacts$value$proofOfAddress$media(
          url: url == _undefined || url == null
              ? _instance.url
              : (url as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$proofOfAddress$media<
  TRes
>
    implements
        CopyWith$Fragment$AccountDetails$accountContacts$value$proofOfAddress$media<
          TRes
        > {
  _CopyWithStubImpl$Fragment$AccountDetails$accountContacts$value$proofOfAddress$media(
    this._res,
  );

  TRes _res;

  call({String? url, String? $__typename}) => _res;
}

class Fragment$AccountDetails$celAgreement {
  Fragment$AccountDetails$celAgreement({
    required this.agreementDate,
    this.expiryDate,
    this.$__typename = 'LegalAgreement',
  });

  factory Fragment$AccountDetails$celAgreement.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$agreementDate = json['agreementDate'];
    final l$expiryDate = json['expiryDate'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountDetails$celAgreement(
      agreementDate: DateTime.parse((l$agreementDate as String)),
      expiryDate: l$expiryDate == null
          ? null
          : DateTime.parse((l$expiryDate as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime agreementDate;

  final DateTime? expiryDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$agreementDate = agreementDate;
    _resultData['agreementDate'] = l$agreementDate.toIso8601String();
    final l$expiryDate = expiryDate;
    _resultData['expiryDate'] = l$expiryDate?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$agreementDate = agreementDate;
    final l$expiryDate = expiryDate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$agreementDate, l$expiryDate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AccountDetails$celAgreement ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$agreementDate = agreementDate;
    final lOther$agreementDate = other.agreementDate;
    if (l$agreementDate != lOther$agreementDate) {
      return false;
    }
    final l$expiryDate = expiryDate;
    final lOther$expiryDate = other.expiryDate;
    if (l$expiryDate != lOther$expiryDate) {
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

extension UtilityExtension$Fragment$AccountDetails$celAgreement
    on Fragment$AccountDetails$celAgreement {
  CopyWith$Fragment$AccountDetails$celAgreement<
    Fragment$AccountDetails$celAgreement
  >
  get copyWith => CopyWith$Fragment$AccountDetails$celAgreement(this, (i) => i);
}

abstract class CopyWith$Fragment$AccountDetails$celAgreement<TRes> {
  factory CopyWith$Fragment$AccountDetails$celAgreement(
    Fragment$AccountDetails$celAgreement instance,
    TRes Function(Fragment$AccountDetails$celAgreement) then,
  ) = _CopyWithImpl$Fragment$AccountDetails$celAgreement;

  factory CopyWith$Fragment$AccountDetails$celAgreement.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AccountDetails$celAgreement;

  TRes call({
    DateTime? agreementDate,
    DateTime? expiryDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AccountDetails$celAgreement<TRes>
    implements CopyWith$Fragment$AccountDetails$celAgreement<TRes> {
  _CopyWithImpl$Fragment$AccountDetails$celAgreement(
    this._instance,
    this._then,
  );

  final Fragment$AccountDetails$celAgreement _instance;

  final TRes Function(Fragment$AccountDetails$celAgreement) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? agreementDate = _undefined,
    Object? expiryDate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountDetails$celAgreement(
      agreementDate: agreementDate == _undefined || agreementDate == null
          ? _instance.agreementDate
          : (agreementDate as DateTime),
      expiryDate: expiryDate == _undefined
          ? _instance.expiryDate
          : (expiryDate as DateTime?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AccountDetails$celAgreement<TRes>
    implements CopyWith$Fragment$AccountDetails$celAgreement<TRes> {
  _CopyWithStubImpl$Fragment$AccountDetails$celAgreement(this._res);

  TRes _res;

  call({DateTime? agreementDate, DateTime? expiryDate, String? $__typename}) =>
      _res;
}

class Fragment$AccountDetails$secoreAgreement {
  Fragment$AccountDetails$secoreAgreement({
    required this.agreementDate,
    this.expiryDate,
    this.$__typename = 'LegalAgreement',
  });

  factory Fragment$AccountDetails$secoreAgreement.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$agreementDate = json['agreementDate'];
    final l$expiryDate = json['expiryDate'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountDetails$secoreAgreement(
      agreementDate: DateTime.parse((l$agreementDate as String)),
      expiryDate: l$expiryDate == null
          ? null
          : DateTime.parse((l$expiryDate as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime agreementDate;

  final DateTime? expiryDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$agreementDate = agreementDate;
    _resultData['agreementDate'] = l$agreementDate.toIso8601String();
    final l$expiryDate = expiryDate;
    _resultData['expiryDate'] = l$expiryDate?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$agreementDate = agreementDate;
    final l$expiryDate = expiryDate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$agreementDate, l$expiryDate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AccountDetails$secoreAgreement ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$agreementDate = agreementDate;
    final lOther$agreementDate = other.agreementDate;
    if (l$agreementDate != lOther$agreementDate) {
      return false;
    }
    final l$expiryDate = expiryDate;
    final lOther$expiryDate = other.expiryDate;
    if (l$expiryDate != lOther$expiryDate) {
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

extension UtilityExtension$Fragment$AccountDetails$secoreAgreement
    on Fragment$AccountDetails$secoreAgreement {
  CopyWith$Fragment$AccountDetails$secoreAgreement<
    Fragment$AccountDetails$secoreAgreement
  >
  get copyWith =>
      CopyWith$Fragment$AccountDetails$secoreAgreement(this, (i) => i);
}

abstract class CopyWith$Fragment$AccountDetails$secoreAgreement<TRes> {
  factory CopyWith$Fragment$AccountDetails$secoreAgreement(
    Fragment$AccountDetails$secoreAgreement instance,
    TRes Function(Fragment$AccountDetails$secoreAgreement) then,
  ) = _CopyWithImpl$Fragment$AccountDetails$secoreAgreement;

  factory CopyWith$Fragment$AccountDetails$secoreAgreement.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AccountDetails$secoreAgreement;

  TRes call({
    DateTime? agreementDate,
    DateTime? expiryDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AccountDetails$secoreAgreement<TRes>
    implements CopyWith$Fragment$AccountDetails$secoreAgreement<TRes> {
  _CopyWithImpl$Fragment$AccountDetails$secoreAgreement(
    this._instance,
    this._then,
  );

  final Fragment$AccountDetails$secoreAgreement _instance;

  final TRes Function(Fragment$AccountDetails$secoreAgreement) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? agreementDate = _undefined,
    Object? expiryDate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountDetails$secoreAgreement(
      agreementDate: agreementDate == _undefined || agreementDate == null
          ? _instance.agreementDate
          : (agreementDate as DateTime),
      expiryDate: expiryDate == _undefined
          ? _instance.expiryDate
          : (expiryDate as DateTime?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AccountDetails$secoreAgreement<TRes>
    implements CopyWith$Fragment$AccountDetails$secoreAgreement<TRes> {
  _CopyWithStubImpl$Fragment$AccountDetails$secoreAgreement(this._res);

  TRes _res;

  call({DateTime? agreementDate, DateTime? expiryDate, String? $__typename}) =>
      _res;
}

class Fragment$AccountDetails$bankAccounts {
  Fragment$AccountDetails$bankAccounts({
    required this.bankName,
    required this.accountHolderName,
    required this.accountNumber,
    required this.sortCode,
    this.$__typename = 'BankAccount',
  });

  factory Fragment$AccountDetails$bankAccounts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$bankName = json['bankName'];
    final l$accountHolderName = json['accountHolderName'];
    final l$accountNumber = json['accountNumber'];
    final l$sortCode = json['sortCode'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountDetails$bankAccounts(
      bankName: (l$bankName as String),
      accountHolderName: (l$accountHolderName as String),
      accountNumber: (l$accountNumber as String),
      sortCode: (l$sortCode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String bankName;

  final String accountHolderName;

  final String accountNumber;

  final String sortCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bankName = bankName;
    _resultData['bankName'] = l$bankName;
    final l$accountHolderName = accountHolderName;
    _resultData['accountHolderName'] = l$accountHolderName;
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$sortCode = sortCode;
    _resultData['sortCode'] = l$sortCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bankName = bankName;
    final l$accountHolderName = accountHolderName;
    final l$accountNumber = accountNumber;
    final l$sortCode = sortCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bankName,
      l$accountHolderName,
      l$accountNumber,
      l$sortCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AccountDetails$bankAccounts ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$AccountDetails$bankAccounts
    on Fragment$AccountDetails$bankAccounts {
  CopyWith$Fragment$AccountDetails$bankAccounts<
    Fragment$AccountDetails$bankAccounts
  >
  get copyWith => CopyWith$Fragment$AccountDetails$bankAccounts(this, (i) => i);
}

abstract class CopyWith$Fragment$AccountDetails$bankAccounts<TRes> {
  factory CopyWith$Fragment$AccountDetails$bankAccounts(
    Fragment$AccountDetails$bankAccounts instance,
    TRes Function(Fragment$AccountDetails$bankAccounts) then,
  ) = _CopyWithImpl$Fragment$AccountDetails$bankAccounts;

  factory CopyWith$Fragment$AccountDetails$bankAccounts.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AccountDetails$bankAccounts;

  TRes call({
    String? bankName,
    String? accountHolderName,
    String? accountNumber,
    String? sortCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AccountDetails$bankAccounts<TRes>
    implements CopyWith$Fragment$AccountDetails$bankAccounts<TRes> {
  _CopyWithImpl$Fragment$AccountDetails$bankAccounts(
    this._instance,
    this._then,
  );

  final Fragment$AccountDetails$bankAccounts _instance;

  final TRes Function(Fragment$AccountDetails$bankAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bankName = _undefined,
    Object? accountHolderName = _undefined,
    Object? accountNumber = _undefined,
    Object? sortCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountDetails$bankAccounts(
      bankName: bankName == _undefined || bankName == null
          ? _instance.bankName
          : (bankName as String),
      accountHolderName:
          accountHolderName == _undefined || accountHolderName == null
          ? _instance.accountHolderName
          : (accountHolderName as String),
      accountNumber: accountNumber == _undefined || accountNumber == null
          ? _instance.accountNumber
          : (accountNumber as String),
      sortCode: sortCode == _undefined || sortCode == null
          ? _instance.sortCode
          : (sortCode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AccountDetails$bankAccounts<TRes>
    implements CopyWith$Fragment$AccountDetails$bankAccounts<TRes> {
  _CopyWithStubImpl$Fragment$AccountDetails$bankAccounts(this._res);

  TRes _res;

  call({
    String? bankName,
    String? accountHolderName,
    String? accountNumber,
    String? sortCode,
    String? $__typename,
  }) => _res;
}

class Fragment$AccountDetails$prepaymentCards {
  Fragment$AccountDetails$prepaymentCards({
    required this.code,
    required this.active,
    required this.panDigits,
    required this.issuerType,
    required this.issueDate,
    this.$__typename = 'PrepaymentCard',
  });

  factory Fragment$AccountDetails$prepaymentCards.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$active = json['active'];
    final l$panDigits = json['panDigits'];
    final l$issuerType = json['issuerType'];
    final l$issueDate = json['issueDate'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountDetails$prepaymentCards(
      code: (l$code as String),
      active: (l$active as bool),
      panDigits: (l$panDigits as int),
      issuerType: fromJson$Enum$PrepayCardIssuer((l$issuerType as String)),
      issueDate: DateTime.parse((l$issueDate as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final bool active;

  final int panDigits;

  final Enum$PrepayCardIssuer issuerType;

  final DateTime issueDate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$active = active;
    _resultData['active'] = l$active;
    final l$panDigits = panDigits;
    _resultData['panDigits'] = l$panDigits;
    final l$issuerType = issuerType;
    _resultData['issuerType'] = toJson$Enum$PrepayCardIssuer(l$issuerType);
    final l$issueDate = issueDate;
    _resultData['issueDate'] = l$issueDate.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$active = active;
    final l$panDigits = panDigits;
    final l$issuerType = issuerType;
    final l$issueDate = issueDate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$active,
      l$panDigits,
      l$issuerType,
      l$issueDate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AccountDetails$prepaymentCards ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$active = active;
    final lOther$active = other.active;
    if (l$active != lOther$active) {
      return false;
    }
    final l$panDigits = panDigits;
    final lOther$panDigits = other.panDigits;
    if (l$panDigits != lOther$panDigits) {
      return false;
    }
    final l$issuerType = issuerType;
    final lOther$issuerType = other.issuerType;
    if (l$issuerType != lOther$issuerType) {
      return false;
    }
    final l$issueDate = issueDate;
    final lOther$issueDate = other.issueDate;
    if (l$issueDate != lOther$issueDate) {
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

extension UtilityExtension$Fragment$AccountDetails$prepaymentCards
    on Fragment$AccountDetails$prepaymentCards {
  CopyWith$Fragment$AccountDetails$prepaymentCards<
    Fragment$AccountDetails$prepaymentCards
  >
  get copyWith =>
      CopyWith$Fragment$AccountDetails$prepaymentCards(this, (i) => i);
}

abstract class CopyWith$Fragment$AccountDetails$prepaymentCards<TRes> {
  factory CopyWith$Fragment$AccountDetails$prepaymentCards(
    Fragment$AccountDetails$prepaymentCards instance,
    TRes Function(Fragment$AccountDetails$prepaymentCards) then,
  ) = _CopyWithImpl$Fragment$AccountDetails$prepaymentCards;

  factory CopyWith$Fragment$AccountDetails$prepaymentCards.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AccountDetails$prepaymentCards;

  TRes call({
    String? code,
    bool? active,
    int? panDigits,
    Enum$PrepayCardIssuer? issuerType,
    DateTime? issueDate,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AccountDetails$prepaymentCards<TRes>
    implements CopyWith$Fragment$AccountDetails$prepaymentCards<TRes> {
  _CopyWithImpl$Fragment$AccountDetails$prepaymentCards(
    this._instance,
    this._then,
  );

  final Fragment$AccountDetails$prepaymentCards _instance;

  final TRes Function(Fragment$AccountDetails$prepaymentCards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? active = _undefined,
    Object? panDigits = _undefined,
    Object? issuerType = _undefined,
    Object? issueDate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountDetails$prepaymentCards(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      active: active == _undefined || active == null
          ? _instance.active
          : (active as bool),
      panDigits: panDigits == _undefined || panDigits == null
          ? _instance.panDigits
          : (panDigits as int),
      issuerType: issuerType == _undefined || issuerType == null
          ? _instance.issuerType
          : (issuerType as Enum$PrepayCardIssuer),
      issueDate: issueDate == _undefined || issueDate == null
          ? _instance.issueDate
          : (issueDate as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AccountDetails$prepaymentCards<TRes>
    implements CopyWith$Fragment$AccountDetails$prepaymentCards<TRes> {
  _CopyWithStubImpl$Fragment$AccountDetails$prepaymentCards(this._res);

  TRes _res;

  call({
    String? code,
    bool? active,
    int? panDigits,
    Enum$PrepayCardIssuer? issuerType,
    DateTime? issueDate,
    String? $__typename,
  }) => _res;
}

class Fragment$AccountDetails$settings {
  Fragment$AccountDetails$settings({
    required this.isDigitalWalletActivated,
    this.$__typename = 'AccountSettings',
  });

  factory Fragment$AccountDetails$settings.fromJson(Map<String, dynamic> json) {
    final l$isDigitalWalletActivated = json['isDigitalWalletActivated'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountDetails$settings(
      isDigitalWalletActivated: (l$isDigitalWalletActivated as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool isDigitalWalletActivated;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isDigitalWalletActivated = isDigitalWalletActivated;
    _resultData['isDigitalWalletActivated'] = l$isDigitalWalletActivated;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isDigitalWalletActivated = isDigitalWalletActivated;
    final l$$__typename = $__typename;
    return Object.hashAll([l$isDigitalWalletActivated, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AccountDetails$settings ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isDigitalWalletActivated = isDigitalWalletActivated;
    final lOther$isDigitalWalletActivated = other.isDigitalWalletActivated;
    if (l$isDigitalWalletActivated != lOther$isDigitalWalletActivated) {
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

extension UtilityExtension$Fragment$AccountDetails$settings
    on Fragment$AccountDetails$settings {
  CopyWith$Fragment$AccountDetails$settings<Fragment$AccountDetails$settings>
  get copyWith => CopyWith$Fragment$AccountDetails$settings(this, (i) => i);
}

abstract class CopyWith$Fragment$AccountDetails$settings<TRes> {
  factory CopyWith$Fragment$AccountDetails$settings(
    Fragment$AccountDetails$settings instance,
    TRes Function(Fragment$AccountDetails$settings) then,
  ) = _CopyWithImpl$Fragment$AccountDetails$settings;

  factory CopyWith$Fragment$AccountDetails$settings.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AccountDetails$settings;

  TRes call({bool? isDigitalWalletActivated, String? $__typename});
}

class _CopyWithImpl$Fragment$AccountDetails$settings<TRes>
    implements CopyWith$Fragment$AccountDetails$settings<TRes> {
  _CopyWithImpl$Fragment$AccountDetails$settings(this._instance, this._then);

  final Fragment$AccountDetails$settings _instance;

  final TRes Function(Fragment$AccountDetails$settings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isDigitalWalletActivated = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountDetails$settings(
      isDigitalWalletActivated:
          isDigitalWalletActivated == _undefined ||
              isDigitalWalletActivated == null
          ? _instance.isDigitalWalletActivated
          : (isDigitalWalletActivated as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AccountDetails$settings<TRes>
    implements CopyWith$Fragment$AccountDetails$settings<TRes> {
  _CopyWithStubImpl$Fragment$AccountDetails$settings(this._res);

  TRes _res;

  call({bool? isDigitalWalletActivated, String? $__typename}) => _res;
}

class Fragment$AccountDetails$addresses {
  Fragment$AccountDetails$addresses({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfGuidAndAddress',
  });

  factory Fragment$AccountDetails$addresses.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountDetails$addresses(
      key: (l$key as String),
      value: Fragment$AccountDetails$addresses$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Fragment$AccountDetails$addresses$value value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$key, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AccountDetails$addresses ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Fragment$AccountDetails$addresses
    on Fragment$AccountDetails$addresses {
  CopyWith$Fragment$AccountDetails$addresses<Fragment$AccountDetails$addresses>
  get copyWith => CopyWith$Fragment$AccountDetails$addresses(this, (i) => i);
}

abstract class CopyWith$Fragment$AccountDetails$addresses<TRes> {
  factory CopyWith$Fragment$AccountDetails$addresses(
    Fragment$AccountDetails$addresses instance,
    TRes Function(Fragment$AccountDetails$addresses) then,
  ) = _CopyWithImpl$Fragment$AccountDetails$addresses;

  factory CopyWith$Fragment$AccountDetails$addresses.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AccountDetails$addresses;

  TRes call({
    String? key,
    Fragment$AccountDetails$addresses$value? value,
    String? $__typename,
  });
  CopyWith$Fragment$AccountDetails$addresses$value<TRes> get value;
}

class _CopyWithImpl$Fragment$AccountDetails$addresses<TRes>
    implements CopyWith$Fragment$AccountDetails$addresses<TRes> {
  _CopyWithImpl$Fragment$AccountDetails$addresses(this._instance, this._then);

  final Fragment$AccountDetails$addresses _instance;

  final TRes Function(Fragment$AccountDetails$addresses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountDetails$addresses(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Fragment$AccountDetails$addresses$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$AccountDetails$addresses$value<TRes> get value {
    final local$value = _instance.value;
    return CopyWith$Fragment$AccountDetails$addresses$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$AccountDetails$addresses<TRes>
    implements CopyWith$Fragment$AccountDetails$addresses<TRes> {
  _CopyWithStubImpl$Fragment$AccountDetails$addresses(this._res);

  TRes _res;

  call({
    String? key,
    Fragment$AccountDetails$addresses$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$AccountDetails$addresses$value<TRes> get value =>
      CopyWith$Fragment$AccountDetails$addresses$value.stub(_res);
}

class Fragment$AccountDetails$addresses$value {
  Fragment$AccountDetails$addresses$value({
    required this.address1,
    required this.address2,
    required this.address3,
    required this.address4,
    required this.address5,
    required this.address6,
    required this.postCode,
    required this.countryCode,
    required this.what3Words,
    this.geoLocation,
    this.$__typename = 'Address',
  });

  factory Fragment$AccountDetails$addresses$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$address3 = json['address3'];
    final l$address4 = json['address4'];
    final l$address5 = json['address5'];
    final l$address6 = json['address6'];
    final l$postCode = json['postCode'];
    final l$countryCode = json['countryCode'];
    final l$what3Words = json['what3Words'];
    final l$geoLocation = json['geoLocation'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountDetails$addresses$value(
      address1: (l$address1 as String),
      address2: (l$address2 as String),
      address3: (l$address3 as String),
      address4: (l$address4 as String),
      address5: (l$address5 as String),
      address6: (l$address6 as String),
      postCode: (l$postCode as String),
      countryCode: (l$countryCode as String),
      what3Words: (l$what3Words as String),
      geoLocation: l$geoLocation == null
          ? null
          : Fragment$AccountDetails$addresses$value$geoLocation.fromJson(
              (l$geoLocation as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String address1;

  final String address2;

  final String address3;

  final String address4;

  final String address5;

  final String address6;

  final String postCode;

  final String countryCode;

  final String what3Words;

  final Fragment$AccountDetails$addresses$value$geoLocation? geoLocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$what3Words = what3Words;
    _resultData['what3Words'] = l$what3Words;
    final l$geoLocation = geoLocation;
    _resultData['geoLocation'] = l$geoLocation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address1 = address1;
    final l$address2 = address2;
    final l$address3 = address3;
    final l$address4 = address4;
    final l$address5 = address5;
    final l$address6 = address6;
    final l$postCode = postCode;
    final l$countryCode = countryCode;
    final l$what3Words = what3Words;
    final l$geoLocation = geoLocation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address1,
      l$address2,
      l$address3,
      l$address4,
      l$address5,
      l$address6,
      l$postCode,
      l$countryCode,
      l$what3Words,
      l$geoLocation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AccountDetails$addresses$value ||
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
    final l$what3Words = what3Words;
    final lOther$what3Words = other.what3Words;
    if (l$what3Words != lOther$what3Words) {
      return false;
    }
    final l$geoLocation = geoLocation;
    final lOther$geoLocation = other.geoLocation;
    if (l$geoLocation != lOther$geoLocation) {
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

extension UtilityExtension$Fragment$AccountDetails$addresses$value
    on Fragment$AccountDetails$addresses$value {
  CopyWith$Fragment$AccountDetails$addresses$value<
    Fragment$AccountDetails$addresses$value
  >
  get copyWith =>
      CopyWith$Fragment$AccountDetails$addresses$value(this, (i) => i);
}

abstract class CopyWith$Fragment$AccountDetails$addresses$value<TRes> {
  factory CopyWith$Fragment$AccountDetails$addresses$value(
    Fragment$AccountDetails$addresses$value instance,
    TRes Function(Fragment$AccountDetails$addresses$value) then,
  ) = _CopyWithImpl$Fragment$AccountDetails$addresses$value;

  factory CopyWith$Fragment$AccountDetails$addresses$value.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AccountDetails$addresses$value;

  TRes call({
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? countryCode,
    String? what3Words,
    Fragment$AccountDetails$addresses$value$geoLocation? geoLocation,
    String? $__typename,
  });
  CopyWith$Fragment$AccountDetails$addresses$value$geoLocation<TRes>
  get geoLocation;
}

class _CopyWithImpl$Fragment$AccountDetails$addresses$value<TRes>
    implements CopyWith$Fragment$AccountDetails$addresses$value<TRes> {
  _CopyWithImpl$Fragment$AccountDetails$addresses$value(
    this._instance,
    this._then,
  );

  final Fragment$AccountDetails$addresses$value _instance;

  final TRes Function(Fragment$AccountDetails$addresses$value) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? address3 = _undefined,
    Object? address4 = _undefined,
    Object? address5 = _undefined,
    Object? address6 = _undefined,
    Object? postCode = _undefined,
    Object? countryCode = _undefined,
    Object? what3Words = _undefined,
    Object? geoLocation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountDetails$addresses$value(
      address1: address1 == _undefined || address1 == null
          ? _instance.address1
          : (address1 as String),
      address2: address2 == _undefined || address2 == null
          ? _instance.address2
          : (address2 as String),
      address3: address3 == _undefined || address3 == null
          ? _instance.address3
          : (address3 as String),
      address4: address4 == _undefined || address4 == null
          ? _instance.address4
          : (address4 as String),
      address5: address5 == _undefined || address5 == null
          ? _instance.address5
          : (address5 as String),
      address6: address6 == _undefined || address6 == null
          ? _instance.address6
          : (address6 as String),
      postCode: postCode == _undefined || postCode == null
          ? _instance.postCode
          : (postCode as String),
      countryCode: countryCode == _undefined || countryCode == null
          ? _instance.countryCode
          : (countryCode as String),
      what3Words: what3Words == _undefined || what3Words == null
          ? _instance.what3Words
          : (what3Words as String),
      geoLocation: geoLocation == _undefined
          ? _instance.geoLocation
          : (geoLocation
                as Fragment$AccountDetails$addresses$value$geoLocation?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$AccountDetails$addresses$value$geoLocation<TRes>
  get geoLocation {
    final local$geoLocation = _instance.geoLocation;
    return local$geoLocation == null
        ? CopyWith$Fragment$AccountDetails$addresses$value$geoLocation.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$AccountDetails$addresses$value$geoLocation(
            local$geoLocation,
            (e) => call(geoLocation: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$AccountDetails$addresses$value<TRes>
    implements CopyWith$Fragment$AccountDetails$addresses$value<TRes> {
  _CopyWithStubImpl$Fragment$AccountDetails$addresses$value(this._res);

  TRes _res;

  call({
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? countryCode,
    String? what3Words,
    Fragment$AccountDetails$addresses$value$geoLocation? geoLocation,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$AccountDetails$addresses$value$geoLocation<TRes>
  get geoLocation =>
      CopyWith$Fragment$AccountDetails$addresses$value$geoLocation.stub(_res);
}

class Fragment$AccountDetails$addresses$value$geoLocation {
  Fragment$AccountDetails$addresses$value$geoLocation({
    required this.latitude,
    required this.longitude,
    this.$__typename = 'LatLong',
  });

  factory Fragment$AccountDetails$addresses$value$geoLocation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$latitude = json['latitude'];
    final l$longitude = json['longitude'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountDetails$addresses$value$geoLocation(
      latitude: (l$latitude as num).toDouble(),
      longitude: (l$longitude as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double latitude;

  final double longitude;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$latitude = latitude;
    _resultData['latitude'] = l$latitude;
    final l$longitude = longitude;
    _resultData['longitude'] = l$longitude;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$latitude = latitude;
    final l$longitude = longitude;
    final l$$__typename = $__typename;
    return Object.hashAll([l$latitude, l$longitude, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AccountDetails$addresses$value$geoLocation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
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

extension UtilityExtension$Fragment$AccountDetails$addresses$value$geoLocation
    on Fragment$AccountDetails$addresses$value$geoLocation {
  CopyWith$Fragment$AccountDetails$addresses$value$geoLocation<
    Fragment$AccountDetails$addresses$value$geoLocation
  >
  get copyWith => CopyWith$Fragment$AccountDetails$addresses$value$geoLocation(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Fragment$AccountDetails$addresses$value$geoLocation<
  TRes
> {
  factory CopyWith$Fragment$AccountDetails$addresses$value$geoLocation(
    Fragment$AccountDetails$addresses$value$geoLocation instance,
    TRes Function(Fragment$AccountDetails$addresses$value$geoLocation) then,
  ) = _CopyWithImpl$Fragment$AccountDetails$addresses$value$geoLocation;

  factory CopyWith$Fragment$AccountDetails$addresses$value$geoLocation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$AccountDetails$addresses$value$geoLocation;

  TRes call({double? latitude, double? longitude, String? $__typename});
}

class _CopyWithImpl$Fragment$AccountDetails$addresses$value$geoLocation<TRes>
    implements
        CopyWith$Fragment$AccountDetails$addresses$value$geoLocation<TRes> {
  _CopyWithImpl$Fragment$AccountDetails$addresses$value$geoLocation(
    this._instance,
    this._then,
  );

  final Fragment$AccountDetails$addresses$value$geoLocation _instance;

  final TRes Function(Fragment$AccountDetails$addresses$value$geoLocation)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latitude = _undefined,
    Object? longitude = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountDetails$addresses$value$geoLocation(
      latitude: latitude == _undefined || latitude == null
          ? _instance.latitude
          : (latitude as double),
      longitude: longitude == _undefined || longitude == null
          ? _instance.longitude
          : (longitude as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AccountDetails$addresses$value$geoLocation<
  TRes
>
    implements
        CopyWith$Fragment$AccountDetails$addresses$value$geoLocation<TRes> {
  _CopyWithStubImpl$Fragment$AccountDetails$addresses$value$geoLocation(
    this._res,
  );

  TRes _res;

  call({double? latitude, double? longitude, String? $__typename}) => _res;
}

class Fragment$AccountDetails$locations {
  Fragment$AccountDetails$locations({
    required this.code,
    required this.name,
    required this.addressKey,
    this.$__typename = 'Location',
  });

  factory Fragment$AccountDetails$locations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$name = json['name'];
    final l$addressKey = json['addressKey'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountDetails$locations(
      code: (l$code as String),
      name: (l$name as String),
      addressKey: (l$addressKey as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String name;

  final String addressKey;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$addressKey = addressKey;
    _resultData['addressKey'] = l$addressKey;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$name = name;
    final l$addressKey = addressKey;
    final l$$__typename = $__typename;
    return Object.hashAll([l$code, l$name, l$addressKey, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AccountDetails$locations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
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

extension UtilityExtension$Fragment$AccountDetails$locations
    on Fragment$AccountDetails$locations {
  CopyWith$Fragment$AccountDetails$locations<Fragment$AccountDetails$locations>
  get copyWith => CopyWith$Fragment$AccountDetails$locations(this, (i) => i);
}

abstract class CopyWith$Fragment$AccountDetails$locations<TRes> {
  factory CopyWith$Fragment$AccountDetails$locations(
    Fragment$AccountDetails$locations instance,
    TRes Function(Fragment$AccountDetails$locations) then,
  ) = _CopyWithImpl$Fragment$AccountDetails$locations;

  factory CopyWith$Fragment$AccountDetails$locations.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AccountDetails$locations;

  TRes call({
    String? code,
    String? name,
    String? addressKey,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AccountDetails$locations<TRes>
    implements CopyWith$Fragment$AccountDetails$locations<TRes> {
  _CopyWithImpl$Fragment$AccountDetails$locations(this._instance, this._then);

  final Fragment$AccountDetails$locations _instance;

  final TRes Function(Fragment$AccountDetails$locations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? name = _undefined,
    Object? addressKey = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountDetails$locations(
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      addressKey: addressKey == _undefined || addressKey == null
          ? _instance.addressKey
          : (addressKey as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AccountDetails$locations<TRes>
    implements CopyWith$Fragment$AccountDetails$locations<TRes> {
  _CopyWithStubImpl$Fragment$AccountDetails$locations(this._res);

  TRes _res;

  call({String? code, String? name, String? addressKey, String? $__typename}) =>
      _res;
}
