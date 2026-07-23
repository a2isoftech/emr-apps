import 'package:gql/ast.dart';

class Variables$Query$GetUSAddresses {
  factory Variables$Query$GetUSAddresses({required String postCode}) =>
      Variables$Query$GetUSAddresses._({
        r'postCode': postCode,
      });

  Variables$Query$GetUSAddresses._(this._$data);

  factory Variables$Query$GetUSAddresses.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$postCode = data['postCode'];
    result$data['postCode'] = (l$postCode as String);
    return Variables$Query$GetUSAddresses._(result$data);
  }

  Map<String, dynamic> _$data;

  String get postCode => (_$data['postCode'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$postCode = postCode;
    result$data['postCode'] = l$postCode;
    return result$data;
  }

  CopyWith$Variables$Query$GetUSAddresses<Variables$Query$GetUSAddresses>
      get copyWith => CopyWith$Variables$Query$GetUSAddresses(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetUSAddresses) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$postCode = postCode;
    final lOther$postCode = other.postCode;
    if (l$postCode != lOther$postCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$postCode = postCode;
    return Object.hashAll([l$postCode]);
  }
}

abstract class CopyWith$Variables$Query$GetUSAddresses<TRes> {
  factory CopyWith$Variables$Query$GetUSAddresses(
    Variables$Query$GetUSAddresses instance,
    TRes Function(Variables$Query$GetUSAddresses) then,
  ) = _CopyWithImpl$Variables$Query$GetUSAddresses;

  factory CopyWith$Variables$Query$GetUSAddresses.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUSAddresses;

  TRes call({String? postCode});
}

class _CopyWithImpl$Variables$Query$GetUSAddresses<TRes>
    implements CopyWith$Variables$Query$GetUSAddresses<TRes> {
  _CopyWithImpl$Variables$Query$GetUSAddresses(
    this._instance,
    this._then,
  );

  final Variables$Query$GetUSAddresses _instance;

  final TRes Function(Variables$Query$GetUSAddresses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? postCode = _undefined}) =>
      _then(Variables$Query$GetUSAddresses._({
        ..._instance._$data,
        if (postCode != _undefined && postCode != null)
          'postCode': (postCode as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetUSAddresses<TRes>
    implements CopyWith$Variables$Query$GetUSAddresses<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUSAddresses(this._res);

  TRes _res;

  call({String? postCode}) => _res;
}

class Query$GetUSAddresses {
  Query$GetUSAddresses({
    this.lookupUSAddress,
    this.$__typename = 'Query',
  });

  factory Query$GetUSAddresses.fromJson(Map<String, dynamic> json) {
    final l$lookupUSAddress = json['lookupUSAddress'];
    final l$$__typename = json['__typename'];
    return Query$GetUSAddresses(
      lookupUSAddress: (l$lookupUSAddress as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetUSAddresses$lookupUSAddress.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetUSAddresses$lookupUSAddress?>? lookupUSAddress;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lookupUSAddress = lookupUSAddress;
    _resultData['lookupUSAddress'] =
        l$lookupUSAddress?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lookupUSAddress = lookupUSAddress;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lookupUSAddress == null
          ? null
          : Object.hashAll(l$lookupUSAddress.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUSAddresses) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$lookupUSAddress = lookupUSAddress;
    final lOther$lookupUSAddress = other.lookupUSAddress;
    if (l$lookupUSAddress != null && lOther$lookupUSAddress != null) {
      if (l$lookupUSAddress.length != lOther$lookupUSAddress.length) {
        return false;
      }
      for (int i = 0; i < l$lookupUSAddress.length; i++) {
        final l$lookupUSAddress$entry = l$lookupUSAddress[i];
        final lOther$lookupUSAddress$entry = lOther$lookupUSAddress[i];
        if (l$lookupUSAddress$entry != lOther$lookupUSAddress$entry) {
          return false;
        }
      }
    } else if (l$lookupUSAddress != lOther$lookupUSAddress) {
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

extension UtilityExtension$Query$GetUSAddresses on Query$GetUSAddresses {
  CopyWith$Query$GetUSAddresses<Query$GetUSAddresses> get copyWith =>
      CopyWith$Query$GetUSAddresses(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUSAddresses<TRes> {
  factory CopyWith$Query$GetUSAddresses(
    Query$GetUSAddresses instance,
    TRes Function(Query$GetUSAddresses) then,
  ) = _CopyWithImpl$Query$GetUSAddresses;

  factory CopyWith$Query$GetUSAddresses.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUSAddresses;

  TRes call({
    List<Query$GetUSAddresses$lookupUSAddress?>? lookupUSAddress,
    String? $__typename,
  });
  TRes lookupUSAddress(
      Iterable<Query$GetUSAddresses$lookupUSAddress?>? Function(
              Iterable<
                  CopyWith$Query$GetUSAddresses$lookupUSAddress<
                      Query$GetUSAddresses$lookupUSAddress>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetUSAddresses<TRes>
    implements CopyWith$Query$GetUSAddresses<TRes> {
  _CopyWithImpl$Query$GetUSAddresses(
    this._instance,
    this._then,
  );

  final Query$GetUSAddresses _instance;

  final TRes Function(Query$GetUSAddresses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lookupUSAddress = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUSAddresses(
        lookupUSAddress: lookupUSAddress == _undefined
            ? _instance.lookupUSAddress
            : (lookupUSAddress as List<Query$GetUSAddresses$lookupUSAddress?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes lookupUSAddress(
          Iterable<Query$GetUSAddresses$lookupUSAddress?>? Function(
                  Iterable<
                      CopyWith$Query$GetUSAddresses$lookupUSAddress<
                          Query$GetUSAddresses$lookupUSAddress>?>?)
              _fn) =>
      call(
          lookupUSAddress: _fn(_instance.lookupUSAddress?.map((e) => e == null
              ? null
              : CopyWith$Query$GetUSAddresses$lookupUSAddress(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetUSAddresses<TRes>
    implements CopyWith$Query$GetUSAddresses<TRes> {
  _CopyWithStubImpl$Query$GetUSAddresses(this._res);

  TRes _res;

  call({
    List<Query$GetUSAddresses$lookupUSAddress?>? lookupUSAddress,
    String? $__typename,
  }) =>
      _res;

  lookupUSAddress(_fn) => _res;
}

const documentNodeQueryGetUSAddresses = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUSAddresses'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'postCode')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'lookupUSAddress'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'location'),
            value: VariableNode(name: NameNode(value: 'postCode')),
          )
        ],
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

class Query$GetUSAddresses$lookupUSAddress {
  Query$GetUSAddresses$lookupUSAddress({
    this.address1,
    this.address2,
    this.address3,
    this.address4,
    this.address5,
    this.address6,
    this.$__typename = 'AddressLookupOutput',
  });

  factory Query$GetUSAddresses$lookupUSAddress.fromJson(
      Map<String, dynamic> json) {
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$address3 = json['address3'];
    final l$address4 = json['address4'];
    final l$address5 = json['address5'];
    final l$address6 = json['address6'];
    final l$$__typename = json['__typename'];
    return Query$GetUSAddresses$lookupUSAddress(
      address1: (l$address1 as String?),
      address2: (l$address2 as String?),
      address3: (l$address3 as String?),
      address4: (l$address4 as String?),
      address5: (l$address5 as String?),
      address6: (l$address6 as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? address1;

  final String? address2;

  final String? address3;

  final String? address4;

  final String? address5;

  final String? address6;

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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address1,
      l$address2,
      l$address3,
      l$address4,
      l$address5,
      l$address6,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUSAddresses$lookupUSAddress) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUSAddresses$lookupUSAddress
    on Query$GetUSAddresses$lookupUSAddress {
  CopyWith$Query$GetUSAddresses$lookupUSAddress<
          Query$GetUSAddresses$lookupUSAddress>
      get copyWith => CopyWith$Query$GetUSAddresses$lookupUSAddress(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUSAddresses$lookupUSAddress<TRes> {
  factory CopyWith$Query$GetUSAddresses$lookupUSAddress(
    Query$GetUSAddresses$lookupUSAddress instance,
    TRes Function(Query$GetUSAddresses$lookupUSAddress) then,
  ) = _CopyWithImpl$Query$GetUSAddresses$lookupUSAddress;

  factory CopyWith$Query$GetUSAddresses$lookupUSAddress.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUSAddresses$lookupUSAddress;

  TRes call({
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUSAddresses$lookupUSAddress<TRes>
    implements CopyWith$Query$GetUSAddresses$lookupUSAddress<TRes> {
  _CopyWithImpl$Query$GetUSAddresses$lookupUSAddress(
    this._instance,
    this._then,
  );

  final Query$GetUSAddresses$lookupUSAddress _instance;

  final TRes Function(Query$GetUSAddresses$lookupUSAddress) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? address3 = _undefined,
    Object? address4 = _undefined,
    Object? address5 = _undefined,
    Object? address6 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUSAddresses$lookupUSAddress(
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
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUSAddresses$lookupUSAddress<TRes>
    implements CopyWith$Query$GetUSAddresses$lookupUSAddress<TRes> {
  _CopyWithStubImpl$Query$GetUSAddresses$lookupUSAddress(this._res);

  TRes _res;

  call({
    String? address1,
    String? address2,
    String? address3,
    String? address4,
    String? address5,
    String? address6,
    String? $__typename,
  }) =>
      _res;
}
