import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetAddresses {
  factory Variables$Query$GetAddresses({
    required Enum$CountryId countryId,
    required String searchText,
  }) => Variables$Query$GetAddresses._({
    r'countryId': countryId,
    r'searchText': searchText,
  });

  Variables$Query$GetAddresses._(this._$data);

  factory Variables$Query$GetAddresses.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$countryId = data['countryId'];
    result$data['countryId'] = fromJson$Enum$CountryId((l$countryId as String));
    final l$searchText = data['searchText'];
    result$data['searchText'] = (l$searchText as String);
    return Variables$Query$GetAddresses._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$CountryId get countryId => (_$data['countryId'] as Enum$CountryId);

  String get searchText => (_$data['searchText'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$countryId = countryId;
    result$data['countryId'] = toJson$Enum$CountryId(l$countryId);
    final l$searchText = searchText;
    result$data['searchText'] = l$searchText;
    return result$data;
  }

  CopyWith$Variables$Query$GetAddresses<Variables$Query$GetAddresses>
  get copyWith => CopyWith$Variables$Query$GetAddresses(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAddresses ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$countryId = countryId;
    final lOther$countryId = other.countryId;
    if (l$countryId != lOther$countryId) {
      return false;
    }
    final l$searchText = searchText;
    final lOther$searchText = other.searchText;
    if (l$searchText != lOther$searchText) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$countryId = countryId;
    final l$searchText = searchText;
    return Object.hashAll([l$countryId, l$searchText]);
  }
}

abstract class CopyWith$Variables$Query$GetAddresses<TRes> {
  factory CopyWith$Variables$Query$GetAddresses(
    Variables$Query$GetAddresses instance,
    TRes Function(Variables$Query$GetAddresses) then,
  ) = _CopyWithImpl$Variables$Query$GetAddresses;

  factory CopyWith$Variables$Query$GetAddresses.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAddresses;

  TRes call({Enum$CountryId? countryId, String? searchText});
}

class _CopyWithImpl$Variables$Query$GetAddresses<TRes>
    implements CopyWith$Variables$Query$GetAddresses<TRes> {
  _CopyWithImpl$Variables$Query$GetAddresses(this._instance, this._then);

  final Variables$Query$GetAddresses _instance;

  final TRes Function(Variables$Query$GetAddresses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countryId = _undefined,
    Object? searchText = _undefined,
  }) => _then(
    Variables$Query$GetAddresses._({
      ..._instance._$data,
      if (countryId != _undefined && countryId != null)
        'countryId': (countryId as Enum$CountryId),
      if (searchText != _undefined && searchText != null)
        'searchText': (searchText as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetAddresses<TRes>
    implements CopyWith$Variables$Query$GetAddresses<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAddresses(this._res);

  TRes _res;

  call({Enum$CountryId? countryId, String? searchText}) => _res;
}

class Query$GetAddresses {
  Query$GetAddresses({required this.lookupAddress, this.$__typename = 'Query'});

  factory Query$GetAddresses.fromJson(Map<String, dynamic> json) {
    final l$lookupAddress = json['lookupAddress'];
    final l$$__typename = json['__typename'];
    return Query$GetAddresses(
      lookupAddress: (l$lookupAddress as List<dynamic>)
          .map(
            (e) => Query$GetAddresses$lookupAddress.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAddresses$lookupAddress> lookupAddress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lookupAddress = lookupAddress;
    _resultData['lookupAddress'] = l$lookupAddress
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lookupAddress = lookupAddress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$lookupAddress.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAddresses || runtimeType != other.runtimeType) {
      return false;
    }
    final l$lookupAddress = lookupAddress;
    final lOther$lookupAddress = other.lookupAddress;
    if (l$lookupAddress.length != lOther$lookupAddress.length) {
      return false;
    }
    for (int i = 0; i < l$lookupAddress.length; i++) {
      final l$lookupAddress$entry = l$lookupAddress[i];
      final lOther$lookupAddress$entry = lOther$lookupAddress[i];
      if (l$lookupAddress$entry != lOther$lookupAddress$entry) {
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

extension UtilityExtension$Query$GetAddresses on Query$GetAddresses {
  CopyWith$Query$GetAddresses<Query$GetAddresses> get copyWith =>
      CopyWith$Query$GetAddresses(this, (i) => i);
}

abstract class CopyWith$Query$GetAddresses<TRes> {
  factory CopyWith$Query$GetAddresses(
    Query$GetAddresses instance,
    TRes Function(Query$GetAddresses) then,
  ) = _CopyWithImpl$Query$GetAddresses;

  factory CopyWith$Query$GetAddresses.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAddresses;

  TRes call({
    List<Query$GetAddresses$lookupAddress>? lookupAddress,
    String? $__typename,
  });
  TRes lookupAddress(
    Iterable<Query$GetAddresses$lookupAddress> Function(
      Iterable<
        CopyWith$Query$GetAddresses$lookupAddress<
          Query$GetAddresses$lookupAddress
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAddresses<TRes>
    implements CopyWith$Query$GetAddresses<TRes> {
  _CopyWithImpl$Query$GetAddresses(this._instance, this._then);

  final Query$GetAddresses _instance;

  final TRes Function(Query$GetAddresses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lookupAddress = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAddresses(
      lookupAddress: lookupAddress == _undefined || lookupAddress == null
          ? _instance.lookupAddress
          : (lookupAddress as List<Query$GetAddresses$lookupAddress>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes lookupAddress(
    Iterable<Query$GetAddresses$lookupAddress> Function(
      Iterable<
        CopyWith$Query$GetAddresses$lookupAddress<
          Query$GetAddresses$lookupAddress
        >
      >,
    )
    _fn,
  ) => call(
    lookupAddress: _fn(
      _instance.lookupAddress.map(
        (e) => CopyWith$Query$GetAddresses$lookupAddress(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetAddresses<TRes>
    implements CopyWith$Query$GetAddresses<TRes> {
  _CopyWithStubImpl$Query$GetAddresses(this._res);

  TRes _res;

  call({
    List<Query$GetAddresses$lookupAddress>? lookupAddress,
    String? $__typename,
  }) => _res;

  lookupAddress(_fn) => _res;
}

const documentNodeQueryGetAddresses = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAddresses'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'countryId')),
          type: NamedTypeNode(
            name: NameNode(value: 'CountryId'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'searchText')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'lookupAddress'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'country'),
                value: VariableNode(name: NameNode(value: 'countryId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'location'),
                value: VariableNode(name: NameNode(value: 'searchText')),
              ),
            ],
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

class Query$GetAddresses$lookupAddress {
  Query$GetAddresses$lookupAddress({
    this.id,
    this.address1,
    this.address2,
    this.address3,
    this.address4,
    this.address5,
    this.address6,
    this.postCode,
    this.$__typename = 'AddressLookupOutput',
  });

  factory Query$GetAddresses$lookupAddress.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$address3 = json['address3'];
    final l$address4 = json['address4'];
    final l$address5 = json['address5'];
    final l$address6 = json['address6'];
    final l$postCode = json['postCode'];
    final l$$__typename = json['__typename'];
    return Query$GetAddresses$lookupAddress(
      id: (l$id as String?),
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

  final String? id;

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
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$id = id;
    final l$address1 = address1;
    final l$address2 = address2;
    final l$address3 = address3;
    final l$address4 = address4;
    final l$address5 = address5;
    final l$address6 = address6;
    final l$postCode = postCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
    if (other is! Query$GetAddresses$lookupAddress ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetAddresses$lookupAddress
    on Query$GetAddresses$lookupAddress {
  CopyWith$Query$GetAddresses$lookupAddress<Query$GetAddresses$lookupAddress>
  get copyWith => CopyWith$Query$GetAddresses$lookupAddress(this, (i) => i);
}

abstract class CopyWith$Query$GetAddresses$lookupAddress<TRes> {
  factory CopyWith$Query$GetAddresses$lookupAddress(
    Query$GetAddresses$lookupAddress instance,
    TRes Function(Query$GetAddresses$lookupAddress) then,
  ) = _CopyWithImpl$Query$GetAddresses$lookupAddress;

  factory CopyWith$Query$GetAddresses$lookupAddress.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAddresses$lookupAddress;

  TRes call({
    String? id,
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

class _CopyWithImpl$Query$GetAddresses$lookupAddress<TRes>
    implements CopyWith$Query$GetAddresses$lookupAddress<TRes> {
  _CopyWithImpl$Query$GetAddresses$lookupAddress(this._instance, this._then);

  final Query$GetAddresses$lookupAddress _instance;

  final TRes Function(Query$GetAddresses$lookupAddress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? address3 = _undefined,
    Object? address4 = _undefined,
    Object? address5 = _undefined,
    Object? address6 = _undefined,
    Object? postCode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAddresses$lookupAddress(
      id: id == _undefined ? _instance.id : (id as String?),
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
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAddresses$lookupAddress<TRes>
    implements CopyWith$Query$GetAddresses$lookupAddress<TRes> {
  _CopyWithStubImpl$Query$GetAddresses$lookupAddress(this._res);

  TRes _res;

  call({
    String? id,
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? postCode,
    String? $__typename,
  }) => _res;
}
