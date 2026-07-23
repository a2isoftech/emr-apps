import 'package:gql/ast.dart';

class Variables$Query$GetFloorPlans {
  factory Variables$Query$GetFloorPlans({required String siteId}) =>
      Variables$Query$GetFloorPlans._({
        r'siteId': siteId,
      });

  Variables$Query$GetFloorPlans._(this._$data);

  factory Variables$Query$GetFloorPlans.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$siteId = data['siteId'];
    result$data['siteId'] = (l$siteId as String);
    return Variables$Query$GetFloorPlans._(result$data);
  }

  Map<String, dynamic> _$data;

  String get siteId => (_$data['siteId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$siteId = siteId;
    result$data['siteId'] = l$siteId;
    return result$data;
  }

  CopyWith$Variables$Query$GetFloorPlans<Variables$Query$GetFloorPlans>
      get copyWith => CopyWith$Variables$Query$GetFloorPlans(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetFloorPlans ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (l$siteId != lOther$siteId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$siteId = siteId;
    return Object.hashAll([l$siteId]);
  }
}

abstract class CopyWith$Variables$Query$GetFloorPlans<TRes> {
  factory CopyWith$Variables$Query$GetFloorPlans(
    Variables$Query$GetFloorPlans instance,
    TRes Function(Variables$Query$GetFloorPlans) then,
  ) = _CopyWithImpl$Variables$Query$GetFloorPlans;

  factory CopyWith$Variables$Query$GetFloorPlans.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetFloorPlans;

  TRes call({String? siteId});
}

class _CopyWithImpl$Variables$Query$GetFloorPlans<TRes>
    implements CopyWith$Variables$Query$GetFloorPlans<TRes> {
  _CopyWithImpl$Variables$Query$GetFloorPlans(
    this._instance,
    this._then,
  );

  final Variables$Query$GetFloorPlans _instance;

  final TRes Function(Variables$Query$GetFloorPlans) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? siteId = _undefined}) =>
      _then(Variables$Query$GetFloorPlans._({
        ..._instance._$data,
        if (siteId != _undefined && siteId != null)
          'siteId': (siteId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetFloorPlans<TRes>
    implements CopyWith$Variables$Query$GetFloorPlans<TRes> {
  _CopyWithStubImpl$Variables$Query$GetFloorPlans(this._res);

  TRes _res;

  call({String? siteId}) => _res;
}

class Query$GetFloorPlans {
  Query$GetFloorPlans({
    required this.floorPlans,
    this.$__typename = 'Query',
  });

  factory Query$GetFloorPlans.fromJson(Map<String, dynamic> json) {
    final l$floorPlans = json['floorPlans'];
    final l$$__typename = json['__typename'];
    return Query$GetFloorPlans(
      floorPlans: (l$floorPlans as List<dynamic>)
          .map((e) => Query$GetFloorPlans$floorPlans.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetFloorPlans$floorPlans> floorPlans;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$floorPlans = floorPlans;
    _resultData['floorPlans'] = l$floorPlans.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$floorPlans = floorPlans;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$floorPlans.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetFloorPlans || runtimeType != other.runtimeType) {
      return false;
    }
    final l$floorPlans = floorPlans;
    final lOther$floorPlans = other.floorPlans;
    if (l$floorPlans.length != lOther$floorPlans.length) {
      return false;
    }
    for (int i = 0; i < l$floorPlans.length; i++) {
      final l$floorPlans$entry = l$floorPlans[i];
      final lOther$floorPlans$entry = lOther$floorPlans[i];
      if (l$floorPlans$entry != lOther$floorPlans$entry) {
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

extension UtilityExtension$Query$GetFloorPlans on Query$GetFloorPlans {
  CopyWith$Query$GetFloorPlans<Query$GetFloorPlans> get copyWith =>
      CopyWith$Query$GetFloorPlans(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetFloorPlans<TRes> {
  factory CopyWith$Query$GetFloorPlans(
    Query$GetFloorPlans instance,
    TRes Function(Query$GetFloorPlans) then,
  ) = _CopyWithImpl$Query$GetFloorPlans;

  factory CopyWith$Query$GetFloorPlans.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFloorPlans;

  TRes call({
    List<Query$GetFloorPlans$floorPlans>? floorPlans,
    String? $__typename,
  });
  TRes floorPlans(
      Iterable<Query$GetFloorPlans$floorPlans> Function(
              Iterable<
                  CopyWith$Query$GetFloorPlans$floorPlans<
                      Query$GetFloorPlans$floorPlans>>)
          _fn);
}

class _CopyWithImpl$Query$GetFloorPlans<TRes>
    implements CopyWith$Query$GetFloorPlans<TRes> {
  _CopyWithImpl$Query$GetFloorPlans(
    this._instance,
    this._then,
  );

  final Query$GetFloorPlans _instance;

  final TRes Function(Query$GetFloorPlans) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? floorPlans = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFloorPlans(
        floorPlans: floorPlans == _undefined || floorPlans == null
            ? _instance.floorPlans
            : (floorPlans as List<Query$GetFloorPlans$floorPlans>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes floorPlans(
          Iterable<Query$GetFloorPlans$floorPlans> Function(
                  Iterable<
                      CopyWith$Query$GetFloorPlans$floorPlans<
                          Query$GetFloorPlans$floorPlans>>)
              _fn) =>
      call(
          floorPlans: _fn(_instance.floorPlans
              .map((e) => CopyWith$Query$GetFloorPlans$floorPlans(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetFloorPlans<TRes>
    implements CopyWith$Query$GetFloorPlans<TRes> {
  _CopyWithStubImpl$Query$GetFloorPlans(this._res);

  TRes _res;

  call({
    List<Query$GetFloorPlans$floorPlans>? floorPlans,
    String? $__typename,
  }) =>
      _res;

  floorPlans(_fn) => _res;
}

const documentNodeQueryGetFloorPlans = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetFloorPlans'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'siteId')),
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
        name: NameNode(value: 'floorPlans'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'siteId'),
            value: VariableNode(name: NameNode(value: 'siteId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'siteId'),
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
            name: NameNode(value: 'imageUrl'),
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
            name: NameNode(value: 'createdOn'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'hotspots'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: 'x'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'y'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'status'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'accessPointId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'orderIndex'),
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

class Query$GetFloorPlans$floorPlans {
  Query$GetFloorPlans$floorPlans({
    required this.siteId,
    required this.name,
    required this.imageUrl,
    required this.id,
    required this.createdOn,
    required this.hotspots,
    this.$__typename = 'FloorPlan',
  });

  factory Query$GetFloorPlans$floorPlans.fromJson(Map<String, dynamic> json) {
    final l$siteId = json['siteId'];
    final l$name = json['name'];
    final l$imageUrl = json['imageUrl'];
    final l$id = json['id'];
    final l$createdOn = json['createdOn'];
    final l$hotspots = json['hotspots'];
    final l$$__typename = json['__typename'];
    return Query$GetFloorPlans$floorPlans(
      siteId: (l$siteId as String),
      name: (l$name as String),
      imageUrl: (l$imageUrl as String),
      id: (l$id as String),
      createdOn: DateTime.parse((l$createdOn as String)),
      hotspots: (l$hotspots as List<dynamic>)
          .map((e) => Query$GetFloorPlans$floorPlans$hotspots.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String siteId;

  final String name;

  final String imageUrl;

  final String id;

  final DateTime createdOn;

  final List<Query$GetFloorPlans$floorPlans$hotspots> hotspots;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$siteId = siteId;
    _resultData['siteId'] = l$siteId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$imageUrl = imageUrl;
    _resultData['imageUrl'] = l$imageUrl;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$createdOn = createdOn;
    _resultData['createdOn'] = l$createdOn.toIso8601String();
    final l$hotspots = hotspots;
    _resultData['hotspots'] = l$hotspots.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$siteId = siteId;
    final l$name = name;
    final l$imageUrl = imageUrl;
    final l$id = id;
    final l$createdOn = createdOn;
    final l$hotspots = hotspots;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$siteId,
      l$name,
      l$imageUrl,
      l$id,
      l$createdOn,
      Object.hashAll(l$hotspots.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetFloorPlans$floorPlans ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (l$siteId != lOther$siteId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$imageUrl = imageUrl;
    final lOther$imageUrl = other.imageUrl;
    if (l$imageUrl != lOther$imageUrl) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$hotspots = hotspots;
    final lOther$hotspots = other.hotspots;
    if (l$hotspots.length != lOther$hotspots.length) {
      return false;
    }
    for (int i = 0; i < l$hotspots.length; i++) {
      final l$hotspots$entry = l$hotspots[i];
      final lOther$hotspots$entry = lOther$hotspots[i];
      if (l$hotspots$entry != lOther$hotspots$entry) {
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

extension UtilityExtension$Query$GetFloorPlans$floorPlans
    on Query$GetFloorPlans$floorPlans {
  CopyWith$Query$GetFloorPlans$floorPlans<Query$GetFloorPlans$floorPlans>
      get copyWith => CopyWith$Query$GetFloorPlans$floorPlans(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFloorPlans$floorPlans<TRes> {
  factory CopyWith$Query$GetFloorPlans$floorPlans(
    Query$GetFloorPlans$floorPlans instance,
    TRes Function(Query$GetFloorPlans$floorPlans) then,
  ) = _CopyWithImpl$Query$GetFloorPlans$floorPlans;

  factory CopyWith$Query$GetFloorPlans$floorPlans.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFloorPlans$floorPlans;

  TRes call({
    String? siteId,
    String? name,
    String? imageUrl,
    String? id,
    DateTime? createdOn,
    List<Query$GetFloorPlans$floorPlans$hotspots>? hotspots,
    String? $__typename,
  });
  TRes hotspots(
      Iterable<Query$GetFloorPlans$floorPlans$hotspots> Function(
              Iterable<
                  CopyWith$Query$GetFloorPlans$floorPlans$hotspots<
                      Query$GetFloorPlans$floorPlans$hotspots>>)
          _fn);
}

class _CopyWithImpl$Query$GetFloorPlans$floorPlans<TRes>
    implements CopyWith$Query$GetFloorPlans$floorPlans<TRes> {
  _CopyWithImpl$Query$GetFloorPlans$floorPlans(
    this._instance,
    this._then,
  );

  final Query$GetFloorPlans$floorPlans _instance;

  final TRes Function(Query$GetFloorPlans$floorPlans) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? siteId = _undefined,
    Object? name = _undefined,
    Object? imageUrl = _undefined,
    Object? id = _undefined,
    Object? createdOn = _undefined,
    Object? hotspots = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFloorPlans$floorPlans(
        siteId: siteId == _undefined || siteId == null
            ? _instance.siteId
            : (siteId as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        imageUrl: imageUrl == _undefined || imageUrl == null
            ? _instance.imageUrl
            : (imageUrl as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        createdOn: createdOn == _undefined || createdOn == null
            ? _instance.createdOn
            : (createdOn as DateTime),
        hotspots: hotspots == _undefined || hotspots == null
            ? _instance.hotspots
            : (hotspots as List<Query$GetFloorPlans$floorPlans$hotspots>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes hotspots(
          Iterable<Query$GetFloorPlans$floorPlans$hotspots> Function(
                  Iterable<
                      CopyWith$Query$GetFloorPlans$floorPlans$hotspots<
                          Query$GetFloorPlans$floorPlans$hotspots>>)
              _fn) =>
      call(
          hotspots: _fn(_instance.hotspots
              .map((e) => CopyWith$Query$GetFloorPlans$floorPlans$hotspots(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetFloorPlans$floorPlans<TRes>
    implements CopyWith$Query$GetFloorPlans$floorPlans<TRes> {
  _CopyWithStubImpl$Query$GetFloorPlans$floorPlans(this._res);

  TRes _res;

  call({
    String? siteId,
    String? name,
    String? imageUrl,
    String? id,
    DateTime? createdOn,
    List<Query$GetFloorPlans$floorPlans$hotspots>? hotspots,
    String? $__typename,
  }) =>
      _res;

  hotspots(_fn) => _res;
}

class Query$GetFloorPlans$floorPlans$hotspots {
  Query$GetFloorPlans$floorPlans$hotspots({
    required this.id,
    required this.name,
    required this.x,
    required this.y,
    required this.status,
    required this.accessPointId,
    required this.orderIndex,
    this.$__typename = 'Hotspot',
  });

  factory Query$GetFloorPlans$floorPlans$hotspots.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$x = json['x'];
    final l$y = json['y'];
    final l$status = json['status'];
    final l$accessPointId = json['accessPointId'];
    final l$orderIndex = json['orderIndex'];
    final l$$__typename = json['__typename'];
    return Query$GetFloorPlans$floorPlans$hotspots(
      id: (l$id as String),
      name: (l$name as String),
      x: (l$x as num).toDouble(),
      y: (l$y as num).toDouble(),
      status: (l$status as String),
      accessPointId: (l$accessPointId as String),
      orderIndex: (l$orderIndex as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final double x;

  final double y;

  final String status;

  final String accessPointId;

  final int orderIndex;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$x = x;
    _resultData['x'] = l$x;
    final l$y = y;
    _resultData['y'] = l$y;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$accessPointId = accessPointId;
    _resultData['accessPointId'] = l$accessPointId;
    final l$orderIndex = orderIndex;
    _resultData['orderIndex'] = l$orderIndex;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$x = x;
    final l$y = y;
    final l$status = status;
    final l$accessPointId = accessPointId;
    final l$orderIndex = orderIndex;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$x,
      l$y,
      l$status,
      l$accessPointId,
      l$orderIndex,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetFloorPlans$floorPlans$hotspots ||
        runtimeType != other.runtimeType) {
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
    final l$x = x;
    final lOther$x = other.x;
    if (l$x != lOther$x) {
      return false;
    }
    final l$y = y;
    final lOther$y = other.y;
    if (l$y != lOther$y) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$accessPointId = accessPointId;
    final lOther$accessPointId = other.accessPointId;
    if (l$accessPointId != lOther$accessPointId) {
      return false;
    }
    final l$orderIndex = orderIndex;
    final lOther$orderIndex = other.orderIndex;
    if (l$orderIndex != lOther$orderIndex) {
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

extension UtilityExtension$Query$GetFloorPlans$floorPlans$hotspots
    on Query$GetFloorPlans$floorPlans$hotspots {
  CopyWith$Query$GetFloorPlans$floorPlans$hotspots<
          Query$GetFloorPlans$floorPlans$hotspots>
      get copyWith => CopyWith$Query$GetFloorPlans$floorPlans$hotspots(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetFloorPlans$floorPlans$hotspots<TRes> {
  factory CopyWith$Query$GetFloorPlans$floorPlans$hotspots(
    Query$GetFloorPlans$floorPlans$hotspots instance,
    TRes Function(Query$GetFloorPlans$floorPlans$hotspots) then,
  ) = _CopyWithImpl$Query$GetFloorPlans$floorPlans$hotspots;

  factory CopyWith$Query$GetFloorPlans$floorPlans$hotspots.stub(TRes res) =
      _CopyWithStubImpl$Query$GetFloorPlans$floorPlans$hotspots;

  TRes call({
    String? id,
    String? name,
    double? x,
    double? y,
    String? status,
    String? accessPointId,
    int? orderIndex,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetFloorPlans$floorPlans$hotspots<TRes>
    implements CopyWith$Query$GetFloorPlans$floorPlans$hotspots<TRes> {
  _CopyWithImpl$Query$GetFloorPlans$floorPlans$hotspots(
    this._instance,
    this._then,
  );

  final Query$GetFloorPlans$floorPlans$hotspots _instance;

  final TRes Function(Query$GetFloorPlans$floorPlans$hotspots) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? x = _undefined,
    Object? y = _undefined,
    Object? status = _undefined,
    Object? accessPointId = _undefined,
    Object? orderIndex = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetFloorPlans$floorPlans$hotspots(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        x: x == _undefined || x == null ? _instance.x : (x as double),
        y: y == _undefined || y == null ? _instance.y : (y as double),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as String),
        accessPointId: accessPointId == _undefined || accessPointId == null
            ? _instance.accessPointId
            : (accessPointId as String),
        orderIndex: orderIndex == _undefined || orderIndex == null
            ? _instance.orderIndex
            : (orderIndex as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetFloorPlans$floorPlans$hotspots<TRes>
    implements CopyWith$Query$GetFloorPlans$floorPlans$hotspots<TRes> {
  _CopyWithStubImpl$Query$GetFloorPlans$floorPlans$hotspots(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    double? x,
    double? y,
    String? status,
    String? accessPointId,
    int? orderIndex,
    String? $__typename,
  }) =>
      _res;
}
