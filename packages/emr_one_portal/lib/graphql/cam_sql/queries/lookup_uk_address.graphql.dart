import 'package:gql/ast.dart';

class Variables$Query$GetUkAddresses {
  factory Variables$Query$GetUkAddresses({required String postCode}) =>
      Variables$Query$GetUkAddresses._({
        r'postCode': postCode,
      });

  Variables$Query$GetUkAddresses._(this._$data);

  factory Variables$Query$GetUkAddresses.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$postCode = data['postCode'];
    result$data['postCode'] = (l$postCode as String);
    return Variables$Query$GetUkAddresses._(result$data);
  }

  Map<String, dynamic> _$data;

  String get postCode => (_$data['postCode'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$postCode = postCode;
    result$data['postCode'] = l$postCode;
    return result$data;
  }

  CopyWith$Variables$Query$GetUkAddresses<Variables$Query$GetUkAddresses>
      get copyWith => CopyWith$Variables$Query$GetUkAddresses(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetUkAddresses) ||
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

abstract class CopyWith$Variables$Query$GetUkAddresses<TRes> {
  factory CopyWith$Variables$Query$GetUkAddresses(
    Variables$Query$GetUkAddresses instance,
    TRes Function(Variables$Query$GetUkAddresses) then,
  ) = _CopyWithImpl$Variables$Query$GetUkAddresses;

  factory CopyWith$Variables$Query$GetUkAddresses.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUkAddresses;

  TRes call({String? postCode});
}

class _CopyWithImpl$Variables$Query$GetUkAddresses<TRes>
    implements CopyWith$Variables$Query$GetUkAddresses<TRes> {
  _CopyWithImpl$Variables$Query$GetUkAddresses(
    this._instance,
    this._then,
  );

  final Variables$Query$GetUkAddresses _instance;

  final TRes Function(Variables$Query$GetUkAddresses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? postCode = _undefined}) =>
      _then(Variables$Query$GetUkAddresses._({
        ..._instance._$data,
        if (postCode != _undefined && postCode != null)
          'postCode': (postCode as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetUkAddresses<TRes>
    implements CopyWith$Variables$Query$GetUkAddresses<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUkAddresses(this._res);

  TRes _res;

  call({String? postCode}) => _res;
}

class Query$GetUkAddresses {
  Query$GetUkAddresses({
    this.lookupUKPostcode,
    this.$__typename = 'Query',
  });

  factory Query$GetUkAddresses.fromJson(Map<String, dynamic> json) {
    final l$lookupUKPostcode = json['lookupUKPostcode'];
    final l$$__typename = json['__typename'];
    return Query$GetUkAddresses(
      lookupUKPostcode: (l$lookupUKPostcode as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetUkAddresses$lookupUKPostcode.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetUkAddresses$lookupUKPostcode?>? lookupUKPostcode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lookupUKPostcode = lookupUKPostcode;
    _resultData['lookupUKPostcode'] =
        l$lookupUKPostcode?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lookupUKPostcode = lookupUKPostcode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lookupUKPostcode == null
          ? null
          : Object.hashAll(l$lookupUKPostcode.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUkAddresses) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$lookupUKPostcode = lookupUKPostcode;
    final lOther$lookupUKPostcode = other.lookupUKPostcode;
    if (l$lookupUKPostcode != null && lOther$lookupUKPostcode != null) {
      if (l$lookupUKPostcode.length != lOther$lookupUKPostcode.length) {
        return false;
      }
      for (int i = 0; i < l$lookupUKPostcode.length; i++) {
        final l$lookupUKPostcode$entry = l$lookupUKPostcode[i];
        final lOther$lookupUKPostcode$entry = lOther$lookupUKPostcode[i];
        if (l$lookupUKPostcode$entry != lOther$lookupUKPostcode$entry) {
          return false;
        }
      }
    } else if (l$lookupUKPostcode != lOther$lookupUKPostcode) {
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

extension UtilityExtension$Query$GetUkAddresses on Query$GetUkAddresses {
  CopyWith$Query$GetUkAddresses<Query$GetUkAddresses> get copyWith =>
      CopyWith$Query$GetUkAddresses(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUkAddresses<TRes> {
  factory CopyWith$Query$GetUkAddresses(
    Query$GetUkAddresses instance,
    TRes Function(Query$GetUkAddresses) then,
  ) = _CopyWithImpl$Query$GetUkAddresses;

  factory CopyWith$Query$GetUkAddresses.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUkAddresses;

  TRes call({
    List<Query$GetUkAddresses$lookupUKPostcode?>? lookupUKPostcode,
    String? $__typename,
  });
  TRes lookupUKPostcode(
      Iterable<Query$GetUkAddresses$lookupUKPostcode?>? Function(
              Iterable<
                  CopyWith$Query$GetUkAddresses$lookupUKPostcode<
                      Query$GetUkAddresses$lookupUKPostcode>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetUkAddresses<TRes>
    implements CopyWith$Query$GetUkAddresses<TRes> {
  _CopyWithImpl$Query$GetUkAddresses(
    this._instance,
    this._then,
  );

  final Query$GetUkAddresses _instance;

  final TRes Function(Query$GetUkAddresses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lookupUKPostcode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUkAddresses(
        lookupUKPostcode: lookupUKPostcode == _undefined
            ? _instance.lookupUKPostcode
            : (lookupUKPostcode
                as List<Query$GetUkAddresses$lookupUKPostcode?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes lookupUKPostcode(
          Iterable<Query$GetUkAddresses$lookupUKPostcode?>? Function(
                  Iterable<
                      CopyWith$Query$GetUkAddresses$lookupUKPostcode<
                          Query$GetUkAddresses$lookupUKPostcode>?>?)
              _fn) =>
      call(
          lookupUKPostcode: _fn(_instance.lookupUKPostcode?.map((e) => e == null
              ? null
              : CopyWith$Query$GetUkAddresses$lookupUKPostcode(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetUkAddresses<TRes>
    implements CopyWith$Query$GetUkAddresses<TRes> {
  _CopyWithStubImpl$Query$GetUkAddresses(this._res);

  TRes _res;

  call({
    List<Query$GetUkAddresses$lookupUKPostcode?>? lookupUKPostcode,
    String? $__typename,
  }) =>
      _res;

  lookupUKPostcode(_fn) => _res;
}

const documentNodeQueryGetUkAddresses = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUkAddresses'),
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
        name: NameNode(value: 'lookupUKPostcode'),
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

class Query$GetUkAddresses$lookupUKPostcode {
  Query$GetUkAddresses$lookupUKPostcode({
    this.address1,
    this.address2,
    this.address3,
    this.address4,
    this.address5,
    this.address6,
    this.$__typename = 'AddressLookupOutput',
  });

  factory Query$GetUkAddresses$lookupUKPostcode.fromJson(
      Map<String, dynamic> json) {
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$address3 = json['address3'];
    final l$address4 = json['address4'];
    final l$address5 = json['address5'];
    final l$address6 = json['address6'];
    final l$$__typename = json['__typename'];
    return Query$GetUkAddresses$lookupUKPostcode(
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
    if (!(other is Query$GetUkAddresses$lookupUKPostcode) ||
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

extension UtilityExtension$Query$GetUkAddresses$lookupUKPostcode
    on Query$GetUkAddresses$lookupUKPostcode {
  CopyWith$Query$GetUkAddresses$lookupUKPostcode<
          Query$GetUkAddresses$lookupUKPostcode>
      get copyWith => CopyWith$Query$GetUkAddresses$lookupUKPostcode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUkAddresses$lookupUKPostcode<TRes> {
  factory CopyWith$Query$GetUkAddresses$lookupUKPostcode(
    Query$GetUkAddresses$lookupUKPostcode instance,
    TRes Function(Query$GetUkAddresses$lookupUKPostcode) then,
  ) = _CopyWithImpl$Query$GetUkAddresses$lookupUKPostcode;

  factory CopyWith$Query$GetUkAddresses$lookupUKPostcode.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUkAddresses$lookupUKPostcode;

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

class _CopyWithImpl$Query$GetUkAddresses$lookupUKPostcode<TRes>
    implements CopyWith$Query$GetUkAddresses$lookupUKPostcode<TRes> {
  _CopyWithImpl$Query$GetUkAddresses$lookupUKPostcode(
    this._instance,
    this._then,
  );

  final Query$GetUkAddresses$lookupUKPostcode _instance;

  final TRes Function(Query$GetUkAddresses$lookupUKPostcode) _then;

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
      _then(Query$GetUkAddresses$lookupUKPostcode(
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

class _CopyWithStubImpl$Query$GetUkAddresses$lookupUKPostcode<TRes>
    implements CopyWith$Query$GetUkAddresses$lookupUKPostcode<TRes> {
  _CopyWithStubImpl$Query$GetUkAddresses$lookupUKPostcode(this._res);

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
