import 'account_details_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Fragment$TicketAccountFields {
  Fragment$TicketAccountFields({
    this.details,
    required this.accountId,
    required this.accountNumber,
    required this.name,
    this.locationId,
    this.locationName,
    required this.address,
    this.sicCode,
    this.$__typename = 'TicketAccount',
  });

  factory Fragment$TicketAccountFields.fromJson(Map<String, dynamic> json) {
    final l$details = json['details'];
    final l$accountId = json['accountId'];
    final l$accountNumber = json['accountNumber'];
    final l$name = json['name'];
    final l$locationId = json['locationId'];
    final l$locationName = json['locationName'];
    final l$address = json['address'];
    final l$sicCode = json['sicCode'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketAccountFields(
      details: l$details == null
          ? null
          : Fragment$AccountDetails.fromJson(
              (l$details as Map<String, dynamic>),
            ),
      accountId: (l$accountId as String),
      accountNumber: (l$accountNumber as String),
      name: (l$name as String),
      locationId: (l$locationId as String?),
      locationName: (l$locationName as String?),
      address: Fragment$TicketAccountFields$address.fromJson(
        (l$address as Map<String, dynamic>),
      ),
      sicCode: (l$sicCode as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$AccountDetails? details;

  final String accountId;

  final String accountNumber;

  final String name;

  final String? locationId;

  final String? locationName;

  final Fragment$TicketAccountFields$address address;

  final int? sicCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$details = details;
    _resultData['details'] = l$details?.toJson();
    final l$accountId = accountId;
    _resultData['accountId'] = l$accountId;
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$locationId = locationId;
    _resultData['locationId'] = l$locationId;
    final l$locationName = locationName;
    _resultData['locationName'] = l$locationName;
    final l$address = address;
    _resultData['address'] = l$address.toJson();
    final l$sicCode = sicCode;
    _resultData['sicCode'] = l$sicCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$details = details;
    final l$accountId = accountId;
    final l$accountNumber = accountNumber;
    final l$name = name;
    final l$locationId = locationId;
    final l$locationName = locationName;
    final l$address = address;
    final l$sicCode = sicCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$details,
      l$accountId,
      l$accountNumber,
      l$name,
      l$locationId,
      l$locationName,
      l$address,
      l$sicCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketAccountFields ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (l$details != lOther$details) {
      return false;
    }
    final l$accountId = accountId;
    final lOther$accountId = other.accountId;
    if (l$accountId != lOther$accountId) {
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
    final l$locationId = locationId;
    final lOther$locationId = other.locationId;
    if (l$locationId != lOther$locationId) {
      return false;
    }
    final l$locationName = locationName;
    final lOther$locationName = other.locationName;
    if (l$locationName != lOther$locationName) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$sicCode = sicCode;
    final lOther$sicCode = other.sicCode;
    if (l$sicCode != lOther$sicCode) {
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

extension UtilityExtension$Fragment$TicketAccountFields
    on Fragment$TicketAccountFields {
  CopyWith$Fragment$TicketAccountFields<Fragment$TicketAccountFields>
  get copyWith => CopyWith$Fragment$TicketAccountFields(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketAccountFields<TRes> {
  factory CopyWith$Fragment$TicketAccountFields(
    Fragment$TicketAccountFields instance,
    TRes Function(Fragment$TicketAccountFields) then,
  ) = _CopyWithImpl$Fragment$TicketAccountFields;

  factory CopyWith$Fragment$TicketAccountFields.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketAccountFields;

  TRes call({
    Fragment$AccountDetails? details,
    String? accountId,
    String? accountNumber,
    String? name,
    String? locationId,
    String? locationName,
    Fragment$TicketAccountFields$address? address,
    int? sicCode,
    String? $__typename,
  });
  CopyWith$Fragment$AccountDetails<TRes> get details;
  CopyWith$Fragment$TicketAccountFields$address<TRes> get address;
}

class _CopyWithImpl$Fragment$TicketAccountFields<TRes>
    implements CopyWith$Fragment$TicketAccountFields<TRes> {
  _CopyWithImpl$Fragment$TicketAccountFields(this._instance, this._then);

  final Fragment$TicketAccountFields _instance;

  final TRes Function(Fragment$TicketAccountFields) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? details = _undefined,
    Object? accountId = _undefined,
    Object? accountNumber = _undefined,
    Object? name = _undefined,
    Object? locationId = _undefined,
    Object? locationName = _undefined,
    Object? address = _undefined,
    Object? sicCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketAccountFields(
      details: details == _undefined
          ? _instance.details
          : (details as Fragment$AccountDetails?),
      accountId: accountId == _undefined || accountId == null
          ? _instance.accountId
          : (accountId as String),
      accountNumber: accountNumber == _undefined || accountNumber == null
          ? _instance.accountNumber
          : (accountNumber as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      locationId: locationId == _undefined
          ? _instance.locationId
          : (locationId as String?),
      locationName: locationName == _undefined
          ? _instance.locationName
          : (locationName as String?),
      address: address == _undefined || address == null
          ? _instance.address
          : (address as Fragment$TicketAccountFields$address),
      sicCode: sicCode == _undefined ? _instance.sicCode : (sicCode as int?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$AccountDetails<TRes> get details {
    final local$details = _instance.details;
    return local$details == null
        ? CopyWith$Fragment$AccountDetails.stub(_then(_instance))
        : CopyWith$Fragment$AccountDetails(
            local$details,
            (e) => call(details: e),
          );
  }

  CopyWith$Fragment$TicketAccountFields$address<TRes> get address {
    final local$address = _instance.address;
    return CopyWith$Fragment$TicketAccountFields$address(
      local$address,
      (e) => call(address: e),
    );
  }
}

class _CopyWithStubImpl$Fragment$TicketAccountFields<TRes>
    implements CopyWith$Fragment$TicketAccountFields<TRes> {
  _CopyWithStubImpl$Fragment$TicketAccountFields(this._res);

  TRes _res;

  call({
    Fragment$AccountDetails? details,
    String? accountId,
    String? accountNumber,
    String? name,
    String? locationId,
    String? locationName,
    Fragment$TicketAccountFields$address? address,
    int? sicCode,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$AccountDetails<TRes> get details =>
      CopyWith$Fragment$AccountDetails.stub(_res);

  CopyWith$Fragment$TicketAccountFields$address<TRes> get address =>
      CopyWith$Fragment$TicketAccountFields$address.stub(_res);
}

const fragmentDefinitionTicketAccountFields = FragmentDefinitionNode(
  name: NameNode(value: 'TicketAccountFields'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'TicketAccount'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'details'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(
          selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'AccountDetails'),
              directives: [],
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
        name: NameNode(value: 'accountId'),
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
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'locationId'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'locationName'),
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
              name: NameNode(value: 'what3Words'),
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
              name: NameNode(value: 'geoLocation'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(
                selections: [
                  FieldNode(
                    name: NameNode(value: 'longitude'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'latitude'),
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
        name: NameNode(value: 'sicCode'),
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
const documentNodeFragmentTicketAccountFields = DocumentNode(
  definitions: [
    fragmentDefinitionTicketAccountFields,
    fragmentDefinitionAccountDetails,
  ],
);

class Fragment$TicketAccountFields$address {
  Fragment$TicketAccountFields$address({
    required this.address1,
    required this.address2,
    required this.address3,
    required this.address4,
    required this.address5,
    required this.address6,
    required this.postCode,
    required this.what3Words,
    required this.countryCode,
    this.geoLocation,
    this.$__typename = 'Address',
  });

  factory Fragment$TicketAccountFields$address.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$address3 = json['address3'];
    final l$address4 = json['address4'];
    final l$address5 = json['address5'];
    final l$address6 = json['address6'];
    final l$postCode = json['postCode'];
    final l$what3Words = json['what3Words'];
    final l$countryCode = json['countryCode'];
    final l$geoLocation = json['geoLocation'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketAccountFields$address(
      address1: (l$address1 as String),
      address2: (l$address2 as String),
      address3: (l$address3 as String),
      address4: (l$address4 as String),
      address5: (l$address5 as String),
      address6: (l$address6 as String),
      postCode: (l$postCode as String),
      what3Words: (l$what3Words as String),
      countryCode: (l$countryCode as String),
      geoLocation: l$geoLocation == null
          ? null
          : Fragment$TicketAccountFields$address$geoLocation.fromJson(
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

  final String what3Words;

  final String countryCode;

  final Fragment$TicketAccountFields$address$geoLocation? geoLocation;

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
    final l$what3Words = what3Words;
    _resultData['what3Words'] = l$what3Words;
    final l$countryCode = countryCode;
    _resultData['countryCode'] = l$countryCode;
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
    final l$what3Words = what3Words;
    final l$countryCode = countryCode;
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
      l$what3Words,
      l$countryCode,
      l$geoLocation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketAccountFields$address ||
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
    final l$what3Words = what3Words;
    final lOther$what3Words = other.what3Words;
    if (l$what3Words != lOther$what3Words) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
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

extension UtilityExtension$Fragment$TicketAccountFields$address
    on Fragment$TicketAccountFields$address {
  CopyWith$Fragment$TicketAccountFields$address<
    Fragment$TicketAccountFields$address
  >
  get copyWith => CopyWith$Fragment$TicketAccountFields$address(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketAccountFields$address<TRes> {
  factory CopyWith$Fragment$TicketAccountFields$address(
    Fragment$TicketAccountFields$address instance,
    TRes Function(Fragment$TicketAccountFields$address) then,
  ) = _CopyWithImpl$Fragment$TicketAccountFields$address;

  factory CopyWith$Fragment$TicketAccountFields$address.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TicketAccountFields$address;

  TRes call({
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? what3Words,
    String? countryCode,
    Fragment$TicketAccountFields$address$geoLocation? geoLocation,
    String? $__typename,
  });
  CopyWith$Fragment$TicketAccountFields$address$geoLocation<TRes>
  get geoLocation;
}

class _CopyWithImpl$Fragment$TicketAccountFields$address<TRes>
    implements CopyWith$Fragment$TicketAccountFields$address<TRes> {
  _CopyWithImpl$Fragment$TicketAccountFields$address(
    this._instance,
    this._then,
  );

  final Fragment$TicketAccountFields$address _instance;

  final TRes Function(Fragment$TicketAccountFields$address) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? address3 = _undefined,
    Object? address4 = _undefined,
    Object? address5 = _undefined,
    Object? address6 = _undefined,
    Object? postCode = _undefined,
    Object? what3Words = _undefined,
    Object? countryCode = _undefined,
    Object? geoLocation = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketAccountFields$address(
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
      what3Words: what3Words == _undefined || what3Words == null
          ? _instance.what3Words
          : (what3Words as String),
      countryCode: countryCode == _undefined || countryCode == null
          ? _instance.countryCode
          : (countryCode as String),
      geoLocation: geoLocation == _undefined
          ? _instance.geoLocation
          : (geoLocation as Fragment$TicketAccountFields$address$geoLocation?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$TicketAccountFields$address$geoLocation<TRes>
  get geoLocation {
    final local$geoLocation = _instance.geoLocation;
    return local$geoLocation == null
        ? CopyWith$Fragment$TicketAccountFields$address$geoLocation.stub(
            _then(_instance),
          )
        : CopyWith$Fragment$TicketAccountFields$address$geoLocation(
            local$geoLocation,
            (e) => call(geoLocation: e),
          );
  }
}

class _CopyWithStubImpl$Fragment$TicketAccountFields$address<TRes>
    implements CopyWith$Fragment$TicketAccountFields$address<TRes> {
  _CopyWithStubImpl$Fragment$TicketAccountFields$address(this._res);

  TRes _res;

  call({
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? what3Words,
    String? countryCode,
    Fragment$TicketAccountFields$address$geoLocation? geoLocation,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$TicketAccountFields$address$geoLocation<TRes>
  get geoLocation =>
      CopyWith$Fragment$TicketAccountFields$address$geoLocation.stub(_res);
}

class Fragment$TicketAccountFields$address$geoLocation {
  Fragment$TicketAccountFields$address$geoLocation({
    required this.longitude,
    required this.latitude,
    this.$__typename = 'LatLong',
  });

  factory Fragment$TicketAccountFields$address$geoLocation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$longitude = json['longitude'];
    final l$latitude = json['latitude'];
    final l$$__typename = json['__typename'];
    return Fragment$TicketAccountFields$address$geoLocation(
      longitude: (l$longitude as num).toDouble(),
      latitude: (l$latitude as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double longitude;

  final double latitude;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$longitude = longitude;
    _resultData['longitude'] = l$longitude;
    final l$latitude = latitude;
    _resultData['latitude'] = l$latitude;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$longitude = longitude;
    final l$latitude = latitude;
    final l$$__typename = $__typename;
    return Object.hashAll([l$longitude, l$latitude, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$TicketAccountFields$address$geoLocation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$longitude = longitude;
    final lOther$longitude = other.longitude;
    if (l$longitude != lOther$longitude) {
      return false;
    }
    final l$latitude = latitude;
    final lOther$latitude = other.latitude;
    if (l$latitude != lOther$latitude) {
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

extension UtilityExtension$Fragment$TicketAccountFields$address$geoLocation
    on Fragment$TicketAccountFields$address$geoLocation {
  CopyWith$Fragment$TicketAccountFields$address$geoLocation<
    Fragment$TicketAccountFields$address$geoLocation
  >
  get copyWith =>
      CopyWith$Fragment$TicketAccountFields$address$geoLocation(this, (i) => i);
}

abstract class CopyWith$Fragment$TicketAccountFields$address$geoLocation<TRes> {
  factory CopyWith$Fragment$TicketAccountFields$address$geoLocation(
    Fragment$TicketAccountFields$address$geoLocation instance,
    TRes Function(Fragment$TicketAccountFields$address$geoLocation) then,
  ) = _CopyWithImpl$Fragment$TicketAccountFields$address$geoLocation;

  factory CopyWith$Fragment$TicketAccountFields$address$geoLocation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Fragment$TicketAccountFields$address$geoLocation;

  TRes call({double? longitude, double? latitude, String? $__typename});
}

class _CopyWithImpl$Fragment$TicketAccountFields$address$geoLocation<TRes>
    implements CopyWith$Fragment$TicketAccountFields$address$geoLocation<TRes> {
  _CopyWithImpl$Fragment$TicketAccountFields$address$geoLocation(
    this._instance,
    this._then,
  );

  final Fragment$TicketAccountFields$address$geoLocation _instance;

  final TRes Function(Fragment$TicketAccountFields$address$geoLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? longitude = _undefined,
    Object? latitude = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$TicketAccountFields$address$geoLocation(
      longitude: longitude == _undefined || longitude == null
          ? _instance.longitude
          : (longitude as double),
      latitude: latitude == _undefined || latitude == null
          ? _instance.latitude
          : (latitude as double),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$TicketAccountFields$address$geoLocation<TRes>
    implements CopyWith$Fragment$TicketAccountFields$address$geoLocation<TRes> {
  _CopyWithStubImpl$Fragment$TicketAccountFields$address$geoLocation(this._res);

  TRes _res;

  call({double? longitude, double? latitude, String? $__typename}) => _res;
}
