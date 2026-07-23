import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$YardDetails {
  factory Variables$Query$YardDetails({Enum$CountryCode? countryCode}) =>
      Variables$Query$YardDetails._({
        if (countryCode != null) r'countryCode': countryCode,
      });

  Variables$Query$YardDetails._(this._$data);

  factory Variables$Query$YardDetails.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('countryCode')) {
      final l$countryCode = data['countryCode'];
      result$data['countryCode'] = l$countryCode == null
          ? null
          : fromJson$Enum$CountryCode((l$countryCode as String));
    }
    return Variables$Query$YardDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$CountryCode? get countryCode =>
      (_$data['countryCode'] as Enum$CountryCode?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('countryCode')) {
      final l$countryCode = countryCode;
      result$data['countryCode'] =
          l$countryCode == null ? null : toJson$Enum$CountryCode(l$countryCode);
    }
    return result$data;
  }

  CopyWith$Variables$Query$YardDetails<Variables$Query$YardDetails>
      get copyWith => CopyWith$Variables$Query$YardDetails(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$YardDetails ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (_$data.containsKey('countryCode') !=
        other._$data.containsKey('countryCode')) {
      return false;
    }
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$countryCode = countryCode;
    return Object.hashAll(
        [_$data.containsKey('countryCode') ? l$countryCode : const {}]);
  }
}

abstract class CopyWith$Variables$Query$YardDetails<TRes> {
  factory CopyWith$Variables$Query$YardDetails(
    Variables$Query$YardDetails instance,
    TRes Function(Variables$Query$YardDetails) then,
  ) = _CopyWithImpl$Variables$Query$YardDetails;

  factory CopyWith$Variables$Query$YardDetails.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$YardDetails;

  TRes call({Enum$CountryCode? countryCode});
}

class _CopyWithImpl$Variables$Query$YardDetails<TRes>
    implements CopyWith$Variables$Query$YardDetails<TRes> {
  _CopyWithImpl$Variables$Query$YardDetails(
    this._instance,
    this._then,
  );

  final Variables$Query$YardDetails _instance;

  final TRes Function(Variables$Query$YardDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? countryCode = _undefined}) =>
      _then(Variables$Query$YardDetails._({
        ..._instance._$data,
        if (countryCode != _undefined)
          'countryCode': (countryCode as Enum$CountryCode?),
      }));
}

class _CopyWithStubImpl$Variables$Query$YardDetails<TRes>
    implements CopyWith$Variables$Query$YardDetails<TRes> {
  _CopyWithStubImpl$Variables$Query$YardDetails(this._res);

  TRes _res;

  call({Enum$CountryCode? countryCode}) => _res;
}

class Query$YardDetails {
  Query$YardDetails({
    required this.yards,
    this.$__typename = 'Query',
  });

  factory Query$YardDetails.fromJson(Map<String, dynamic> json) {
    final l$yards = json['yards'];
    final l$$__typename = json['__typename'];
    return Query$YardDetails(
      yards: (l$yards as List<dynamic>)
          .map((e) =>
              Query$YardDetails$yards.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$YardDetails$yards> yards;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$yards = yards;
    _resultData['yards'] = l$yards.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$yards = yards;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$yards.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$YardDetails || runtimeType != other.runtimeType) {
      return false;
    }
    final l$yards = yards;
    final lOther$yards = other.yards;
    if (l$yards.length != lOther$yards.length) {
      return false;
    }
    for (int i = 0; i < l$yards.length; i++) {
      final l$yards$entry = l$yards[i];
      final lOther$yards$entry = lOther$yards[i];
      if (l$yards$entry != lOther$yards$entry) {
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

extension UtilityExtension$Query$YardDetails on Query$YardDetails {
  CopyWith$Query$YardDetails<Query$YardDetails> get copyWith =>
      CopyWith$Query$YardDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$YardDetails<TRes> {
  factory CopyWith$Query$YardDetails(
    Query$YardDetails instance,
    TRes Function(Query$YardDetails) then,
  ) = _CopyWithImpl$Query$YardDetails;

  factory CopyWith$Query$YardDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$YardDetails;

  TRes call({
    List<Query$YardDetails$yards>? yards,
    String? $__typename,
  });
  TRes yards(
      Iterable<Query$YardDetails$yards> Function(
              Iterable<
                  CopyWith$Query$YardDetails$yards<Query$YardDetails$yards>>)
          _fn);
}

class _CopyWithImpl$Query$YardDetails<TRes>
    implements CopyWith$Query$YardDetails<TRes> {
  _CopyWithImpl$Query$YardDetails(
    this._instance,
    this._then,
  );

  final Query$YardDetails _instance;

  final TRes Function(Query$YardDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? yards = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$YardDetails(
        yards: yards == _undefined || yards == null
            ? _instance.yards
            : (yards as List<Query$YardDetails$yards>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes yards(
          Iterable<Query$YardDetails$yards> Function(
                  Iterable<
                      CopyWith$Query$YardDetails$yards<
                          Query$YardDetails$yards>>)
              _fn) =>
      call(
          yards:
              _fn(_instance.yards.map((e) => CopyWith$Query$YardDetails$yards(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$YardDetails<TRes>
    implements CopyWith$Query$YardDetails<TRes> {
  _CopyWithStubImpl$Query$YardDetails(this._res);

  TRes _res;

  call({
    List<Query$YardDetails$yards>? yards,
    String? $__typename,
  }) =>
      _res;

  yards(_fn) => _res;
}

const documentNodeQueryYardDetails = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'YardDetails'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'countryCode')),
        type: NamedTypeNode(
          name: NameNode(value: 'CountryCode'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'yards'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'countryCode'),
            value: VariableNode(name: NameNode(value: 'countryCode')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'shortName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'yardCode'),
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
            name: NameNode(value: 'geoLocation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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

class Query$YardDetails$yards {
  Query$YardDetails$yards({
    required this.shortName,
    required this.yardCode,
    this.postCode,
    this.geoLocation,
    this.$__typename = 'Yard',
  });

  factory Query$YardDetails$yards.fromJson(Map<String, dynamic> json) {
    final l$shortName = json['shortName'];
    final l$yardCode = json['yardCode'];
    final l$postCode = json['postCode'];
    final l$geoLocation = json['geoLocation'];
    final l$$__typename = json['__typename'];
    return Query$YardDetails$yards(
      shortName: (l$shortName as String),
      yardCode: (l$yardCode as String),
      postCode: (l$postCode as String?),
      geoLocation: l$geoLocation == null
          ? null
          : Query$YardDetails$yards$geoLocation.fromJson(
              (l$geoLocation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String shortName;

  final String yardCode;

  final String? postCode;

  final Query$YardDetails$yards$geoLocation? geoLocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$shortName = shortName;
    _resultData['shortName'] = l$shortName;
    final l$yardCode = yardCode;
    _resultData['yardCode'] = l$yardCode;
    final l$postCode = postCode;
    _resultData['postCode'] = l$postCode;
    final l$geoLocation = geoLocation;
    _resultData['geoLocation'] = l$geoLocation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$shortName = shortName;
    final l$yardCode = yardCode;
    final l$postCode = postCode;
    final l$geoLocation = geoLocation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$shortName,
      l$yardCode,
      l$postCode,
      l$geoLocation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$YardDetails$yards || runtimeType != other.runtimeType) {
      return false;
    }
    final l$shortName = shortName;
    final lOther$shortName = other.shortName;
    if (l$shortName != lOther$shortName) {
      return false;
    }
    final l$yardCode = yardCode;
    final lOther$yardCode = other.yardCode;
    if (l$yardCode != lOther$yardCode) {
      return false;
    }
    final l$postCode = postCode;
    final lOther$postCode = other.postCode;
    if (l$postCode != lOther$postCode) {
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

extension UtilityExtension$Query$YardDetails$yards on Query$YardDetails$yards {
  CopyWith$Query$YardDetails$yards<Query$YardDetails$yards> get copyWith =>
      CopyWith$Query$YardDetails$yards(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$YardDetails$yards<TRes> {
  factory CopyWith$Query$YardDetails$yards(
    Query$YardDetails$yards instance,
    TRes Function(Query$YardDetails$yards) then,
  ) = _CopyWithImpl$Query$YardDetails$yards;

  factory CopyWith$Query$YardDetails$yards.stub(TRes res) =
      _CopyWithStubImpl$Query$YardDetails$yards;

  TRes call({
    String? shortName,
    String? yardCode,
    String? postCode,
    Query$YardDetails$yards$geoLocation? geoLocation,
    String? $__typename,
  });
  CopyWith$Query$YardDetails$yards$geoLocation<TRes> get geoLocation;
}

class _CopyWithImpl$Query$YardDetails$yards<TRes>
    implements CopyWith$Query$YardDetails$yards<TRes> {
  _CopyWithImpl$Query$YardDetails$yards(
    this._instance,
    this._then,
  );

  final Query$YardDetails$yards _instance;

  final TRes Function(Query$YardDetails$yards) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? shortName = _undefined,
    Object? yardCode = _undefined,
    Object? postCode = _undefined,
    Object? geoLocation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$YardDetails$yards(
        shortName: shortName == _undefined || shortName == null
            ? _instance.shortName
            : (shortName as String),
        yardCode: yardCode == _undefined || yardCode == null
            ? _instance.yardCode
            : (yardCode as String),
        postCode:
            postCode == _undefined ? _instance.postCode : (postCode as String?),
        geoLocation: geoLocation == _undefined
            ? _instance.geoLocation
            : (geoLocation as Query$YardDetails$yards$geoLocation?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$YardDetails$yards$geoLocation<TRes> get geoLocation {
    final local$geoLocation = _instance.geoLocation;
    return local$geoLocation == null
        ? CopyWith$Query$YardDetails$yards$geoLocation.stub(_then(_instance))
        : CopyWith$Query$YardDetails$yards$geoLocation(
            local$geoLocation, (e) => call(geoLocation: e));
  }
}

class _CopyWithStubImpl$Query$YardDetails$yards<TRes>
    implements CopyWith$Query$YardDetails$yards<TRes> {
  _CopyWithStubImpl$Query$YardDetails$yards(this._res);

  TRes _res;

  call({
    String? shortName,
    String? yardCode,
    String? postCode,
    Query$YardDetails$yards$geoLocation? geoLocation,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$YardDetails$yards$geoLocation<TRes> get geoLocation =>
      CopyWith$Query$YardDetails$yards$geoLocation.stub(_res);
}

class Query$YardDetails$yards$geoLocation {
  Query$YardDetails$yards$geoLocation({
    required this.latitude,
    required this.longitude,
    this.$__typename = 'LatLong',
  });

  factory Query$YardDetails$yards$geoLocation.fromJson(
      Map<String, dynamic> json) {
    final l$latitude = json['latitude'];
    final l$longitude = json['longitude'];
    final l$$__typename = json['__typename'];
    return Query$YardDetails$yards$geoLocation(
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
    return Object.hashAll([
      l$latitude,
      l$longitude,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$YardDetails$yards$geoLocation ||
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

extension UtilityExtension$Query$YardDetails$yards$geoLocation
    on Query$YardDetails$yards$geoLocation {
  CopyWith$Query$YardDetails$yards$geoLocation<
          Query$YardDetails$yards$geoLocation>
      get copyWith => CopyWith$Query$YardDetails$yards$geoLocation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$YardDetails$yards$geoLocation<TRes> {
  factory CopyWith$Query$YardDetails$yards$geoLocation(
    Query$YardDetails$yards$geoLocation instance,
    TRes Function(Query$YardDetails$yards$geoLocation) then,
  ) = _CopyWithImpl$Query$YardDetails$yards$geoLocation;

  factory CopyWith$Query$YardDetails$yards$geoLocation.stub(TRes res) =
      _CopyWithStubImpl$Query$YardDetails$yards$geoLocation;

  TRes call({
    double? latitude,
    double? longitude,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$YardDetails$yards$geoLocation<TRes>
    implements CopyWith$Query$YardDetails$yards$geoLocation<TRes> {
  _CopyWithImpl$Query$YardDetails$yards$geoLocation(
    this._instance,
    this._then,
  );

  final Query$YardDetails$yards$geoLocation _instance;

  final TRes Function(Query$YardDetails$yards$geoLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? latitude = _undefined,
    Object? longitude = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$YardDetails$yards$geoLocation(
        latitude: latitude == _undefined || latitude == null
            ? _instance.latitude
            : (latitude as double),
        longitude: longitude == _undefined || longitude == null
            ? _instance.longitude
            : (longitude as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$YardDetails$yards$geoLocation<TRes>
    implements CopyWith$Query$YardDetails$yards$geoLocation<TRes> {
  _CopyWithStubImpl$Query$YardDetails$yards$geoLocation(this._res);

  TRes _res;

  call({
    double? latitude,
    double? longitude,
    String? $__typename,
  }) =>
      _res;
}
