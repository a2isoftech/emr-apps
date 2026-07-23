import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Fragment$AccountFilteredFields {
  factory Variables$Fragment$AccountFilteredFields({
    String? query,
    bool? includeOnlyMatchedAddresses,
    bool? includeOnlyMatchedLocations,
  }) => Variables$Fragment$AccountFilteredFields._({
    if (query != null) r'query': query,
    if (includeOnlyMatchedAddresses != null)
      r'includeOnlyMatchedAddresses': includeOnlyMatchedAddresses,
    if (includeOnlyMatchedLocations != null)
      r'includeOnlyMatchedLocations': includeOnlyMatchedLocations,
  });

  Variables$Fragment$AccountFilteredFields._(this._$data);

  factory Variables$Fragment$AccountFilteredFields.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('query')) {
      final l$query = data['query'];
      result$data['query'] = (l$query as String?);
    }
    if (data.containsKey('includeOnlyMatchedAddresses')) {
      final l$includeOnlyMatchedAddresses = data['includeOnlyMatchedAddresses'];
      result$data['includeOnlyMatchedAddresses'] =
          (l$includeOnlyMatchedAddresses as bool?);
    }
    if (data.containsKey('includeOnlyMatchedLocations')) {
      final l$includeOnlyMatchedLocations = data['includeOnlyMatchedLocations'];
      result$data['includeOnlyMatchedLocations'] =
          (l$includeOnlyMatchedLocations as bool?);
    }
    return Variables$Fragment$AccountFilteredFields._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get query => (_$data['query'] as String?);

  bool? get includeOnlyMatchedAddresses =>
      (_$data['includeOnlyMatchedAddresses'] as bool?);

  bool? get includeOnlyMatchedLocations =>
      (_$data['includeOnlyMatchedLocations'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('query')) {
      final l$query = query;
      result$data['query'] = l$query;
    }
    if (_$data.containsKey('includeOnlyMatchedAddresses')) {
      final l$includeOnlyMatchedAddresses = includeOnlyMatchedAddresses;
      result$data['includeOnlyMatchedAddresses'] =
          l$includeOnlyMatchedAddresses;
    }
    if (_$data.containsKey('includeOnlyMatchedLocations')) {
      final l$includeOnlyMatchedLocations = includeOnlyMatchedLocations;
      result$data['includeOnlyMatchedLocations'] =
          l$includeOnlyMatchedLocations;
    }
    return result$data;
  }

  CopyWith$Variables$Fragment$AccountFilteredFields<
    Variables$Fragment$AccountFilteredFields
  >
  get copyWith =>
      CopyWith$Variables$Fragment$AccountFilteredFields(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Fragment$AccountFilteredFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$query = query;
    final lOther$query = other.query;
    if (_$data.containsKey('query') != other._$data.containsKey('query')) {
      return false;
    }
    if (l$query != lOther$query) {
      return false;
    }
    final l$includeOnlyMatchedAddresses = includeOnlyMatchedAddresses;
    final lOther$includeOnlyMatchedAddresses =
        other.includeOnlyMatchedAddresses;
    if (_$data.containsKey('includeOnlyMatchedAddresses') !=
        other._$data.containsKey('includeOnlyMatchedAddresses')) {
      return false;
    }
    if (l$includeOnlyMatchedAddresses != lOther$includeOnlyMatchedAddresses) {
      return false;
    }
    final l$includeOnlyMatchedLocations = includeOnlyMatchedLocations;
    final lOther$includeOnlyMatchedLocations =
        other.includeOnlyMatchedLocations;
    if (_$data.containsKey('includeOnlyMatchedLocations') !=
        other._$data.containsKey('includeOnlyMatchedLocations')) {
      return false;
    }
    if (l$includeOnlyMatchedLocations != lOther$includeOnlyMatchedLocations) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$query = query;
    final l$includeOnlyMatchedAddresses = includeOnlyMatchedAddresses;
    final l$includeOnlyMatchedLocations = includeOnlyMatchedLocations;
    return Object.hashAll([
      _$data.containsKey('query') ? l$query : const {},
      _$data.containsKey('includeOnlyMatchedAddresses')
          ? l$includeOnlyMatchedAddresses
          : const {},
      _$data.containsKey('includeOnlyMatchedLocations')
          ? l$includeOnlyMatchedLocations
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Fragment$AccountFilteredFields<TRes> {
  factory CopyWith$Variables$Fragment$AccountFilteredFields(
    Variables$Fragment$AccountFilteredFields instance,
    TRes Function(Variables$Fragment$AccountFilteredFields) then,
  ) = _CopyWithImpl$Variables$Fragment$AccountFilteredFields;

  factory CopyWith$Variables$Fragment$AccountFilteredFields.stub(TRes res) =
      _CopyWithStubImpl$Variables$Fragment$AccountFilteredFields;

  TRes call({
    String? query,
    bool? includeOnlyMatchedAddresses,
    bool? includeOnlyMatchedLocations,
  });
}

class _CopyWithImpl$Variables$Fragment$AccountFilteredFields<TRes>
    implements CopyWith$Variables$Fragment$AccountFilteredFields<TRes> {
  _CopyWithImpl$Variables$Fragment$AccountFilteredFields(
    this._instance,
    this._then,
  );

  final Variables$Fragment$AccountFilteredFields _instance;

  final TRes Function(Variables$Fragment$AccountFilteredFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? query = _undefined,
    Object? includeOnlyMatchedAddresses = _undefined,
    Object? includeOnlyMatchedLocations = _undefined,
  }) => _then(
    Variables$Fragment$AccountFilteredFields._({
      ..._instance._$data,
      if (query != _undefined) 'query': (query as String?),
      if (includeOnlyMatchedAddresses != _undefined)
        'includeOnlyMatchedAddresses': (includeOnlyMatchedAddresses as bool?),
      if (includeOnlyMatchedLocations != _undefined)
        'includeOnlyMatchedLocations': (includeOnlyMatchedLocations as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Fragment$AccountFilteredFields<TRes>
    implements CopyWith$Variables$Fragment$AccountFilteredFields<TRes> {
  _CopyWithStubImpl$Variables$Fragment$AccountFilteredFields(this._res);

  TRes _res;

  call({
    String? query,
    bool? includeOnlyMatchedAddresses,
    bool? includeOnlyMatchedLocations,
  }) => _res;
}

class Fragment$AccountFilteredFields {
  Fragment$AccountFilteredFields({
    required this.id,
    required this.code,
    required this.name,
    this.sicCodeId,
    required this.accountSubTypes,
    required this.productEWCCodes,
    this.accountAddresses,
    required this.addresses,
    required this.locations,
    required this.type,
    this.$__typename = 'Account',
  });

  factory Fragment$AccountFilteredFields.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$name = json['name'];
    final l$sicCodeId = json['sicCodeId'];
    final l$accountSubTypes = json['accountSubTypes'];
    final l$productEWCCodes = json['productEWCCodes'];
    final l$accountAddresses = json['accountAddresses'];
    final l$addresses = json['addresses'];
    final l$locations = json['locations'];
    final l$type = json['type'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountFilteredFields(
      id: (l$id as String),
      code: (l$code as String),
      name: (l$name as String),
      sicCodeId: (l$sicCodeId as String?),
      accountSubTypes: (l$accountSubTypes as List<dynamic>)
          .map(
            (e) => Fragment$AccountFilteredFields$accountSubTypes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      productEWCCodes: (l$productEWCCodes as List<dynamic>)
          .map(
            (e) => Fragment$AccountFilteredFields$productEWCCodes.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      accountAddresses: (l$accountAddresses as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Fragment$AccountFilteredFields$accountAddresses.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      addresses: (l$addresses as List<dynamic>)
          .map(
            (e) => Fragment$AccountFilteredFields$addresses.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      locations: (l$locations as List<dynamic>)
          .map(
            (e) => Fragment$AccountFilteredFields$locations.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      type: fromJson$Enum$AccountType((l$type as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String name;

  final String? sicCodeId;

  final List<Fragment$AccountFilteredFields$accountSubTypes> accountSubTypes;

  final List<Fragment$AccountFilteredFields$productEWCCodes> productEWCCodes;

  final List<Fragment$AccountFilteredFields$accountAddresses?>?
  accountAddresses;

  final List<Fragment$AccountFilteredFields$addresses> addresses;

  final List<Fragment$AccountFilteredFields$locations> locations;

  final Enum$AccountType type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$sicCodeId = sicCodeId;
    _resultData['sicCodeId'] = l$sicCodeId;
    final l$accountSubTypes = accountSubTypes;
    _resultData['accountSubTypes'] = l$accountSubTypes
        .map((e) => e.toJson())
        .toList();
    final l$productEWCCodes = productEWCCodes;
    _resultData['productEWCCodes'] = l$productEWCCodes
        .map((e) => e.toJson())
        .toList();
    final l$accountAddresses = accountAddresses;
    _resultData['accountAddresses'] = l$accountAddresses
        ?.map((e) => e?.toJson())
        .toList();
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e.toJson()).toList();
    final l$locations = locations;
    _resultData['locations'] = l$locations.map((e) => e.toJson()).toList();
    final l$type = type;
    _resultData['type'] = toJson$Enum$AccountType(l$type);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$name = name;
    final l$sicCodeId = sicCodeId;
    final l$accountSubTypes = accountSubTypes;
    final l$productEWCCodes = productEWCCodes;
    final l$accountAddresses = accountAddresses;
    final l$addresses = addresses;
    final l$locations = locations;
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$name,
      l$sicCodeId,
      Object.hashAll(l$accountSubTypes.map((v) => v)),
      Object.hashAll(l$productEWCCodes.map((v) => v)),
      l$accountAddresses == null
          ? null
          : Object.hashAll(l$accountAddresses.map((v) => v)),
      Object.hashAll(l$addresses.map((v) => v)),
      Object.hashAll(l$locations.map((v) => v)),
      l$type,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$AccountFilteredFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$accountSubTypes = accountSubTypes;
    final lOther$accountSubTypes = other.accountSubTypes;
    if (l$accountSubTypes.length != lOther$accountSubTypes.length) {
      return false;
    }
    for (int i = 0; i < l$accountSubTypes.length; i++) {
      final l$accountSubTypes$entry = l$accountSubTypes[i];
      final lOther$accountSubTypes$entry = lOther$accountSubTypes[i];
      if (l$accountSubTypes$entry != lOther$accountSubTypes$entry) {
        return false;
      }
    }
    final l$productEWCCodes = productEWCCodes;
    final lOther$productEWCCodes = other.productEWCCodes;
    if (l$productEWCCodes.length != lOther$productEWCCodes.length) {
      return false;
    }
    for (int i = 0; i < l$productEWCCodes.length; i++) {
      final l$productEWCCodes$entry = l$productEWCCodes[i];
      final lOther$productEWCCodes$entry = lOther$productEWCCodes[i];
      if (l$productEWCCodes$entry != lOther$productEWCCodes$entry) {
        return false;
      }
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
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
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

extension UtilityExtension$Fragment$AccountFilteredFields
    on Fragment$AccountFilteredFields {
  CopyWith$Fragment$AccountFilteredFields<Fragment$AccountFilteredFields>
  get copyWith => CopyWith$Fragment$AccountFilteredFields(this, (i) => i);
}

abstract class CopyWith$Fragment$AccountFilteredFields<TRes> {
  factory CopyWith$Fragment$AccountFilteredFields(
    Fragment$AccountFilteredFields instance,
    TRes Function(Fragment$AccountFilteredFields) then,
  ) = _CopyWithImpl$Fragment$AccountFilteredFields;

  factory CopyWith$Fragment$AccountFilteredFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AccountFilteredFields;

  TRes call({
    String? id,
    String? code,
    String? name,
    String? sicCodeId,
    List<Fragment$AccountFilteredFields$accountSubTypes>? accountSubTypes,
    List<Fragment$AccountFilteredFields$productEWCCodes>? productEWCCodes,
    List<Fragment$AccountFilteredFields$accountAddresses?>? accountAddresses,
    List<Fragment$AccountFilteredFields$addresses>? addresses,
    List<Fragment$AccountFilteredFields$locations>? locations,
    Enum$AccountType? type,
    String? $__typename,
  });
  TRes accountSubTypes(
    Iterable<Fragment$AccountFilteredFields$accountSubTypes> Function(
      Iterable<
        CopyWith$Fragment$AccountFilteredFields$accountSubTypes<
          Fragment$AccountFilteredFields$accountSubTypes
        >
      >,
    )
    _fn,
  );
  TRes productEWCCodes(
    Iterable<Fragment$AccountFilteredFields$productEWCCodes> Function(
      Iterable<
        CopyWith$Fragment$AccountFilteredFields$productEWCCodes<
          Fragment$AccountFilteredFields$productEWCCodes
        >
      >,
    )
    _fn,
  );
  TRes accountAddresses(
    Iterable<Fragment$AccountFilteredFields$accountAddresses?>? Function(
      Iterable<
        CopyWith$Fragment$AccountFilteredFields$accountAddresses<
          Fragment$AccountFilteredFields$accountAddresses
        >?
      >?,
    )
    _fn,
  );
  TRes addresses(
    Iterable<Fragment$AccountFilteredFields$addresses> Function(
      Iterable<
        CopyWith$Fragment$AccountFilteredFields$addresses<
          Fragment$AccountFilteredFields$addresses
        >
      >,
    )
    _fn,
  );
  TRes locations(
    Iterable<Fragment$AccountFilteredFields$locations> Function(
      Iterable<
        CopyWith$Fragment$AccountFilteredFields$locations<
          Fragment$AccountFilteredFields$locations
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Fragment$AccountFilteredFields<TRes>
    implements CopyWith$Fragment$AccountFilteredFields<TRes> {
  _CopyWithImpl$Fragment$AccountFilteredFields(this._instance, this._then);

  final Fragment$AccountFilteredFields _instance;

  final TRes Function(Fragment$AccountFilteredFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? name = _undefined,
    Object? sicCodeId = _undefined,
    Object? accountSubTypes = _undefined,
    Object? productEWCCodes = _undefined,
    Object? accountAddresses = _undefined,
    Object? addresses = _undefined,
    Object? locations = _undefined,
    Object? type = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountFilteredFields(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      sicCodeId: sicCodeId == _undefined
          ? _instance.sicCodeId
          : (sicCodeId as String?),
      accountSubTypes: accountSubTypes == _undefined || accountSubTypes == null
          ? _instance.accountSubTypes
          : (accountSubTypes
                as List<Fragment$AccountFilteredFields$accountSubTypes>),
      productEWCCodes: productEWCCodes == _undefined || productEWCCodes == null
          ? _instance.productEWCCodes
          : (productEWCCodes
                as List<Fragment$AccountFilteredFields$productEWCCodes>),
      accountAddresses: accountAddresses == _undefined
          ? _instance.accountAddresses
          : (accountAddresses
                as List<Fragment$AccountFilteredFields$accountAddresses?>?),
      addresses: addresses == _undefined || addresses == null
          ? _instance.addresses
          : (addresses as List<Fragment$AccountFilteredFields$addresses>),
      locations: locations == _undefined || locations == null
          ? _instance.locations
          : (locations as List<Fragment$AccountFilteredFields$locations>),
      type: type == _undefined || type == null
          ? _instance.type
          : (type as Enum$AccountType),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes accountSubTypes(
    Iterable<Fragment$AccountFilteredFields$accountSubTypes> Function(
      Iterable<
        CopyWith$Fragment$AccountFilteredFields$accountSubTypes<
          Fragment$AccountFilteredFields$accountSubTypes
        >
      >,
    )
    _fn,
  ) => call(
    accountSubTypes: _fn(
      _instance.accountSubTypes.map(
        (e) => CopyWith$Fragment$AccountFilteredFields$accountSubTypes(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  TRes productEWCCodes(
    Iterable<Fragment$AccountFilteredFields$productEWCCodes> Function(
      Iterable<
        CopyWith$Fragment$AccountFilteredFields$productEWCCodes<
          Fragment$AccountFilteredFields$productEWCCodes
        >
      >,
    )
    _fn,
  ) => call(
    productEWCCodes: _fn(
      _instance.productEWCCodes.map(
        (e) => CopyWith$Fragment$AccountFilteredFields$productEWCCodes(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );

  TRes accountAddresses(
    Iterable<Fragment$AccountFilteredFields$accountAddresses?>? Function(
      Iterable<
        CopyWith$Fragment$AccountFilteredFields$accountAddresses<
          Fragment$AccountFilteredFields$accountAddresses
        >?
      >?,
    )
    _fn,
  ) => call(
    accountAddresses: _fn(
      _instance.accountAddresses?.map(
        (e) => e == null
            ? null
            : CopyWith$Fragment$AccountFilteredFields$accountAddresses(
                e,
                (i) => i,
              ),
      ),
    )?.toList(),
  );

  TRes addresses(
    Iterable<Fragment$AccountFilteredFields$addresses> Function(
      Iterable<
        CopyWith$Fragment$AccountFilteredFields$addresses<
          Fragment$AccountFilteredFields$addresses
        >
      >,
    )
    _fn,
  ) => call(
    addresses: _fn(
      _instance.addresses.map(
        (e) => CopyWith$Fragment$AccountFilteredFields$addresses(e, (i) => i),
      ),
    ).toList(),
  );

  TRes locations(
    Iterable<Fragment$AccountFilteredFields$locations> Function(
      Iterable<
        CopyWith$Fragment$AccountFilteredFields$locations<
          Fragment$AccountFilteredFields$locations
        >
      >,
    )
    _fn,
  ) => call(
    locations: _fn(
      _instance.locations.map(
        (e) => CopyWith$Fragment$AccountFilteredFields$locations(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Fragment$AccountFilteredFields<TRes>
    implements CopyWith$Fragment$AccountFilteredFields<TRes> {
  _CopyWithStubImpl$Fragment$AccountFilteredFields(this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    String? name,
    String? sicCodeId,
    List<Fragment$AccountFilteredFields$accountSubTypes>? accountSubTypes,
    List<Fragment$AccountFilteredFields$productEWCCodes>? productEWCCodes,
    List<Fragment$AccountFilteredFields$accountAddresses?>? accountAddresses,
    List<Fragment$AccountFilteredFields$addresses>? addresses,
    List<Fragment$AccountFilteredFields$locations>? locations,
    Enum$AccountType? type,
    String? $__typename,
  }) => _res;

  accountSubTypes(_fn) => _res;

  productEWCCodes(_fn) => _res;

  accountAddresses(_fn) => _res;

  addresses(_fn) => _res;

  locations(_fn) => _res;
}

const fragmentDefinitionAccountFilteredFields = FragmentDefinitionNode(
  name: NameNode(value: 'AccountFilteredFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'Account'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'id'),
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
        name: NameNode(value: 'accountSubTypes'),
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
        name: NameNode(value: 'productEWCCodes'),
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
        name: NameNode(value: 'accountAddresses'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'query'),
            value: VariableNode(name: NameNode(value: 'query')),
          ),
          ArgumentNode(
            name: NameNode(value: 'includeOnlyMatchedAddresses'),
            value: VariableNode(
              name: NameNode(value: 'includeOnlyMatchedAddresses'),
            ),
          ),
        ],
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
            name: NameNode(value: 'query'),
            value: VariableNode(name: NameNode(value: 'query')),
          ),
          ArgumentNode(
            name: NameNode(value: 'includeOnlyMatchedLocations'),
            value: VariableNode(
              name: NameNode(value: 'includeOnlyMatchedLocations'),
            ),
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
        name: NameNode(value: 'type'),
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
);
const documentNodeFragmentAccountFilteredFields = DocumentNode(
  definitions: [fragmentDefinitionAccountFilteredFields],
);

class Fragment$AccountFilteredFields$accountSubTypes {
  Fragment$AccountFilteredFields$accountSubTypes({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfAccountSubTypeAndBoolean',
  });

  factory Fragment$AccountFilteredFields$accountSubTypes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountFilteredFields$accountSubTypes(
      key: fromJson$Enum$AccountSubType((l$key as String)),
      value: (l$value as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$AccountSubType key;

  final bool value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = toJson$Enum$AccountSubType(l$key);
    final l$value = value;
    _resultData['value'] = l$value;
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
    if (other is! Fragment$AccountFilteredFields$accountSubTypes ||
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

extension UtilityExtension$Fragment$AccountFilteredFields$accountSubTypes
    on Fragment$AccountFilteredFields$accountSubTypes {
  CopyWith$Fragment$AccountFilteredFields$accountSubTypes<
    Fragment$AccountFilteredFields$accountSubTypes
  >
  get copyWith =>
      CopyWith$Fragment$AccountFilteredFields$accountSubTypes(this, (i) => i);
}

abstract class CopyWith$Fragment$AccountFilteredFields$accountSubTypes<TRes> {
  factory CopyWith$Fragment$AccountFilteredFields$accountSubTypes(
    Fragment$AccountFilteredFields$accountSubTypes instance,
    TRes Function(Fragment$AccountFilteredFields$accountSubTypes) then,
  ) = _CopyWithImpl$Fragment$AccountFilteredFields$accountSubTypes;

  factory CopyWith$Fragment$AccountFilteredFields$accountSubTypes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$AccountFilteredFields$accountSubTypes;

  TRes call({Enum$AccountSubType? key, bool? value, String? $__typename});
}

class _CopyWithImpl$Fragment$AccountFilteredFields$accountSubTypes<TRes>
    implements CopyWith$Fragment$AccountFilteredFields$accountSubTypes<TRes> {
  _CopyWithImpl$Fragment$AccountFilteredFields$accountSubTypes(
    this._instance,
    this._then,
  );

  final Fragment$AccountFilteredFields$accountSubTypes _instance;

  final TRes Function(Fragment$AccountFilteredFields$accountSubTypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountFilteredFields$accountSubTypes(
      key: key == _undefined || key == null
          ? _instance.key
          : (key as Enum$AccountSubType),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AccountFilteredFields$accountSubTypes<TRes>
    implements CopyWith$Fragment$AccountFilteredFields$accountSubTypes<TRes> {
  _CopyWithStubImpl$Fragment$AccountFilteredFields$accountSubTypes(this._res);

  TRes _res;

  call({Enum$AccountSubType? key, bool? value, String? $__typename}) => _res;
}

class Fragment$AccountFilteredFields$productEWCCodes {
  Fragment$AccountFilteredFields$productEWCCodes({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndString',
  });

  factory Fragment$AccountFilteredFields$productEWCCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountFilteredFields$productEWCCodes(
      key: (l$key as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$value = value;
    _resultData['value'] = l$value;
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
    if (other is! Fragment$AccountFilteredFields$productEWCCodes ||
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

extension UtilityExtension$Fragment$AccountFilteredFields$productEWCCodes
    on Fragment$AccountFilteredFields$productEWCCodes {
  CopyWith$Fragment$AccountFilteredFields$productEWCCodes<
    Fragment$AccountFilteredFields$productEWCCodes
  >
  get copyWith =>
      CopyWith$Fragment$AccountFilteredFields$productEWCCodes(this, (i) => i);
}

abstract class CopyWith$Fragment$AccountFilteredFields$productEWCCodes<TRes> {
  factory CopyWith$Fragment$AccountFilteredFields$productEWCCodes(
    Fragment$AccountFilteredFields$productEWCCodes instance,
    TRes Function(Fragment$AccountFilteredFields$productEWCCodes) then,
  ) = _CopyWithImpl$Fragment$AccountFilteredFields$productEWCCodes;

  factory CopyWith$Fragment$AccountFilteredFields$productEWCCodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$AccountFilteredFields$productEWCCodes;

  TRes call({String? key, String? value, String? $__typename});
}

class _CopyWithImpl$Fragment$AccountFilteredFields$productEWCCodes<TRes>
    implements CopyWith$Fragment$AccountFilteredFields$productEWCCodes<TRes> {
  _CopyWithImpl$Fragment$AccountFilteredFields$productEWCCodes(
    this._instance,
    this._then,
  );

  final Fragment$AccountFilteredFields$productEWCCodes _instance;

  final TRes Function(Fragment$AccountFilteredFields$productEWCCodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountFilteredFields$productEWCCodes(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AccountFilteredFields$productEWCCodes<TRes>
    implements CopyWith$Fragment$AccountFilteredFields$productEWCCodes<TRes> {
  _CopyWithStubImpl$Fragment$AccountFilteredFields$productEWCCodes(this._res);

  TRes _res;

  call({String? key, String? value, String? $__typename}) => _res;
}

class Fragment$AccountFilteredFields$accountAddresses {
  Fragment$AccountFilteredFields$accountAddresses({
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

  factory Fragment$AccountFilteredFields$accountAddresses.fromJson(
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
    final l$$__typename = json['__typename'];
    return Fragment$AccountFilteredFields$accountAddresses(
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
    if (other is! Fragment$AccountFilteredFields$accountAddresses ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$AccountFilteredFields$accountAddresses
    on Fragment$AccountFilteredFields$accountAddresses {
  CopyWith$Fragment$AccountFilteredFields$accountAddresses<
    Fragment$AccountFilteredFields$accountAddresses
  >
  get copyWith =>
      CopyWith$Fragment$AccountFilteredFields$accountAddresses(this, (i) => i);
}

abstract class CopyWith$Fragment$AccountFilteredFields$accountAddresses<TRes> {
  factory CopyWith$Fragment$AccountFilteredFields$accountAddresses(
    Fragment$AccountFilteredFields$accountAddresses instance,
    TRes Function(Fragment$AccountFilteredFields$accountAddresses) then,
  ) = _CopyWithImpl$Fragment$AccountFilteredFields$accountAddresses;

  factory CopyWith$Fragment$AccountFilteredFields$accountAddresses.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$AccountFilteredFields$accountAddresses;

  TRes call({
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

class _CopyWithImpl$Fragment$AccountFilteredFields$accountAddresses<TRes>
    implements CopyWith$Fragment$AccountFilteredFields$accountAddresses<TRes> {
  _CopyWithImpl$Fragment$AccountFilteredFields$accountAddresses(
    this._instance,
    this._then,
  );

  final Fragment$AccountFilteredFields$accountAddresses _instance;

  final TRes Function(Fragment$AccountFilteredFields$accountAddresses) _then;

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
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountFilteredFields$accountAddresses(
      address1: address1 == _undefined
          ? _instance.address1
          : (address1 as String?),
      address2: address2 == _undefined
          ? _instance.address2
          : (address2 as String?),
      address3: address3 == _undefined
          ? _instance.address3
          : (address3 as String?),
      address4: address4 == _undefined
          ? _instance.address4
          : (address4 as String?),
      address5: address5 == _undefined
          ? _instance.address5
          : (address5 as String?),
      address6: address6 == _undefined
          ? _instance.address6
          : (address6 as String?),
      postCode: postCode == _undefined
          ? _instance.postCode
          : (postCode as String?),
      countryCode: countryCode == _undefined
          ? _instance.countryCode
          : (countryCode as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$AccountFilteredFields$accountAddresses<TRes>
    implements CopyWith$Fragment$AccountFilteredFields$accountAddresses<TRes> {
  _CopyWithStubImpl$Fragment$AccountFilteredFields$accountAddresses(this._res);

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
    String? $__typename,
  }) => _res;
}

class Fragment$AccountFilteredFields$addresses {
  Fragment$AccountFilteredFields$addresses({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfGuidAndAddress',
  });

  factory Fragment$AccountFilteredFields$addresses.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountFilteredFields$addresses(
      key: (l$key as String),
      value: Fragment$AccountFilteredFields$addresses$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Fragment$AccountFilteredFields$addresses$value value;

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
    if (other is! Fragment$AccountFilteredFields$addresses ||
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

extension UtilityExtension$Fragment$AccountFilteredFields$addresses
    on Fragment$AccountFilteredFields$addresses {
  CopyWith$Fragment$AccountFilteredFields$addresses<
    Fragment$AccountFilteredFields$addresses
  >
  get copyWith =>
      CopyWith$Fragment$AccountFilteredFields$addresses(this, (i) => i);
}

abstract class CopyWith$Fragment$AccountFilteredFields$addresses<TRes> {
  factory CopyWith$Fragment$AccountFilteredFields$addresses(
    Fragment$AccountFilteredFields$addresses instance,
    TRes Function(Fragment$AccountFilteredFields$addresses) then,
  ) = _CopyWithImpl$Fragment$AccountFilteredFields$addresses;

  factory CopyWith$Fragment$AccountFilteredFields$addresses.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AccountFilteredFields$addresses;

  TRes call({
    String? key,
    Fragment$AccountFilteredFields$addresses$value? value,
    String? $__typename,
  });
  CopyWith$Fragment$AccountFilteredFields$addresses$value<TRes> get value;
}

class _CopyWithImpl$Fragment$AccountFilteredFields$addresses<TRes>
    implements CopyWith$Fragment$AccountFilteredFields$addresses<TRes> {
  _CopyWithImpl$Fragment$AccountFilteredFields$addresses(
    this._instance,
    this._then,
  );

  final Fragment$AccountFilteredFields$addresses _instance;

  final TRes Function(Fragment$AccountFilteredFields$addresses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountFilteredFields$addresses(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Fragment$AccountFilteredFields$addresses$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$AccountFilteredFields$addresses$value<TRes> get value {
    final local$value = _instance.value;
    return CopyWith$Fragment$AccountFilteredFields$addresses$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$AccountFilteredFields$addresses<TRes>
    implements CopyWith$Fragment$AccountFilteredFields$addresses<TRes> {
  _CopyWithStubImpl$Fragment$AccountFilteredFields$addresses(this._res);

  TRes _res;

  call({
    String? key,
    Fragment$AccountFilteredFields$addresses$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$AccountFilteredFields$addresses$value<TRes> get value =>
      CopyWith$Fragment$AccountFilteredFields$addresses$value.stub(_res);
}

class Fragment$AccountFilteredFields$addresses$value {
  Fragment$AccountFilteredFields$addresses$value({
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

  factory Fragment$AccountFilteredFields$addresses$value.fromJson(
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
    return Fragment$AccountFilteredFields$addresses$value(
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
          : Fragment$AccountFilteredFields$addresses$value$geoLocation.fromJson(
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

  final Fragment$AccountFilteredFields$addresses$value$geoLocation? geoLocation;

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
    if (other is! Fragment$AccountFilteredFields$addresses$value ||
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

extension UtilityExtension$Fragment$AccountFilteredFields$addresses$value
    on Fragment$AccountFilteredFields$addresses$value {
  CopyWith$Fragment$AccountFilteredFields$addresses$value<
    Fragment$AccountFilteredFields$addresses$value
  >
  get copyWith =>
      CopyWith$Fragment$AccountFilteredFields$addresses$value(this, (i) => i);
}

abstract class CopyWith$Fragment$AccountFilteredFields$addresses$value<TRes> {
  factory CopyWith$Fragment$AccountFilteredFields$addresses$value(
    Fragment$AccountFilteredFields$addresses$value instance,
    TRes Function(Fragment$AccountFilteredFields$addresses$value) then,
  ) = _CopyWithImpl$Fragment$AccountFilteredFields$addresses$value;

  factory CopyWith$Fragment$AccountFilteredFields$addresses$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$AccountFilteredFields$addresses$value;

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
    Fragment$AccountFilteredFields$addresses$value$geoLocation? geoLocation,
    String? $__typename,
  });
  CopyWith$Fragment$AccountFilteredFields$addresses$value$geoLocation<TRes>
  get geoLocation;
}

class _CopyWithImpl$Fragment$AccountFilteredFields$addresses$value<TRes>
    implements CopyWith$Fragment$AccountFilteredFields$addresses$value<TRes> {
  _CopyWithImpl$Fragment$AccountFilteredFields$addresses$value(
    this._instance,
    this._then,
  );

  final Fragment$AccountFilteredFields$addresses$value _instance;

  final TRes Function(Fragment$AccountFilteredFields$addresses$value) _then;

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
    Fragment$AccountFilteredFields$addresses$value(
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
                as Fragment$AccountFilteredFields$addresses$value$geoLocation?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$AccountFilteredFields$addresses$value$geoLocation<TRes>
  get geoLocation {
    final local$geoLocation = _instance.geoLocation;
    return local$geoLocation == null
        ? CopyWith$Fragment$AccountFilteredFields$addresses$value$geoLocation.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$AccountFilteredFields$addresses$value$geoLocation(
            local$geoLocation,
            (e) => call(geoLocation: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$AccountFilteredFields$addresses$value<TRes>
    implements CopyWith$Fragment$AccountFilteredFields$addresses$value<TRes> {
  _CopyWithStubImpl$Fragment$AccountFilteredFields$addresses$value(this._res);

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
    Fragment$AccountFilteredFields$addresses$value$geoLocation? geoLocation,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$AccountFilteredFields$addresses$value$geoLocation<TRes>
  get geoLocation =>
      CopyWith$Fragment$AccountFilteredFields$addresses$value$geoLocation.stub(
        _res,
      );
}

class Fragment$AccountFilteredFields$addresses$value$geoLocation {
  Fragment$AccountFilteredFields$addresses$value$geoLocation({
    required this.latitude,
    required this.longitude,
    this.$__typename = 'LatLong',
  });

  factory Fragment$AccountFilteredFields$addresses$value$geoLocation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$latitude = json['latitude'];
    final l$longitude = json['longitude'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountFilteredFields$addresses$value$geoLocation(
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
    if (other is! Fragment$AccountFilteredFields$addresses$value$geoLocation ||
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

extension UtilityExtension$Fragment$AccountFilteredFields$addresses$value$geoLocation
    on Fragment$AccountFilteredFields$addresses$value$geoLocation {
  CopyWith$Fragment$AccountFilteredFields$addresses$value$geoLocation<
    Fragment$AccountFilteredFields$addresses$value$geoLocation
  >
  get copyWith =>
      CopyWith$Fragment$AccountFilteredFields$addresses$value$geoLocation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$AccountFilteredFields$addresses$value$geoLocation<
  TRes
> {
  factory CopyWith$Fragment$AccountFilteredFields$addresses$value$geoLocation(
    Fragment$AccountFilteredFields$addresses$value$geoLocation instance,
    TRes Function(Fragment$AccountFilteredFields$addresses$value$geoLocation)
    then,
  ) = _CopyWithImpl$Fragment$AccountFilteredFields$addresses$value$geoLocation;

  factory CopyWith$Fragment$AccountFilteredFields$addresses$value$geoLocation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$AccountFilteredFields$addresses$value$geoLocation;

  TRes call({double? latitude, double? longitude, String? $__typename});
}

class _CopyWithImpl$Fragment$AccountFilteredFields$addresses$value$geoLocation<
  TRes
>
    implements
        CopyWith$Fragment$AccountFilteredFields$addresses$value$geoLocation<
          TRes
        > {
  _CopyWithImpl$Fragment$AccountFilteredFields$addresses$value$geoLocation(
    this._instance,
    this._then,
  );

  final Fragment$AccountFilteredFields$addresses$value$geoLocation _instance;

  final TRes Function(
    Fragment$AccountFilteredFields$addresses$value$geoLocation,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latitude = _undefined,
    Object? longitude = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountFilteredFields$addresses$value$geoLocation(
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

class _CopyWithStubImpl$Fragment$AccountFilteredFields$addresses$value$geoLocation<
  TRes
>
    implements
        CopyWith$Fragment$AccountFilteredFields$addresses$value$geoLocation<
          TRes
        > {
  _CopyWithStubImpl$Fragment$AccountFilteredFields$addresses$value$geoLocation(
    this._res,
  );

  TRes _res;

  call({double? latitude, double? longitude, String? $__typename}) => _res;
}

class Fragment$AccountFilteredFields$locations {
  Fragment$AccountFilteredFields$locations({
    required this.code,
    required this.name,
    required this.addressKey,
    this.$__typename = 'Location',
  });

  factory Fragment$AccountFilteredFields$locations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$code = json['code'];
    final l$name = json['name'];
    final l$addressKey = json['addressKey'];
    final l$$__typename = json['__typename'];
    return Fragment$AccountFilteredFields$locations(
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
    if (other is! Fragment$AccountFilteredFields$locations ||
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

extension UtilityExtension$Fragment$AccountFilteredFields$locations
    on Fragment$AccountFilteredFields$locations {
  CopyWith$Fragment$AccountFilteredFields$locations<
    Fragment$AccountFilteredFields$locations
  >
  get copyWith =>
      CopyWith$Fragment$AccountFilteredFields$locations(this, (i) => i);
}

abstract class CopyWith$Fragment$AccountFilteredFields$locations<TRes> {
  factory CopyWith$Fragment$AccountFilteredFields$locations(
    Fragment$AccountFilteredFields$locations instance,
    TRes Function(Fragment$AccountFilteredFields$locations) then,
  ) = _CopyWithImpl$Fragment$AccountFilteredFields$locations;

  factory CopyWith$Fragment$AccountFilteredFields$locations.stub(TRes res) =
      _CopyWithStubImpl$Fragment$AccountFilteredFields$locations;

  TRes call({
    String? code,
    String? name,
    String? addressKey,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$AccountFilteredFields$locations<TRes>
    implements CopyWith$Fragment$AccountFilteredFields$locations<TRes> {
  _CopyWithImpl$Fragment$AccountFilteredFields$locations(
    this._instance,
    this._then,
  );

  final Fragment$AccountFilteredFields$locations _instance;

  final TRes Function(Fragment$AccountFilteredFields$locations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? name = _undefined,
    Object? addressKey = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$AccountFilteredFields$locations(
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

class _CopyWithStubImpl$Fragment$AccountFilteredFields$locations<TRes>
    implements CopyWith$Fragment$AccountFilteredFields$locations<TRes> {
  _CopyWithStubImpl$Fragment$AccountFilteredFields$locations(this._res);

  TRes _res;

  call({String? code, String? name, String? addressKey, String? $__typename}) =>
      _res;
}
