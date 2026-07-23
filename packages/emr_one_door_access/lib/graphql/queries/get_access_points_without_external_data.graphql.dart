import 'package:gql/ast.dart';

class Variables$Query$GetAccessPointsWithoutExternalData {
  factory Variables$Query$GetAccessPointsWithoutExternalData({
    String? siteId,
    String? accessControllerId,
    String? accessPointId,
  }) => Variables$Query$GetAccessPointsWithoutExternalData._({
    if (siteId != null) r'siteId': siteId,
    if (accessControllerId != null) r'accessControllerId': accessControllerId,
    if (accessPointId != null) r'accessPointId': accessPointId,
  });

  Variables$Query$GetAccessPointsWithoutExternalData._(this._$data);

  factory Variables$Query$GetAccessPointsWithoutExternalData.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('siteId')) {
      final l$siteId = data['siteId'];
      result$data['siteId'] = (l$siteId as String?);
    }
    if (data.containsKey('accessControllerId')) {
      final l$accessControllerId = data['accessControllerId'];
      result$data['accessControllerId'] = (l$accessControllerId as String?);
    }
    if (data.containsKey('accessPointId')) {
      final l$accessPointId = data['accessPointId'];
      result$data['accessPointId'] = (l$accessPointId as String?);
    }
    return Variables$Query$GetAccessPointsWithoutExternalData._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get siteId => (_$data['siteId'] as String?);

  String? get accessControllerId => (_$data['accessControllerId'] as String?);

  String? get accessPointId => (_$data['accessPointId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('siteId')) {
      final l$siteId = siteId;
      result$data['siteId'] = l$siteId;
    }
    if (_$data.containsKey('accessControllerId')) {
      final l$accessControllerId = accessControllerId;
      result$data['accessControllerId'] = l$accessControllerId;
    }
    if (_$data.containsKey('accessPointId')) {
      final l$accessPointId = accessPointId;
      result$data['accessPointId'] = l$accessPointId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetAccessPointsWithoutExternalData<
    Variables$Query$GetAccessPointsWithoutExternalData
  >
  get copyWith => CopyWith$Variables$Query$GetAccessPointsWithoutExternalData(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAccessPointsWithoutExternalData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (_$data.containsKey('siteId') != other._$data.containsKey('siteId')) {
      return false;
    }
    if (l$siteId != lOther$siteId) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (_$data.containsKey('accessControllerId') !=
        other._$data.containsKey('accessControllerId')) {
      return false;
    }
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$accessPointId = accessPointId;
    final lOther$accessPointId = other.accessPointId;
    if (_$data.containsKey('accessPointId') !=
        other._$data.containsKey('accessPointId')) {
      return false;
    }
    if (l$accessPointId != lOther$accessPointId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$siteId = siteId;
    final l$accessControllerId = accessControllerId;
    final l$accessPointId = accessPointId;
    return Object.hashAll([
      _$data.containsKey('siteId') ? l$siteId : const {},
      _$data.containsKey('accessControllerId')
          ? l$accessControllerId
          : const {},
      _$data.containsKey('accessPointId') ? l$accessPointId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetAccessPointsWithoutExternalData<
  TRes
> {
  factory CopyWith$Variables$Query$GetAccessPointsWithoutExternalData(
    Variables$Query$GetAccessPointsWithoutExternalData instance,
    TRes Function(Variables$Query$GetAccessPointsWithoutExternalData) then,
  ) = _CopyWithImpl$Variables$Query$GetAccessPointsWithoutExternalData;

  factory CopyWith$Variables$Query$GetAccessPointsWithoutExternalData.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$GetAccessPointsWithoutExternalData;

  TRes call({
    String? siteId,
    String? accessControllerId,
    String? accessPointId,
  });
}

class _CopyWithImpl$Variables$Query$GetAccessPointsWithoutExternalData<TRes>
    implements
        CopyWith$Variables$Query$GetAccessPointsWithoutExternalData<TRes> {
  _CopyWithImpl$Variables$Query$GetAccessPointsWithoutExternalData(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAccessPointsWithoutExternalData _instance;

  final TRes Function(Variables$Query$GetAccessPointsWithoutExternalData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? siteId = _undefined,
    Object? accessControllerId = _undefined,
    Object? accessPointId = _undefined,
  }) => _then(
    Variables$Query$GetAccessPointsWithoutExternalData._({
      ..._instance._$data,
      if (siteId != _undefined) 'siteId': (siteId as String?),
      if (accessControllerId != _undefined)
        'accessControllerId': (accessControllerId as String?),
      if (accessPointId != _undefined)
        'accessPointId': (accessPointId as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetAccessPointsWithoutExternalData<TRes>
    implements
        CopyWith$Variables$Query$GetAccessPointsWithoutExternalData<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAccessPointsWithoutExternalData(
    this._res,
  );

  TRes _res;

  call({String? siteId, String? accessControllerId, String? accessPointId}) =>
      _res;
}

class Query$GetAccessPointsWithoutExternalData {
  Query$GetAccessPointsWithoutExternalData({
    required this.accessPoints,
    this.$__typename = 'Query',
  });

  factory Query$GetAccessPointsWithoutExternalData.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accessPoints = json['accessPoints'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessPointsWithoutExternalData(
      accessPoints: (l$accessPoints as List<dynamic>)
          .map(
            (e) =>
                Query$GetAccessPointsWithoutExternalData$accessPoints.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAccessPointsWithoutExternalData$accessPoints>
  accessPoints;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accessPoints = accessPoints;
    _resultData['accessPoints'] = l$accessPoints
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accessPoints = accessPoints;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$accessPoints.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccessPointsWithoutExternalData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessPoints = accessPoints;
    final lOther$accessPoints = other.accessPoints;
    if (l$accessPoints.length != lOther$accessPoints.length) {
      return false;
    }
    for (int i = 0; i < l$accessPoints.length; i++) {
      final l$accessPoints$entry = l$accessPoints[i];
      final lOther$accessPoints$entry = lOther$accessPoints[i];
      if (l$accessPoints$entry != lOther$accessPoints$entry) {
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

extension UtilityExtension$Query$GetAccessPointsWithoutExternalData
    on Query$GetAccessPointsWithoutExternalData {
  CopyWith$Query$GetAccessPointsWithoutExternalData<
    Query$GetAccessPointsWithoutExternalData
  >
  get copyWith =>
      CopyWith$Query$GetAccessPointsWithoutExternalData(this, (i) => i);
}

abstract class CopyWith$Query$GetAccessPointsWithoutExternalData<TRes> {
  factory CopyWith$Query$GetAccessPointsWithoutExternalData(
    Query$GetAccessPointsWithoutExternalData instance,
    TRes Function(Query$GetAccessPointsWithoutExternalData) then,
  ) = _CopyWithImpl$Query$GetAccessPointsWithoutExternalData;

  factory CopyWith$Query$GetAccessPointsWithoutExternalData.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccessPointsWithoutExternalData;

  TRes call({
    List<Query$GetAccessPointsWithoutExternalData$accessPoints>? accessPoints,
    String? $__typename,
  });
  TRes accessPoints(
    Iterable<Query$GetAccessPointsWithoutExternalData$accessPoints> Function(
      Iterable<
        CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints<
          Query$GetAccessPointsWithoutExternalData$accessPoints
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAccessPointsWithoutExternalData<TRes>
    implements CopyWith$Query$GetAccessPointsWithoutExternalData<TRes> {
  _CopyWithImpl$Query$GetAccessPointsWithoutExternalData(
    this._instance,
    this._then,
  );

  final Query$GetAccessPointsWithoutExternalData _instance;

  final TRes Function(Query$GetAccessPointsWithoutExternalData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessPoints = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccessPointsWithoutExternalData(
      accessPoints: accessPoints == _undefined || accessPoints == null
          ? _instance.accessPoints
          : (accessPoints
                as List<Query$GetAccessPointsWithoutExternalData$accessPoints>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes accessPoints(
    Iterable<Query$GetAccessPointsWithoutExternalData$accessPoints> Function(
      Iterable<
        CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints<
          Query$GetAccessPointsWithoutExternalData$accessPoints
        >
      >,
    )
    _fn,
  ) => call(
    accessPoints: _fn(
      _instance.accessPoints.map(
        (e) => CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetAccessPointsWithoutExternalData<TRes>
    implements CopyWith$Query$GetAccessPointsWithoutExternalData<TRes> {
  _CopyWithStubImpl$Query$GetAccessPointsWithoutExternalData(this._res);

  TRes _res;

  call({
    List<Query$GetAccessPointsWithoutExternalData$accessPoints>? accessPoints,
    String? $__typename,
  }) => _res;

  accessPoints(_fn) => _res;
}

const documentNodeQueryGetAccessPointsWithoutExternalData = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAccessPointsWithoutExternalData'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'siteId')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'accessControllerId')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'accessPointId')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'accessPoints'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'siteId'),
                value: VariableNode(name: NameNode(value: 'siteId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'accessControllerId'),
                value: VariableNode(
                  name: NameNode(value: 'accessControllerId'),
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'accessPointId'),
                value: VariableNode(name: NameNode(value: 'accessPointId')),
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
                  name: NameNode(value: 'externalId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'entity'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'accessControllerId'),
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
                  name: NameNode(value: 'restricted'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'groups'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'azureId'),
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
                        name: NameNode(value: 'id'),
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
                  name: NameNode(value: 'camera'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'cameraName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'ipAddress'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'rtspUrl'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'snapshotUrl'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'username'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'createdUtc'),
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
  ],
);

class Query$GetAccessPointsWithoutExternalData$accessPoints {
  Query$GetAccessPointsWithoutExternalData$accessPoints({
    required this.id,
    required this.externalId,
    required this.entity,
    required this.accessControllerId,
    required this.name,
    required this.restricted,
    this.groups,
    this.camera,
    this.$__typename = 'AccessPoint',
  });

  factory Query$GetAccessPointsWithoutExternalData$accessPoints.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$externalId = json['externalId'];
    final l$entity = json['entity'];
    final l$accessControllerId = json['accessControllerId'];
    final l$name = json['name'];
    final l$restricted = json['restricted'];
    final l$groups = json['groups'];
    final l$camera = json['camera'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessPointsWithoutExternalData$accessPoints(
      id: (l$id as String),
      externalId: (l$externalId as String),
      entity: (l$entity as String),
      accessControllerId: (l$accessControllerId as String),
      name: (l$name as String),
      restricted: (l$restricted as bool),
      groups: (l$groups as List<dynamic>?)
          ?.map(
            (e) =>
                Query$GetAccessPointsWithoutExternalData$accessPoints$groups.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      camera: l$camera == null
          ? null
          : Query$GetAccessPointsWithoutExternalData$accessPoints$camera.fromJson(
              (l$camera as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String externalId;

  final String entity;

  final String accessControllerId;

  final String name;

  final bool restricted;

  final List<Query$GetAccessPointsWithoutExternalData$accessPoints$groups>?
  groups;

  final Query$GetAccessPointsWithoutExternalData$accessPoints$camera? camera;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$externalId = externalId;
    _resultData['externalId'] = l$externalId;
    final l$entity = entity;
    _resultData['entity'] = l$entity;
    final l$accessControllerId = accessControllerId;
    _resultData['accessControllerId'] = l$accessControllerId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$restricted = restricted;
    _resultData['restricted'] = l$restricted;
    final l$groups = groups;
    _resultData['groups'] = l$groups?.map((e) => e.toJson()).toList();
    final l$camera = camera;
    _resultData['camera'] = l$camera?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$externalId = externalId;
    final l$entity = entity;
    final l$accessControllerId = accessControllerId;
    final l$name = name;
    final l$restricted = restricted;
    final l$groups = groups;
    final l$camera = camera;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$externalId,
      l$entity,
      l$accessControllerId,
      l$name,
      l$restricted,
      l$groups == null ? null : Object.hashAll(l$groups.map((v) => v)),
      l$camera,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccessPointsWithoutExternalData$accessPoints ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$entity = entity;
    final lOther$entity = other.entity;
    if (l$entity != lOther$entity) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$restricted = restricted;
    final lOther$restricted = other.restricted;
    if (l$restricted != lOther$restricted) {
      return false;
    }
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (l$groups != null && lOther$groups != null) {
      if (l$groups.length != lOther$groups.length) {
        return false;
      }
      for (int i = 0; i < l$groups.length; i++) {
        final l$groups$entry = l$groups[i];
        final lOther$groups$entry = lOther$groups[i];
        if (l$groups$entry != lOther$groups$entry) {
          return false;
        }
      }
    } else if (l$groups != lOther$groups) {
      return false;
    }
    final l$camera = camera;
    final lOther$camera = other.camera;
    if (l$camera != lOther$camera) {
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

extension UtilityExtension$Query$GetAccessPointsWithoutExternalData$accessPoints
    on Query$GetAccessPointsWithoutExternalData$accessPoints {
  CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints<
    Query$GetAccessPointsWithoutExternalData$accessPoints
  >
  get copyWith =>
      CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints<
  TRes
> {
  factory CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints(
    Query$GetAccessPointsWithoutExternalData$accessPoints instance,
    TRes Function(Query$GetAccessPointsWithoutExternalData$accessPoints) then,
  ) = _CopyWithImpl$Query$GetAccessPointsWithoutExternalData$accessPoints;

  factory CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccessPointsWithoutExternalData$accessPoints;

  TRes call({
    String? id,
    String? externalId,
    String? entity,
    String? accessControllerId,
    String? name,
    bool? restricted,
    List<Query$GetAccessPointsWithoutExternalData$accessPoints$groups>? groups,
    Query$GetAccessPointsWithoutExternalData$accessPoints$camera? camera,
    String? $__typename,
  });
  TRes groups(
    Iterable<Query$GetAccessPointsWithoutExternalData$accessPoints$groups>?
    Function(
      Iterable<
        CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$groups<
          Query$GetAccessPointsWithoutExternalData$accessPoints$groups
        >
      >?,
    )
    _fn,
  );
  CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$camera<TRes>
  get camera;
}

class _CopyWithImpl$Query$GetAccessPointsWithoutExternalData$accessPoints<TRes>
    implements
        CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints<TRes> {
  _CopyWithImpl$Query$GetAccessPointsWithoutExternalData$accessPoints(
    this._instance,
    this._then,
  );

  final Query$GetAccessPointsWithoutExternalData$accessPoints _instance;

  final TRes Function(Query$GetAccessPointsWithoutExternalData$accessPoints)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? externalId = _undefined,
    Object? entity = _undefined,
    Object? accessControllerId = _undefined,
    Object? name = _undefined,
    Object? restricted = _undefined,
    Object? groups = _undefined,
    Object? camera = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccessPointsWithoutExternalData$accessPoints(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      externalId: externalId == _undefined || externalId == null
          ? _instance.externalId
          : (externalId as String),
      entity: entity == _undefined || entity == null
          ? _instance.entity
          : (entity as String),
      accessControllerId:
          accessControllerId == _undefined || accessControllerId == null
          ? _instance.accessControllerId
          : (accessControllerId as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      restricted: restricted == _undefined || restricted == null
          ? _instance.restricted
          : (restricted as bool),
      groups: groups == _undefined
          ? _instance.groups
          : (groups
                as List<
                  Query$GetAccessPointsWithoutExternalData$accessPoints$groups
                >?),
      camera: camera == _undefined
          ? _instance.camera
          : (camera
                as Query$GetAccessPointsWithoutExternalData$accessPoints$camera?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes groups(
    Iterable<Query$GetAccessPointsWithoutExternalData$accessPoints$groups>?
    Function(
      Iterable<
        CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$groups<
          Query$GetAccessPointsWithoutExternalData$accessPoints$groups
        >
      >?,
    )
    _fn,
  ) => call(
    groups: _fn(
      _instance.groups?.map(
        (e) =>
            CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$groups(
              e,
              (i) => i,
            ),
      ),
    )?.toList(),
  );

  CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$camera<TRes>
  get camera {
    final local$camera = _instance.camera;
    return local$camera == null
        ? CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$camera.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$camera(
            local$camera,
            (e) => call(camera: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetAccessPointsWithoutExternalData$accessPoints<
  TRes
>
    implements
        CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints<TRes> {
  _CopyWithStubImpl$Query$GetAccessPointsWithoutExternalData$accessPoints(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? externalId,
    String? entity,
    String? accessControllerId,
    String? name,
    bool? restricted,
    List<Query$GetAccessPointsWithoutExternalData$accessPoints$groups>? groups,
    Query$GetAccessPointsWithoutExternalData$accessPoints$camera? camera,
    String? $__typename,
  }) => _res;

  groups(_fn) => _res;

  CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$camera<TRes>
  get camera =>
      CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$camera.stub(
        _res,
      );
}

class Query$GetAccessPointsWithoutExternalData$accessPoints$groups {
  Query$GetAccessPointsWithoutExternalData$accessPoints$groups({
    this.azureId,
    required this.name,
    required this.id,
    this.$__typename = 'Group',
  });

  factory Query$GetAccessPointsWithoutExternalData$accessPoints$groups.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$azureId = json['azureId'];
    final l$name = json['name'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessPointsWithoutExternalData$accessPoints$groups(
      azureId: (l$azureId as String?),
      name: (l$name as String),
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? azureId;

  final String name;

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$azureId = azureId;
    _resultData['azureId'] = l$azureId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$azureId = azureId;
    final l$name = name;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$azureId, l$name, l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccessPointsWithoutExternalData$accessPoints$groups ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$azureId = azureId;
    final lOther$azureId = other.azureId;
    if (l$azureId != lOther$azureId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetAccessPointsWithoutExternalData$accessPoints$groups
    on Query$GetAccessPointsWithoutExternalData$accessPoints$groups {
  CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$groups<
    Query$GetAccessPointsWithoutExternalData$accessPoints$groups
  >
  get copyWith =>
      CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$groups(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$groups<
  TRes
> {
  factory CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$groups(
    Query$GetAccessPointsWithoutExternalData$accessPoints$groups instance,
    TRes Function(Query$GetAccessPointsWithoutExternalData$accessPoints$groups)
    then,
  ) = _CopyWithImpl$Query$GetAccessPointsWithoutExternalData$accessPoints$groups;

  factory CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$groups.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccessPointsWithoutExternalData$accessPoints$groups;

  TRes call({String? azureId, String? name, String? id, String? $__typename});
}

class _CopyWithImpl$Query$GetAccessPointsWithoutExternalData$accessPoints$groups<
  TRes
>
    implements
        CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$groups<
          TRes
        > {
  _CopyWithImpl$Query$GetAccessPointsWithoutExternalData$accessPoints$groups(
    this._instance,
    this._then,
  );

  final Query$GetAccessPointsWithoutExternalData$accessPoints$groups _instance;

  final TRes Function(
    Query$GetAccessPointsWithoutExternalData$accessPoints$groups,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? azureId = _undefined,
    Object? name = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccessPointsWithoutExternalData$accessPoints$groups(
      azureId: azureId == _undefined ? _instance.azureId : (azureId as String?),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccessPointsWithoutExternalData$accessPoints$groups<
  TRes
>
    implements
        CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$groups<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccessPointsWithoutExternalData$accessPoints$groups(
    this._res,
  );

  TRes _res;

  call({String? azureId, String? name, String? id, String? $__typename}) =>
      _res;
}

class Query$GetAccessPointsWithoutExternalData$accessPoints$camera {
  Query$GetAccessPointsWithoutExternalData$accessPoints$camera({
    required this.cameraName,
    required this.ipAddress,
    required this.rtspUrl,
    required this.snapshotUrl,
    this.username,
    required this.createdUtc,
    this.$__typename = 'AccessPointCamera',
  });

  factory Query$GetAccessPointsWithoutExternalData$accessPoints$camera.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$cameraName = json['cameraName'];
    final l$ipAddress = json['ipAddress'];
    final l$rtspUrl = json['rtspUrl'];
    final l$snapshotUrl = json['snapshotUrl'];
    final l$username = json['username'];
    final l$createdUtc = json['createdUtc'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessPointsWithoutExternalData$accessPoints$camera(
      cameraName: (l$cameraName as String),
      ipAddress: (l$ipAddress as String),
      rtspUrl: (l$rtspUrl as String),
      snapshotUrl: (l$snapshotUrl as String),
      username: (l$username as String?),
      createdUtc: DateTime.parse((l$createdUtc as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String cameraName;

  final String ipAddress;

  final String rtspUrl;

  final String snapshotUrl;

  final String? username;

  final DateTime createdUtc;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cameraName = cameraName;
    _resultData['cameraName'] = l$cameraName;
    final l$ipAddress = ipAddress;
    _resultData['ipAddress'] = l$ipAddress;
    final l$rtspUrl = rtspUrl;
    _resultData['rtspUrl'] = l$rtspUrl;
    final l$snapshotUrl = snapshotUrl;
    _resultData['snapshotUrl'] = l$snapshotUrl;
    final l$username = username;
    _resultData['username'] = l$username;
    final l$createdUtc = createdUtc;
    _resultData['createdUtc'] = l$createdUtc.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cameraName = cameraName;
    final l$ipAddress = ipAddress;
    final l$rtspUrl = rtspUrl;
    final l$snapshotUrl = snapshotUrl;
    final l$username = username;
    final l$createdUtc = createdUtc;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$cameraName,
      l$ipAddress,
      l$rtspUrl,
      l$snapshotUrl,
      l$username,
      l$createdUtc,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccessPointsWithoutExternalData$accessPoints$camera ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cameraName = cameraName;
    final lOther$cameraName = other.cameraName;
    if (l$cameraName != lOther$cameraName) {
      return false;
    }
    final l$ipAddress = ipAddress;
    final lOther$ipAddress = other.ipAddress;
    if (l$ipAddress != lOther$ipAddress) {
      return false;
    }
    final l$rtspUrl = rtspUrl;
    final lOther$rtspUrl = other.rtspUrl;
    if (l$rtspUrl != lOther$rtspUrl) {
      return false;
    }
    final l$snapshotUrl = snapshotUrl;
    final lOther$snapshotUrl = other.snapshotUrl;
    if (l$snapshotUrl != lOther$snapshotUrl) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    final l$createdUtc = createdUtc;
    final lOther$createdUtc = other.createdUtc;
    if (l$createdUtc != lOther$createdUtc) {
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

extension UtilityExtension$Query$GetAccessPointsWithoutExternalData$accessPoints$camera
    on Query$GetAccessPointsWithoutExternalData$accessPoints$camera {
  CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$camera<
    Query$GetAccessPointsWithoutExternalData$accessPoints$camera
  >
  get copyWith =>
      CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$camera(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$camera<
  TRes
> {
  factory CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$camera(
    Query$GetAccessPointsWithoutExternalData$accessPoints$camera instance,
    TRes Function(Query$GetAccessPointsWithoutExternalData$accessPoints$camera)
    then,
  ) = _CopyWithImpl$Query$GetAccessPointsWithoutExternalData$accessPoints$camera;

  factory CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$camera.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccessPointsWithoutExternalData$accessPoints$camera;

  TRes call({
    String? cameraName,
    String? ipAddress,
    String? rtspUrl,
    String? snapshotUrl,
    String? username,
    DateTime? createdUtc,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccessPointsWithoutExternalData$accessPoints$camera<
  TRes
>
    implements
        CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$camera<
          TRes
        > {
  _CopyWithImpl$Query$GetAccessPointsWithoutExternalData$accessPoints$camera(
    this._instance,
    this._then,
  );

  final Query$GetAccessPointsWithoutExternalData$accessPoints$camera _instance;

  final TRes Function(
    Query$GetAccessPointsWithoutExternalData$accessPoints$camera,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cameraName = _undefined,
    Object? ipAddress = _undefined,
    Object? rtspUrl = _undefined,
    Object? snapshotUrl = _undefined,
    Object? username = _undefined,
    Object? createdUtc = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccessPointsWithoutExternalData$accessPoints$camera(
      cameraName: cameraName == _undefined || cameraName == null
          ? _instance.cameraName
          : (cameraName as String),
      ipAddress: ipAddress == _undefined || ipAddress == null
          ? _instance.ipAddress
          : (ipAddress as String),
      rtspUrl: rtspUrl == _undefined || rtspUrl == null
          ? _instance.rtspUrl
          : (rtspUrl as String),
      snapshotUrl: snapshotUrl == _undefined || snapshotUrl == null
          ? _instance.snapshotUrl
          : (snapshotUrl as String),
      username: username == _undefined
          ? _instance.username
          : (username as String?),
      createdUtc: createdUtc == _undefined || createdUtc == null
          ? _instance.createdUtc
          : (createdUtc as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccessPointsWithoutExternalData$accessPoints$camera<
  TRes
>
    implements
        CopyWith$Query$GetAccessPointsWithoutExternalData$accessPoints$camera<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccessPointsWithoutExternalData$accessPoints$camera(
    this._res,
  );

  TRes _res;

  call({
    String? cameraName,
    String? ipAddress,
    String? rtspUrl,
    String? snapshotUrl,
    String? username,
    DateTime? createdUtc,
    String? $__typename,
  }) => _res;
}
