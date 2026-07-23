import 'package:gql/ast.dart';

class Variables$Query$getArisingPoints {
  factory Variables$Query$getArisingPoints({required String partyAccountNo}) =>
      Variables$Query$getArisingPoints._({
        r'partyAccountNo': partyAccountNo,
      });

  Variables$Query$getArisingPoints._(this._$data);

  factory Variables$Query$getArisingPoints.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$partyAccountNo = data['partyAccountNo'];
    result$data['partyAccountNo'] = (l$partyAccountNo as String);
    return Variables$Query$getArisingPoints._(result$data);
  }

  Map<String, dynamic> _$data;

  String get partyAccountNo => (_$data['partyAccountNo'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$partyAccountNo = partyAccountNo;
    result$data['partyAccountNo'] = l$partyAccountNo;
    return result$data;
  }

  CopyWith$Variables$Query$getArisingPoints<Variables$Query$getArisingPoints>
      get copyWith => CopyWith$Variables$Query$getArisingPoints(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$getArisingPoints ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$partyAccountNo = partyAccountNo;
    final lOther$partyAccountNo = other.partyAccountNo;
    if (l$partyAccountNo != lOther$partyAccountNo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$partyAccountNo = partyAccountNo;
    return Object.hashAll([l$partyAccountNo]);
  }
}

abstract class CopyWith$Variables$Query$getArisingPoints<TRes> {
  factory CopyWith$Variables$Query$getArisingPoints(
    Variables$Query$getArisingPoints instance,
    TRes Function(Variables$Query$getArisingPoints) then,
  ) = _CopyWithImpl$Variables$Query$getArisingPoints;

  factory CopyWith$Variables$Query$getArisingPoints.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getArisingPoints;

  TRes call({String? partyAccountNo});
}

class _CopyWithImpl$Variables$Query$getArisingPoints<TRes>
    implements CopyWith$Variables$Query$getArisingPoints<TRes> {
  _CopyWithImpl$Variables$Query$getArisingPoints(
    this._instance,
    this._then,
  );

  final Variables$Query$getArisingPoints _instance;

  final TRes Function(Variables$Query$getArisingPoints) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? partyAccountNo = _undefined}) =>
      _then(Variables$Query$getArisingPoints._({
        ..._instance._$data,
        if (partyAccountNo != _undefined && partyAccountNo != null)
          'partyAccountNo': (partyAccountNo as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$getArisingPoints<TRes>
    implements CopyWith$Variables$Query$getArisingPoints<TRes> {
  _CopyWithStubImpl$Variables$Query$getArisingPoints(this._res);

  TRes _res;

  call({String? partyAccountNo}) => _res;
}

class Query$getArisingPoints {
  Query$getArisingPoints({
    this.partyArisingPoints,
    this.$__typename = 'Query',
  });

  factory Query$getArisingPoints.fromJson(Map<String, dynamic> json) {
    final l$partyArisingPoints = json['partyArisingPoints'];
    final l$$__typename = json['__typename'];
    return Query$getArisingPoints(
      partyArisingPoints: l$partyArisingPoints == null
          ? null
          : Query$getArisingPoints$partyArisingPoints.fromJson(
              (l$partyArisingPoints as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getArisingPoints$partyArisingPoints? partyArisingPoints;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$partyArisingPoints = partyArisingPoints;
    _resultData['partyArisingPoints'] = l$partyArisingPoints?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$partyArisingPoints = partyArisingPoints;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$partyArisingPoints,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getArisingPoints || runtimeType != other.runtimeType) {
      return false;
    }
    final l$partyArisingPoints = partyArisingPoints;
    final lOther$partyArisingPoints = other.partyArisingPoints;
    if (l$partyArisingPoints != lOther$partyArisingPoints) {
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

extension UtilityExtension$Query$getArisingPoints on Query$getArisingPoints {
  CopyWith$Query$getArisingPoints<Query$getArisingPoints> get copyWith =>
      CopyWith$Query$getArisingPoints(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getArisingPoints<TRes> {
  factory CopyWith$Query$getArisingPoints(
    Query$getArisingPoints instance,
    TRes Function(Query$getArisingPoints) then,
  ) = _CopyWithImpl$Query$getArisingPoints;

  factory CopyWith$Query$getArisingPoints.stub(TRes res) =
      _CopyWithStubImpl$Query$getArisingPoints;

  TRes call({
    Query$getArisingPoints$partyArisingPoints? partyArisingPoints,
    String? $__typename,
  });
  CopyWith$Query$getArisingPoints$partyArisingPoints<TRes>
      get partyArisingPoints;
}

class _CopyWithImpl$Query$getArisingPoints<TRes>
    implements CopyWith$Query$getArisingPoints<TRes> {
  _CopyWithImpl$Query$getArisingPoints(
    this._instance,
    this._then,
  );

  final Query$getArisingPoints _instance;

  final TRes Function(Query$getArisingPoints) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? partyArisingPoints = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getArisingPoints(
        partyArisingPoints: partyArisingPoints == _undefined
            ? _instance.partyArisingPoints
            : (partyArisingPoints
                as Query$getArisingPoints$partyArisingPoints?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getArisingPoints$partyArisingPoints<TRes>
      get partyArisingPoints {
    final local$partyArisingPoints = _instance.partyArisingPoints;
    return local$partyArisingPoints == null
        ? CopyWith$Query$getArisingPoints$partyArisingPoints.stub(
            _then(_instance))
        : CopyWith$Query$getArisingPoints$partyArisingPoints(
            local$partyArisingPoints, (e) => call(partyArisingPoints: e));
  }
}

class _CopyWithStubImpl$Query$getArisingPoints<TRes>
    implements CopyWith$Query$getArisingPoints<TRes> {
  _CopyWithStubImpl$Query$getArisingPoints(this._res);

  TRes _res;

  call({
    Query$getArisingPoints$partyArisingPoints? partyArisingPoints,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getArisingPoints$partyArisingPoints<TRes>
      get partyArisingPoints =>
          CopyWith$Query$getArisingPoints$partyArisingPoints.stub(_res);
}

const documentNodeQuerygetArisingPoints = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getArisingPoints'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'partyAccountNo')),
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
        name: NameNode(value: 'partyArisingPoints'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'partyAccountNo'),
            value: VariableNode(name: NameNode(value: 'partyAccountNo')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'nodes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'locationId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'locationCustomerDescription'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'locationAliasDescription'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isArisingPointDefault'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'locationAliasCode'),
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

class Query$getArisingPoints$partyArisingPoints {
  Query$getArisingPoints$partyArisingPoints({
    this.nodes,
    this.$__typename = 'PartyArisingPointsConnection',
  });

  factory Query$getArisingPoints$partyArisingPoints.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$getArisingPoints$partyArisingPoints(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => Query$getArisingPoints$partyArisingPoints$nodes.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getArisingPoints$partyArisingPoints$nodes>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getArisingPoints$partyArisingPoints ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$getArisingPoints$partyArisingPoints
    on Query$getArisingPoints$partyArisingPoints {
  CopyWith$Query$getArisingPoints$partyArisingPoints<
          Query$getArisingPoints$partyArisingPoints>
      get copyWith => CopyWith$Query$getArisingPoints$partyArisingPoints(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getArisingPoints$partyArisingPoints<TRes> {
  factory CopyWith$Query$getArisingPoints$partyArisingPoints(
    Query$getArisingPoints$partyArisingPoints instance,
    TRes Function(Query$getArisingPoints$partyArisingPoints) then,
  ) = _CopyWithImpl$Query$getArisingPoints$partyArisingPoints;

  factory CopyWith$Query$getArisingPoints$partyArisingPoints.stub(TRes res) =
      _CopyWithStubImpl$Query$getArisingPoints$partyArisingPoints;

  TRes call({
    List<Query$getArisingPoints$partyArisingPoints$nodes>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$getArisingPoints$partyArisingPoints$nodes>? Function(
              Iterable<
                  CopyWith$Query$getArisingPoints$partyArisingPoints$nodes<
                      Query$getArisingPoints$partyArisingPoints$nodes>>?)
          _fn);
}

class _CopyWithImpl$Query$getArisingPoints$partyArisingPoints<TRes>
    implements CopyWith$Query$getArisingPoints$partyArisingPoints<TRes> {
  _CopyWithImpl$Query$getArisingPoints$partyArisingPoints(
    this._instance,
    this._then,
  );

  final Query$getArisingPoints$partyArisingPoints _instance;

  final TRes Function(Query$getArisingPoints$partyArisingPoints) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getArisingPoints$partyArisingPoints(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Query$getArisingPoints$partyArisingPoints$nodes>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$getArisingPoints$partyArisingPoints$nodes>? Function(
                  Iterable<
                      CopyWith$Query$getArisingPoints$partyArisingPoints$nodes<
                          Query$getArisingPoints$partyArisingPoints$nodes>>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map(
              (e) => CopyWith$Query$getArisingPoints$partyArisingPoints$nodes(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$getArisingPoints$partyArisingPoints<TRes>
    implements CopyWith$Query$getArisingPoints$partyArisingPoints<TRes> {
  _CopyWithStubImpl$Query$getArisingPoints$partyArisingPoints(this._res);

  TRes _res;

  call({
    List<Query$getArisingPoints$partyArisingPoints$nodes>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$getArisingPoints$partyArisingPoints$nodes {
  Query$getArisingPoints$partyArisingPoints$nodes({
    required this.locationId,
    this.locationCustomerDescription,
    this.locationAliasDescription,
    required this.isArisingPointDefault,
    this.locationAliasCode,
    this.$__typename = 'T2PartyLocation',
  });

  factory Query$getArisingPoints$partyArisingPoints$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$locationId = json['locationId'];
    final l$locationCustomerDescription = json['locationCustomerDescription'];
    final l$locationAliasDescription = json['locationAliasDescription'];
    final l$isArisingPointDefault = json['isArisingPointDefault'];
    final l$locationAliasCode = json['locationAliasCode'];
    final l$$__typename = json['__typename'];
    return Query$getArisingPoints$partyArisingPoints$nodes(
      locationId: (l$locationId as int),
      locationCustomerDescription: (l$locationCustomerDescription as String?),
      locationAliasDescription: (l$locationAliasDescription as String?),
      isArisingPointDefault: (l$isArisingPointDefault as bool),
      locationAliasCode: (l$locationAliasCode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int locationId;

  final String? locationCustomerDescription;

  final String? locationAliasDescription;

  final bool isArisingPointDefault;

  final String? locationAliasCode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$locationId = locationId;
    _resultData['locationId'] = l$locationId;
    final l$locationCustomerDescription = locationCustomerDescription;
    _resultData['locationCustomerDescription'] = l$locationCustomerDescription;
    final l$locationAliasDescription = locationAliasDescription;
    _resultData['locationAliasDescription'] = l$locationAliasDescription;
    final l$isArisingPointDefault = isArisingPointDefault;
    _resultData['isArisingPointDefault'] = l$isArisingPointDefault;
    final l$locationAliasCode = locationAliasCode;
    _resultData['locationAliasCode'] = l$locationAliasCode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$locationId = locationId;
    final l$locationCustomerDescription = locationCustomerDescription;
    final l$locationAliasDescription = locationAliasDescription;
    final l$isArisingPointDefault = isArisingPointDefault;
    final l$locationAliasCode = locationAliasCode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$locationId,
      l$locationCustomerDescription,
      l$locationAliasDescription,
      l$isArisingPointDefault,
      l$locationAliasCode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getArisingPoints$partyArisingPoints$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$locationId = locationId;
    final lOther$locationId = other.locationId;
    if (l$locationId != lOther$locationId) {
      return false;
    }
    final l$locationCustomerDescription = locationCustomerDescription;
    final lOther$locationCustomerDescription =
        other.locationCustomerDescription;
    if (l$locationCustomerDescription != lOther$locationCustomerDescription) {
      return false;
    }
    final l$locationAliasDescription = locationAliasDescription;
    final lOther$locationAliasDescription = other.locationAliasDescription;
    if (l$locationAliasDescription != lOther$locationAliasDescription) {
      return false;
    }
    final l$isArisingPointDefault = isArisingPointDefault;
    final lOther$isArisingPointDefault = other.isArisingPointDefault;
    if (l$isArisingPointDefault != lOther$isArisingPointDefault) {
      return false;
    }
    final l$locationAliasCode = locationAliasCode;
    final lOther$locationAliasCode = other.locationAliasCode;
    if (l$locationAliasCode != lOther$locationAliasCode) {
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

extension UtilityExtension$Query$getArisingPoints$partyArisingPoints$nodes
    on Query$getArisingPoints$partyArisingPoints$nodes {
  CopyWith$Query$getArisingPoints$partyArisingPoints$nodes<
          Query$getArisingPoints$partyArisingPoints$nodes>
      get copyWith => CopyWith$Query$getArisingPoints$partyArisingPoints$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getArisingPoints$partyArisingPoints$nodes<TRes> {
  factory CopyWith$Query$getArisingPoints$partyArisingPoints$nodes(
    Query$getArisingPoints$partyArisingPoints$nodes instance,
    TRes Function(Query$getArisingPoints$partyArisingPoints$nodes) then,
  ) = _CopyWithImpl$Query$getArisingPoints$partyArisingPoints$nodes;

  factory CopyWith$Query$getArisingPoints$partyArisingPoints$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getArisingPoints$partyArisingPoints$nodes;

  TRes call({
    int? locationId,
    String? locationCustomerDescription,
    String? locationAliasDescription,
    bool? isArisingPointDefault,
    String? locationAliasCode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getArisingPoints$partyArisingPoints$nodes<TRes>
    implements CopyWith$Query$getArisingPoints$partyArisingPoints$nodes<TRes> {
  _CopyWithImpl$Query$getArisingPoints$partyArisingPoints$nodes(
    this._instance,
    this._then,
  );

  final Query$getArisingPoints$partyArisingPoints$nodes _instance;

  final TRes Function(Query$getArisingPoints$partyArisingPoints$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? locationId = _undefined,
    Object? locationCustomerDescription = _undefined,
    Object? locationAliasDescription = _undefined,
    Object? isArisingPointDefault = _undefined,
    Object? locationAliasCode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getArisingPoints$partyArisingPoints$nodes(
        locationId: locationId == _undefined || locationId == null
            ? _instance.locationId
            : (locationId as int),
        locationCustomerDescription: locationCustomerDescription == _undefined
            ? _instance.locationCustomerDescription
            : (locationCustomerDescription as String?),
        locationAliasDescription: locationAliasDescription == _undefined
            ? _instance.locationAliasDescription
            : (locationAliasDescription as String?),
        isArisingPointDefault:
            isArisingPointDefault == _undefined || isArisingPointDefault == null
                ? _instance.isArisingPointDefault
                : (isArisingPointDefault as bool),
        locationAliasCode: locationAliasCode == _undefined
            ? _instance.locationAliasCode
            : (locationAliasCode as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getArisingPoints$partyArisingPoints$nodes<TRes>
    implements CopyWith$Query$getArisingPoints$partyArisingPoints$nodes<TRes> {
  _CopyWithStubImpl$Query$getArisingPoints$partyArisingPoints$nodes(this._res);

  TRes _res;

  call({
    int? locationId,
    String? locationCustomerDescription,
    String? locationAliasDescription,
    bool? isArisingPointDefault,
    String? locationAliasCode,
    String? $__typename,
  }) =>
      _res;
}
