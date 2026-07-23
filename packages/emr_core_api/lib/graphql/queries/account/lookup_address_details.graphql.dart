import 'package:gql/ast.dart';

class Variables$Query$GetAddressDetails {
  factory Variables$Query$GetAddressDetails({required String addressId}) =>
      Variables$Query$GetAddressDetails._({r'addressId': addressId});

  Variables$Query$GetAddressDetails._(this._$data);

  factory Variables$Query$GetAddressDetails.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$addressId = data['addressId'];
    result$data['addressId'] = (l$addressId as String);
    return Variables$Query$GetAddressDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  String get addressId => (_$data['addressId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$addressId = addressId;
    result$data['addressId'] = l$addressId;
    return result$data;
  }

  CopyWith$Variables$Query$GetAddressDetails<Variables$Query$GetAddressDetails>
  get copyWith => CopyWith$Variables$Query$GetAddressDetails(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAddressDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addressId = addressId;
    final lOther$addressId = other.addressId;
    if (l$addressId != lOther$addressId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$addressId = addressId;
    return Object.hashAll([l$addressId]);
  }
}

abstract class CopyWith$Variables$Query$GetAddressDetails<TRes> {
  factory CopyWith$Variables$Query$GetAddressDetails(
    Variables$Query$GetAddressDetails instance,
    TRes Function(Variables$Query$GetAddressDetails) then,
  ) = _CopyWithImpl$Variables$Query$GetAddressDetails;

  factory CopyWith$Variables$Query$GetAddressDetails.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAddressDetails;

  TRes call({String? addressId});
}

class _CopyWithImpl$Variables$Query$GetAddressDetails<TRes>
    implements CopyWith$Variables$Query$GetAddressDetails<TRes> {
  _CopyWithImpl$Variables$Query$GetAddressDetails(this._instance, this._then);

  final Variables$Query$GetAddressDetails _instance;

  final TRes Function(Variables$Query$GetAddressDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? addressId = _undefined}) => _then(
    Variables$Query$GetAddressDetails._({
      ..._instance._$data,
      if (addressId != _undefined && addressId != null)
        'addressId': (addressId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetAddressDetails<TRes>
    implements CopyWith$Variables$Query$GetAddressDetails<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAddressDetails(this._res);

  TRes _res;

  call({String? addressId}) => _res;
}

class Query$GetAddressDetails {
  Query$GetAddressDetails({
    required this.lookupAddressDetails,
    this.$__typename = 'Query',
  });

  factory Query$GetAddressDetails.fromJson(Map<String, dynamic> json) {
    final l$lookupAddressDetails = json['lookupAddressDetails'];
    final l$$__typename = json['__typename'];
    return Query$GetAddressDetails(
      lookupAddressDetails:
          Query$GetAddressDetails$lookupAddressDetails.fromJson(
            (l$lookupAddressDetails as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAddressDetails$lookupAddressDetails lookupAddressDetails;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lookupAddressDetails = lookupAddressDetails;
    _resultData['lookupAddressDetails'] = l$lookupAddressDetails.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lookupAddressDetails = lookupAddressDetails;
    final l$$__typename = $__typename;
    return Object.hashAll([l$lookupAddressDetails, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAddressDetails || runtimeType != other.runtimeType) {
      return false;
    }
    final l$lookupAddressDetails = lookupAddressDetails;
    final lOther$lookupAddressDetails = other.lookupAddressDetails;
    if (l$lookupAddressDetails != lOther$lookupAddressDetails) {
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

extension UtilityExtension$Query$GetAddressDetails on Query$GetAddressDetails {
  CopyWith$Query$GetAddressDetails<Query$GetAddressDetails> get copyWith =>
      CopyWith$Query$GetAddressDetails(this, (i) => i);
}

abstract class CopyWith$Query$GetAddressDetails<TRes> {
  factory CopyWith$Query$GetAddressDetails(
    Query$GetAddressDetails instance,
    TRes Function(Query$GetAddressDetails) then,
  ) = _CopyWithImpl$Query$GetAddressDetails;

  factory CopyWith$Query$GetAddressDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAddressDetails;

  TRes call({
    Query$GetAddressDetails$lookupAddressDetails? lookupAddressDetails,
    String? $__typename,
  });
  CopyWith$Query$GetAddressDetails$lookupAddressDetails<TRes>
  get lookupAddressDetails;
}

class _CopyWithImpl$Query$GetAddressDetails<TRes>
    implements CopyWith$Query$GetAddressDetails<TRes> {
  _CopyWithImpl$Query$GetAddressDetails(this._instance, this._then);

  final Query$GetAddressDetails _instance;

  final TRes Function(Query$GetAddressDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lookupAddressDetails = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAddressDetails(
      lookupAddressDetails:
          lookupAddressDetails == _undefined || lookupAddressDetails == null
          ? _instance.lookupAddressDetails
          : (lookupAddressDetails
                as Query$GetAddressDetails$lookupAddressDetails),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAddressDetails$lookupAddressDetails<TRes>
  get lookupAddressDetails {
    final local$lookupAddressDetails = _instance.lookupAddressDetails;
    return CopyWith$Query$GetAddressDetails$lookupAddressDetails(
      local$lookupAddressDetails,
      (e) => call(lookupAddressDetails: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAddressDetails<TRes>
    implements CopyWith$Query$GetAddressDetails<TRes> {
  _CopyWithStubImpl$Query$GetAddressDetails(this._res);

  TRes _res;

  call({
    Query$GetAddressDetails$lookupAddressDetails? lookupAddressDetails,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAddressDetails$lookupAddressDetails<TRes>
  get lookupAddressDetails =>
      CopyWith$Query$GetAddressDetails$lookupAddressDetails.stub(_res);
}

const documentNodeQueryGetAddressDetails = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAddressDetails'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'addressId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'lookupAddressDetails'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'addressId'),
                value: VariableNode(name: NameNode(value: 'addressId')),
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
  ],
);

class Query$GetAddressDetails$lookupAddressDetails {
  Query$GetAddressDetails$lookupAddressDetails({
    this.address1,
    this.address2,
    this.address3,
    this.address4,
    this.address5,
    this.address6,
    this.latitude,
    this.longitude,
    this.postCode,
    this.$__typename = 'AddressLookupOutput',
  });

  factory Query$GetAddressDetails$lookupAddressDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$address3 = json['address3'];
    final l$address4 = json['address4'];
    final l$address5 = json['address5'];
    final l$address6 = json['address6'];
    final l$latitude = json['latitude'];
    final l$longitude = json['longitude'];
    final l$postCode = json['postCode'];
    final l$$__typename = json['__typename'];
    return Query$GetAddressDetails$lookupAddressDetails(
      address1: (l$address1 as String?),
      address2: (l$address2 as String?),
      address3: (l$address3 as String?),
      address4: (l$address4 as String?),
      address5: (l$address5 as String?),
      address6: (l$address6 as String?),
      latitude: (l$latitude as num?)?.toDouble(),
      longitude: (l$longitude as num?)?.toDouble(),
      postCode: (l$postCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? address1;

  final String? address2;

  final String? address3;

  final String? address4;

  final String? address5;

  final String? address6;

  final double? latitude;

  final double? longitude;

  final String? postCode;

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
    final l$latitude = latitude;
    _resultData['latitude'] = l$latitude;
    final l$longitude = longitude;
    _resultData['longitude'] = l$longitude;
    final l$postCode = postCode;
    _resultData['postCode'] = l$postCode;
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
    final l$latitude = latitude;
    final l$longitude = longitude;
    final l$postCode = postCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address1,
      l$address2,
      l$address3,
      l$address4,
      l$address5,
      l$address6,
      l$latitude,
      l$longitude,
      l$postCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAddressDetails$lookupAddressDetails ||
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

extension UtilityExtension$Query$GetAddressDetails$lookupAddressDetails
    on Query$GetAddressDetails$lookupAddressDetails {
  CopyWith$Query$GetAddressDetails$lookupAddressDetails<
    Query$GetAddressDetails$lookupAddressDetails
  >
  get copyWith =>
      CopyWith$Query$GetAddressDetails$lookupAddressDetails(this, (i) => i);
}

abstract class CopyWith$Query$GetAddressDetails$lookupAddressDetails<TRes> {
  factory CopyWith$Query$GetAddressDetails$lookupAddressDetails(
    Query$GetAddressDetails$lookupAddressDetails instance,
    TRes Function(Query$GetAddressDetails$lookupAddressDetails) then,
  ) = _CopyWithImpl$Query$GetAddressDetails$lookupAddressDetails;

  factory CopyWith$Query$GetAddressDetails$lookupAddressDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAddressDetails$lookupAddressDetails;

  TRes call({
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    double? latitude,
    double? longitude,
    String? postCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAddressDetails$lookupAddressDetails<TRes>
    implements CopyWith$Query$GetAddressDetails$lookupAddressDetails<TRes> {
  _CopyWithImpl$Query$GetAddressDetails$lookupAddressDetails(
    this._instance,
    this._then,
  );

  final Query$GetAddressDetails$lookupAddressDetails _instance;

  final TRes Function(Query$GetAddressDetails$lookupAddressDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? address3 = _undefined,
    Object? address4 = _undefined,
    Object? address5 = _undefined,
    Object? address6 = _undefined,
    Object? latitude = _undefined,
    Object? longitude = _undefined,
    Object? postCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAddressDetails$lookupAddressDetails(
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
      latitude: latitude == _undefined
          ? _instance.latitude
          : (latitude as double?),
      longitude: longitude == _undefined
          ? _instance.longitude
          : (longitude as double?),
      postCode: postCode == _undefined
          ? _instance.postCode
          : (postCode as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAddressDetails$lookupAddressDetails<TRes>
    implements CopyWith$Query$GetAddressDetails$lookupAddressDetails<TRes> {
  _CopyWithStubImpl$Query$GetAddressDetails$lookupAddressDetails(this._res);

  TRes _res;

  call({
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    double? latitude,
    double? longitude,
    String? postCode,
    String? $__typename,
  }) => _res;
}
