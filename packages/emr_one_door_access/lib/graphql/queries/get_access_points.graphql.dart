import 'package:gql/ast.dart';

class Variables$Query$GetAccessPoints {
  factory Variables$Query$GetAccessPoints({
    String? siteId,
    String? accessControllerId,
    String? accessPointId,
  }) => Variables$Query$GetAccessPoints._({
    if (siteId != null) r'siteId': siteId,
    if (accessControllerId != null) r'accessControllerId': accessControllerId,
    if (accessPointId != null) r'accessPointId': accessPointId,
  });

  Variables$Query$GetAccessPoints._(this._$data);

  factory Variables$Query$GetAccessPoints.fromJson(Map<String, dynamic> data) {
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
    return Variables$Query$GetAccessPoints._(result$data);
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

  CopyWith$Variables$Query$GetAccessPoints<Variables$Query$GetAccessPoints>
  get copyWith => CopyWith$Variables$Query$GetAccessPoints(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAccessPoints ||
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

abstract class CopyWith$Variables$Query$GetAccessPoints<TRes> {
  factory CopyWith$Variables$Query$GetAccessPoints(
    Variables$Query$GetAccessPoints instance,
    TRes Function(Variables$Query$GetAccessPoints) then,
  ) = _CopyWithImpl$Variables$Query$GetAccessPoints;

  factory CopyWith$Variables$Query$GetAccessPoints.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAccessPoints;

  TRes call({
    String? siteId,
    String? accessControllerId,
    String? accessPointId,
  });
}

class _CopyWithImpl$Variables$Query$GetAccessPoints<TRes>
    implements CopyWith$Variables$Query$GetAccessPoints<TRes> {
  _CopyWithImpl$Variables$Query$GetAccessPoints(this._instance, this._then);

  final Variables$Query$GetAccessPoints _instance;

  final TRes Function(Variables$Query$GetAccessPoints) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? siteId = _undefined,
    Object? accessControllerId = _undefined,
    Object? accessPointId = _undefined,
  }) => _then(
    Variables$Query$GetAccessPoints._({
      ..._instance._$data,
      if (siteId != _undefined) 'siteId': (siteId as String?),
      if (accessControllerId != _undefined)
        'accessControllerId': (accessControllerId as String?),
      if (accessPointId != _undefined)
        'accessPointId': (accessPointId as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetAccessPoints<TRes>
    implements CopyWith$Variables$Query$GetAccessPoints<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAccessPoints(this._res);

  TRes _res;

  call({String? siteId, String? accessControllerId, String? accessPointId}) =>
      _res;
}

class Query$GetAccessPoints {
  Query$GetAccessPoints({
    required this.accessPoints,
    this.$__typename = 'Query',
  });

  factory Query$GetAccessPoints.fromJson(Map<String, dynamic> json) {
    final l$accessPoints = json['accessPoints'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessPoints(
      accessPoints: (l$accessPoints as List<dynamic>)
          .map(
            (e) => Query$GetAccessPoints$accessPoints.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAccessPoints$accessPoints> accessPoints;

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
    if (other is! Query$GetAccessPoints || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetAccessPoints on Query$GetAccessPoints {
  CopyWith$Query$GetAccessPoints<Query$GetAccessPoints> get copyWith =>
      CopyWith$Query$GetAccessPoints(this, (i) => i);
}

abstract class CopyWith$Query$GetAccessPoints<TRes> {
  factory CopyWith$Query$GetAccessPoints(
    Query$GetAccessPoints instance,
    TRes Function(Query$GetAccessPoints) then,
  ) = _CopyWithImpl$Query$GetAccessPoints;

  factory CopyWith$Query$GetAccessPoints.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccessPoints;

  TRes call({
    List<Query$GetAccessPoints$accessPoints>? accessPoints,
    String? $__typename,
  });
  TRes accessPoints(
    Iterable<Query$GetAccessPoints$accessPoints> Function(
      Iterable<
        CopyWith$Query$GetAccessPoints$accessPoints<
          Query$GetAccessPoints$accessPoints
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAccessPoints<TRes>
    implements CopyWith$Query$GetAccessPoints<TRes> {
  _CopyWithImpl$Query$GetAccessPoints(this._instance, this._then);

  final Query$GetAccessPoints _instance;

  final TRes Function(Query$GetAccessPoints) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessPoints = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccessPoints(
      accessPoints: accessPoints == _undefined || accessPoints == null
          ? _instance.accessPoints
          : (accessPoints as List<Query$GetAccessPoints$accessPoints>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes accessPoints(
    Iterable<Query$GetAccessPoints$accessPoints> Function(
      Iterable<
        CopyWith$Query$GetAccessPoints$accessPoints<
          Query$GetAccessPoints$accessPoints
        >
      >,
    )
    _fn,
  ) => call(
    accessPoints: _fn(
      _instance.accessPoints.map(
        (e) => CopyWith$Query$GetAccessPoints$accessPoints(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetAccessPoints<TRes>
    implements CopyWith$Query$GetAccessPoints<TRes> {
  _CopyWithStubImpl$Query$GetAccessPoints(this._res);

  TRes _res;

  call({
    List<Query$GetAccessPoints$accessPoints>? accessPoints,
    String? $__typename,
  }) => _res;

  accessPoints(_fn) => _res;
}

const documentNodeQueryGetAccessPoints = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetAccessPoints'),
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
                  name: NameNode(value: 'schedules'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'token'),
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
                        name: NameNode(value: 'description'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'scheduleDefinition'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'userFriendlyStrings'),
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
                  name: NameNode(value: 'events'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'rowId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'cardNumber'),
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
                        name: NameNode(value: 'utcTime'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'topic0'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'topic1'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'topic2'),
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
                        name: NameNode(value: 'accessPointName'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'userId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'email'),
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
                        name: NameNode(value: 'streamPath'),
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
                        name: NameNode(value: 'accessPoints'),
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
                                    name: NameNode(value: 'externalId'),
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
                                    name: NameNode(value: 'description'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'schedules'),
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

class Query$GetAccessPoints$accessPoints {
  Query$GetAccessPoints$accessPoints({
    required this.id,
    required this.externalId,
    required this.entity,
    required this.accessControllerId,
    required this.name,
    required this.restricted,
    this.schedules,
    this.events,
    this.camera,
    this.groups,
    this.$__typename = 'AccessPoint',
  });

  factory Query$GetAccessPoints$accessPoints.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$externalId = json['externalId'];
    final l$entity = json['entity'];
    final l$accessControllerId = json['accessControllerId'];
    final l$name = json['name'];
    final l$restricted = json['restricted'];
    final l$schedules = json['schedules'];
    final l$events = json['events'];
    final l$camera = json['camera'];
    final l$groups = json['groups'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessPoints$accessPoints(
      id: (l$id as String),
      externalId: (l$externalId as String),
      entity: (l$entity as String),
      accessControllerId: (l$accessControllerId as String),
      name: (l$name as String),
      restricted: (l$restricted as bool),
      schedules: (l$schedules as List<dynamic>?)
          ?.map(
            (e) => Query$GetAccessPoints$accessPoints$schedules.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      events: (l$events as List<dynamic>?)
          ?.map(
            (e) => Query$GetAccessPoints$accessPoints$events.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      camera: l$camera == null
          ? null
          : Query$GetAccessPoints$accessPoints$camera.fromJson(
              (l$camera as Map<String, dynamic>),
            ),
      groups: (l$groups as List<dynamic>?)
          ?.map(
            (e) => Query$GetAccessPoints$accessPoints$groups.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String externalId;

  final String entity;

  final String accessControllerId;

  final String name;

  final bool restricted;

  final List<Query$GetAccessPoints$accessPoints$schedules>? schedules;

  final List<Query$GetAccessPoints$accessPoints$events>? events;

  final Query$GetAccessPoints$accessPoints$camera? camera;

  final List<Query$GetAccessPoints$accessPoints$groups>? groups;

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
    final l$schedules = schedules;
    _resultData['schedules'] = l$schedules?.map((e) => e.toJson()).toList();
    final l$events = events;
    _resultData['events'] = l$events?.map((e) => e.toJson()).toList();
    final l$camera = camera;
    _resultData['camera'] = l$camera?.toJson();
    final l$groups = groups;
    _resultData['groups'] = l$groups?.map((e) => e.toJson()).toList();
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
    final l$schedules = schedules;
    final l$events = events;
    final l$camera = camera;
    final l$groups = groups;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$externalId,
      l$entity,
      l$accessControllerId,
      l$name,
      l$restricted,
      l$schedules == null ? null : Object.hashAll(l$schedules.map((v) => v)),
      l$events == null ? null : Object.hashAll(l$events.map((v) => v)),
      l$camera,
      l$groups == null ? null : Object.hashAll(l$groups.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccessPoints$accessPoints ||
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
    final l$schedules = schedules;
    final lOther$schedules = other.schedules;
    if (l$schedules != null && lOther$schedules != null) {
      if (l$schedules.length != lOther$schedules.length) {
        return false;
      }
      for (int i = 0; i < l$schedules.length; i++) {
        final l$schedules$entry = l$schedules[i];
        final lOther$schedules$entry = lOther$schedules[i];
        if (l$schedules$entry != lOther$schedules$entry) {
          return false;
        }
      }
    } else if (l$schedules != lOther$schedules) {
      return false;
    }
    final l$events = events;
    final lOther$events = other.events;
    if (l$events != null && lOther$events != null) {
      if (l$events.length != lOther$events.length) {
        return false;
      }
      for (int i = 0; i < l$events.length; i++) {
        final l$events$entry = l$events[i];
        final lOther$events$entry = lOther$events[i];
        if (l$events$entry != lOther$events$entry) {
          return false;
        }
      }
    } else if (l$events != lOther$events) {
      return false;
    }
    final l$camera = camera;
    final lOther$camera = other.camera;
    if (l$camera != lOther$camera) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAccessPoints$accessPoints
    on Query$GetAccessPoints$accessPoints {
  CopyWith$Query$GetAccessPoints$accessPoints<
    Query$GetAccessPoints$accessPoints
  >
  get copyWith => CopyWith$Query$GetAccessPoints$accessPoints(this, (i) => i);
}

abstract class CopyWith$Query$GetAccessPoints$accessPoints<TRes> {
  factory CopyWith$Query$GetAccessPoints$accessPoints(
    Query$GetAccessPoints$accessPoints instance,
    TRes Function(Query$GetAccessPoints$accessPoints) then,
  ) = _CopyWithImpl$Query$GetAccessPoints$accessPoints;

  factory CopyWith$Query$GetAccessPoints$accessPoints.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccessPoints$accessPoints;

  TRes call({
    String? id,
    String? externalId,
    String? entity,
    String? accessControllerId,
    String? name,
    bool? restricted,
    List<Query$GetAccessPoints$accessPoints$schedules>? schedules,
    List<Query$GetAccessPoints$accessPoints$events>? events,
    Query$GetAccessPoints$accessPoints$camera? camera,
    List<Query$GetAccessPoints$accessPoints$groups>? groups,
    String? $__typename,
  });
  TRes schedules(
    Iterable<Query$GetAccessPoints$accessPoints$schedules>? Function(
      Iterable<
        CopyWith$Query$GetAccessPoints$accessPoints$schedules<
          Query$GetAccessPoints$accessPoints$schedules
        >
      >?,
    )
    _fn,
  );
  TRes events(
    Iterable<Query$GetAccessPoints$accessPoints$events>? Function(
      Iterable<
        CopyWith$Query$GetAccessPoints$accessPoints$events<
          Query$GetAccessPoints$accessPoints$events
        >
      >?,
    )
    _fn,
  );
  CopyWith$Query$GetAccessPoints$accessPoints$camera<TRes> get camera;
  TRes groups(
    Iterable<Query$GetAccessPoints$accessPoints$groups>? Function(
      Iterable<
        CopyWith$Query$GetAccessPoints$accessPoints$groups<
          Query$GetAccessPoints$accessPoints$groups
        >
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAccessPoints$accessPoints<TRes>
    implements CopyWith$Query$GetAccessPoints$accessPoints<TRes> {
  _CopyWithImpl$Query$GetAccessPoints$accessPoints(this._instance, this._then);

  final Query$GetAccessPoints$accessPoints _instance;

  final TRes Function(Query$GetAccessPoints$accessPoints) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? externalId = _undefined,
    Object? entity = _undefined,
    Object? accessControllerId = _undefined,
    Object? name = _undefined,
    Object? restricted = _undefined,
    Object? schedules = _undefined,
    Object? events = _undefined,
    Object? camera = _undefined,
    Object? groups = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccessPoints$accessPoints(
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
      schedules: schedules == _undefined
          ? _instance.schedules
          : (schedules as List<Query$GetAccessPoints$accessPoints$schedules>?),
      events: events == _undefined
          ? _instance.events
          : (events as List<Query$GetAccessPoints$accessPoints$events>?),
      camera: camera == _undefined
          ? _instance.camera
          : (camera as Query$GetAccessPoints$accessPoints$camera?),
      groups: groups == _undefined
          ? _instance.groups
          : (groups as List<Query$GetAccessPoints$accessPoints$groups>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes schedules(
    Iterable<Query$GetAccessPoints$accessPoints$schedules>? Function(
      Iterable<
        CopyWith$Query$GetAccessPoints$accessPoints$schedules<
          Query$GetAccessPoints$accessPoints$schedules
        >
      >?,
    )
    _fn,
  ) => call(
    schedules: _fn(
      _instance.schedules?.map(
        (e) =>
            CopyWith$Query$GetAccessPoints$accessPoints$schedules(e, (i) => i),
      ),
    )?.toList(),
  );

  TRes events(
    Iterable<Query$GetAccessPoints$accessPoints$events>? Function(
      Iterable<
        CopyWith$Query$GetAccessPoints$accessPoints$events<
          Query$GetAccessPoints$accessPoints$events
        >
      >?,
    )
    _fn,
  ) => call(
    events: _fn(
      _instance.events?.map(
        (e) => CopyWith$Query$GetAccessPoints$accessPoints$events(e, (i) => i),
      ),
    )?.toList(),
  );

  CopyWith$Query$GetAccessPoints$accessPoints$camera<TRes> get camera {
    final local$camera = _instance.camera;
    return local$camera == null
        ? CopyWith$Query$GetAccessPoints$accessPoints$camera.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetAccessPoints$accessPoints$camera(
            local$camera,
            (e) => call(camera: e),
          );
  }

  TRes groups(
    Iterable<Query$GetAccessPoints$accessPoints$groups>? Function(
      Iterable<
        CopyWith$Query$GetAccessPoints$accessPoints$groups<
          Query$GetAccessPoints$accessPoints$groups
        >
      >?,
    )
    _fn,
  ) => call(
    groups: _fn(
      _instance.groups?.map(
        (e) => CopyWith$Query$GetAccessPoints$accessPoints$groups(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetAccessPoints$accessPoints<TRes>
    implements CopyWith$Query$GetAccessPoints$accessPoints<TRes> {
  _CopyWithStubImpl$Query$GetAccessPoints$accessPoints(this._res);

  TRes _res;

  call({
    String? id,
    String? externalId,
    String? entity,
    String? accessControllerId,
    String? name,
    bool? restricted,
    List<Query$GetAccessPoints$accessPoints$schedules>? schedules,
    List<Query$GetAccessPoints$accessPoints$events>? events,
    Query$GetAccessPoints$accessPoints$camera? camera,
    List<Query$GetAccessPoints$accessPoints$groups>? groups,
    String? $__typename,
  }) => _res;

  schedules(_fn) => _res;

  events(_fn) => _res;

  CopyWith$Query$GetAccessPoints$accessPoints$camera<TRes> get camera =>
      CopyWith$Query$GetAccessPoints$accessPoints$camera.stub(_res);

  groups(_fn) => _res;
}

class Query$GetAccessPoints$accessPoints$schedules {
  Query$GetAccessPoints$accessPoints$schedules({
    required this.token,
    required this.name,
    required this.description,
    required this.scheduleDefinition,
    this.userFriendlyStrings,
    this.$__typename = 'Schedule',
  });

  factory Query$GetAccessPoints$accessPoints$schedules.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$token = json['token'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$scheduleDefinition = json['scheduleDefinition'];
    final l$userFriendlyStrings = json['userFriendlyStrings'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessPoints$accessPoints$schedules(
      token: (l$token as String),
      name: (l$name as String),
      description: (l$description as String),
      scheduleDefinition: (l$scheduleDefinition as String),
      userFriendlyStrings: (l$userFriendlyStrings as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String token;

  final String name;

  final String description;

  final String scheduleDefinition;

  final List<String?>? userFriendlyStrings;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$token = token;
    _resultData['token'] = l$token;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$scheduleDefinition = scheduleDefinition;
    _resultData['scheduleDefinition'] = l$scheduleDefinition;
    final l$userFriendlyStrings = userFriendlyStrings;
    _resultData['userFriendlyStrings'] = l$userFriendlyStrings
        ?.map((e) => e)
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$name = name;
    final l$description = description;
    final l$scheduleDefinition = scheduleDefinition;
    final l$userFriendlyStrings = userFriendlyStrings;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$token,
      l$name,
      l$description,
      l$scheduleDefinition,
      l$userFriendlyStrings == null
          ? null
          : Object.hashAll(l$userFriendlyStrings.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccessPoints$accessPoints$schedules ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$scheduleDefinition = scheduleDefinition;
    final lOther$scheduleDefinition = other.scheduleDefinition;
    if (l$scheduleDefinition != lOther$scheduleDefinition) {
      return false;
    }
    final l$userFriendlyStrings = userFriendlyStrings;
    final lOther$userFriendlyStrings = other.userFriendlyStrings;
    if (l$userFriendlyStrings != null && lOther$userFriendlyStrings != null) {
      if (l$userFriendlyStrings.length != lOther$userFriendlyStrings.length) {
        return false;
      }
      for (int i = 0; i < l$userFriendlyStrings.length; i++) {
        final l$userFriendlyStrings$entry = l$userFriendlyStrings[i];
        final lOther$userFriendlyStrings$entry = lOther$userFriendlyStrings[i];
        if (l$userFriendlyStrings$entry != lOther$userFriendlyStrings$entry) {
          return false;
        }
      }
    } else if (l$userFriendlyStrings != lOther$userFriendlyStrings) {
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

extension UtilityExtension$Query$GetAccessPoints$accessPoints$schedules
    on Query$GetAccessPoints$accessPoints$schedules {
  CopyWith$Query$GetAccessPoints$accessPoints$schedules<
    Query$GetAccessPoints$accessPoints$schedules
  >
  get copyWith =>
      CopyWith$Query$GetAccessPoints$accessPoints$schedules(this, (i) => i);
}

abstract class CopyWith$Query$GetAccessPoints$accessPoints$schedules<TRes> {
  factory CopyWith$Query$GetAccessPoints$accessPoints$schedules(
    Query$GetAccessPoints$accessPoints$schedules instance,
    TRes Function(Query$GetAccessPoints$accessPoints$schedules) then,
  ) = _CopyWithImpl$Query$GetAccessPoints$accessPoints$schedules;

  factory CopyWith$Query$GetAccessPoints$accessPoints$schedules.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccessPoints$accessPoints$schedules;

  TRes call({
    String? token,
    String? name,
    String? description,
    String? scheduleDefinition,
    List<String?>? userFriendlyStrings,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccessPoints$accessPoints$schedules<TRes>
    implements CopyWith$Query$GetAccessPoints$accessPoints$schedules<TRes> {
  _CopyWithImpl$Query$GetAccessPoints$accessPoints$schedules(
    this._instance,
    this._then,
  );

  final Query$GetAccessPoints$accessPoints$schedules _instance;

  final TRes Function(Query$GetAccessPoints$accessPoints$schedules) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? token = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? scheduleDefinition = _undefined,
    Object? userFriendlyStrings = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccessPoints$accessPoints$schedules(
      token: token == _undefined || token == null
          ? _instance.token
          : (token as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      scheduleDefinition:
          scheduleDefinition == _undefined || scheduleDefinition == null
          ? _instance.scheduleDefinition
          : (scheduleDefinition as String),
      userFriendlyStrings: userFriendlyStrings == _undefined
          ? _instance.userFriendlyStrings
          : (userFriendlyStrings as List<String?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccessPoints$accessPoints$schedules<TRes>
    implements CopyWith$Query$GetAccessPoints$accessPoints$schedules<TRes> {
  _CopyWithStubImpl$Query$GetAccessPoints$accessPoints$schedules(this._res);

  TRes _res;

  call({
    String? token,
    String? name,
    String? description,
    String? scheduleDefinition,
    List<String?>? userFriendlyStrings,
    String? $__typename,
  }) => _res;
}

class Query$GetAccessPoints$accessPoints$events {
  Query$GetAccessPoints$accessPoints$events({
    required this.rowId,
    this.cardNumber,
    required this.accessControllerId,
    required this.utcTime,
    this.topic0,
    this.topic1,
    this.topic2,
    this.accessPointId,
    this.accessPointName,
    this.userId,
    this.email,
    this.$__typename = 'DoorAccessAttemptEventsIndexResult',
  });

  factory Query$GetAccessPoints$accessPoints$events.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$rowId = json['rowId'];
    final l$cardNumber = json['cardNumber'];
    final l$accessControllerId = json['accessControllerId'];
    final l$utcTime = json['utcTime'];
    final l$topic0 = json['topic0'];
    final l$topic1 = json['topic1'];
    final l$topic2 = json['topic2'];
    final l$accessPointId = json['accessPointId'];
    final l$accessPointName = json['accessPointName'];
    final l$userId = json['userId'];
    final l$email = json['email'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessPoints$accessPoints$events(
      rowId: (l$rowId as int),
      cardNumber: (l$cardNumber as String?),
      accessControllerId: (l$accessControllerId as String),
      utcTime: DateTime.parse((l$utcTime as String)),
      topic0: (l$topic0 as String?),
      topic1: (l$topic1 as String?),
      topic2: (l$topic2 as String?),
      accessPointId: (l$accessPointId as String?),
      accessPointName: (l$accessPointName as String?),
      userId: (l$userId as String?),
      email: (l$email as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int rowId;

  final String? cardNumber;

  final String accessControllerId;

  final DateTime utcTime;

  final String? topic0;

  final String? topic1;

  final String? topic2;

  final String? accessPointId;

  final String? accessPointName;

  final String? userId;

  final String? email;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rowId = rowId;
    _resultData['rowId'] = l$rowId;
    final l$cardNumber = cardNumber;
    _resultData['cardNumber'] = l$cardNumber;
    final l$accessControllerId = accessControllerId;
    _resultData['accessControllerId'] = l$accessControllerId;
    final l$utcTime = utcTime;
    _resultData['utcTime'] = l$utcTime.toIso8601String();
    final l$topic0 = topic0;
    _resultData['topic0'] = l$topic0;
    final l$topic1 = topic1;
    _resultData['topic1'] = l$topic1;
    final l$topic2 = topic2;
    _resultData['topic2'] = l$topic2;
    final l$accessPointId = accessPointId;
    _resultData['accessPointId'] = l$accessPointId;
    final l$accessPointName = accessPointName;
    _resultData['accessPointName'] = l$accessPointName;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rowId = rowId;
    final l$cardNumber = cardNumber;
    final l$accessControllerId = accessControllerId;
    final l$utcTime = utcTime;
    final l$topic0 = topic0;
    final l$topic1 = topic1;
    final l$topic2 = topic2;
    final l$accessPointId = accessPointId;
    final l$accessPointName = accessPointName;
    final l$userId = userId;
    final l$email = email;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$rowId,
      l$cardNumber,
      l$accessControllerId,
      l$utcTime,
      l$topic0,
      l$topic1,
      l$topic2,
      l$accessPointId,
      l$accessPointName,
      l$userId,
      l$email,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccessPoints$accessPoints$events ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$rowId = rowId;
    final lOther$rowId = other.rowId;
    if (l$rowId != lOther$rowId) {
      return false;
    }
    final l$cardNumber = cardNumber;
    final lOther$cardNumber = other.cardNumber;
    if (l$cardNumber != lOther$cardNumber) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$utcTime = utcTime;
    final lOther$utcTime = other.utcTime;
    if (l$utcTime != lOther$utcTime) {
      return false;
    }
    final l$topic0 = topic0;
    final lOther$topic0 = other.topic0;
    if (l$topic0 != lOther$topic0) {
      return false;
    }
    final l$topic1 = topic1;
    final lOther$topic1 = other.topic1;
    if (l$topic1 != lOther$topic1) {
      return false;
    }
    final l$topic2 = topic2;
    final lOther$topic2 = other.topic2;
    if (l$topic2 != lOther$topic2) {
      return false;
    }
    final l$accessPointId = accessPointId;
    final lOther$accessPointId = other.accessPointId;
    if (l$accessPointId != lOther$accessPointId) {
      return false;
    }
    final l$accessPointName = accessPointName;
    final lOther$accessPointName = other.accessPointName;
    if (l$accessPointName != lOther$accessPointName) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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

extension UtilityExtension$Query$GetAccessPoints$accessPoints$events
    on Query$GetAccessPoints$accessPoints$events {
  CopyWith$Query$GetAccessPoints$accessPoints$events<
    Query$GetAccessPoints$accessPoints$events
  >
  get copyWith =>
      CopyWith$Query$GetAccessPoints$accessPoints$events(this, (i) => i);
}

abstract class CopyWith$Query$GetAccessPoints$accessPoints$events<TRes> {
  factory CopyWith$Query$GetAccessPoints$accessPoints$events(
    Query$GetAccessPoints$accessPoints$events instance,
    TRes Function(Query$GetAccessPoints$accessPoints$events) then,
  ) = _CopyWithImpl$Query$GetAccessPoints$accessPoints$events;

  factory CopyWith$Query$GetAccessPoints$accessPoints$events.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccessPoints$accessPoints$events;

  TRes call({
    int? rowId,
    String? cardNumber,
    String? accessControllerId,
    DateTime? utcTime,
    String? topic0,
    String? topic1,
    String? topic2,
    String? accessPointId,
    String? accessPointName,
    String? userId,
    String? email,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccessPoints$accessPoints$events<TRes>
    implements CopyWith$Query$GetAccessPoints$accessPoints$events<TRes> {
  _CopyWithImpl$Query$GetAccessPoints$accessPoints$events(
    this._instance,
    this._then,
  );

  final Query$GetAccessPoints$accessPoints$events _instance;

  final TRes Function(Query$GetAccessPoints$accessPoints$events) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rowId = _undefined,
    Object? cardNumber = _undefined,
    Object? accessControllerId = _undefined,
    Object? utcTime = _undefined,
    Object? topic0 = _undefined,
    Object? topic1 = _undefined,
    Object? topic2 = _undefined,
    Object? accessPointId = _undefined,
    Object? accessPointName = _undefined,
    Object? userId = _undefined,
    Object? email = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccessPoints$accessPoints$events(
      rowId: rowId == _undefined || rowId == null
          ? _instance.rowId
          : (rowId as int),
      cardNumber: cardNumber == _undefined
          ? _instance.cardNumber
          : (cardNumber as String?),
      accessControllerId:
          accessControllerId == _undefined || accessControllerId == null
          ? _instance.accessControllerId
          : (accessControllerId as String),
      utcTime: utcTime == _undefined || utcTime == null
          ? _instance.utcTime
          : (utcTime as DateTime),
      topic0: topic0 == _undefined ? _instance.topic0 : (topic0 as String?),
      topic1: topic1 == _undefined ? _instance.topic1 : (topic1 as String?),
      topic2: topic2 == _undefined ? _instance.topic2 : (topic2 as String?),
      accessPointId: accessPointId == _undefined
          ? _instance.accessPointId
          : (accessPointId as String?),
      accessPointName: accessPointName == _undefined
          ? _instance.accessPointName
          : (accessPointName as String?),
      userId: userId == _undefined ? _instance.userId : (userId as String?),
      email: email == _undefined ? _instance.email : (email as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccessPoints$accessPoints$events<TRes>
    implements CopyWith$Query$GetAccessPoints$accessPoints$events<TRes> {
  _CopyWithStubImpl$Query$GetAccessPoints$accessPoints$events(this._res);

  TRes _res;

  call({
    int? rowId,
    String? cardNumber,
    String? accessControllerId,
    DateTime? utcTime,
    String? topic0,
    String? topic1,
    String? topic2,
    String? accessPointId,
    String? accessPointName,
    String? userId,
    String? email,
    String? $__typename,
  }) => _res;
}

class Query$GetAccessPoints$accessPoints$camera {
  Query$GetAccessPoints$accessPoints$camera({
    required this.cameraName,
    required this.ipAddress,
    required this.rtspUrl,
    required this.snapshotUrl,
    this.username,
    this.streamPath,
    required this.createdUtc,
    this.$__typename = 'AccessPointCamera',
  });

  factory Query$GetAccessPoints$accessPoints$camera.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$cameraName = json['cameraName'];
    final l$ipAddress = json['ipAddress'];
    final l$rtspUrl = json['rtspUrl'];
    final l$snapshotUrl = json['snapshotUrl'];
    final l$username = json['username'];
    final l$streamPath = json['streamPath'];
    final l$createdUtc = json['createdUtc'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessPoints$accessPoints$camera(
      cameraName: (l$cameraName as String),
      ipAddress: (l$ipAddress as String),
      rtspUrl: (l$rtspUrl as String),
      snapshotUrl: (l$snapshotUrl as String),
      username: (l$username as String?),
      streamPath: (l$streamPath as String?),
      createdUtc: DateTime.parse((l$createdUtc as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String cameraName;

  final String ipAddress;

  final String rtspUrl;

  final String snapshotUrl;

  final String? username;

  final String? streamPath;

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
    final l$streamPath = streamPath;
    _resultData['streamPath'] = l$streamPath;
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
    final l$streamPath = streamPath;
    final l$createdUtc = createdUtc;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$cameraName,
      l$ipAddress,
      l$rtspUrl,
      l$snapshotUrl,
      l$username,
      l$streamPath,
      l$createdUtc,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccessPoints$accessPoints$camera ||
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
    final l$streamPath = streamPath;
    final lOther$streamPath = other.streamPath;
    if (l$streamPath != lOther$streamPath) {
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

extension UtilityExtension$Query$GetAccessPoints$accessPoints$camera
    on Query$GetAccessPoints$accessPoints$camera {
  CopyWith$Query$GetAccessPoints$accessPoints$camera<
    Query$GetAccessPoints$accessPoints$camera
  >
  get copyWith =>
      CopyWith$Query$GetAccessPoints$accessPoints$camera(this, (i) => i);
}

abstract class CopyWith$Query$GetAccessPoints$accessPoints$camera<TRes> {
  factory CopyWith$Query$GetAccessPoints$accessPoints$camera(
    Query$GetAccessPoints$accessPoints$camera instance,
    TRes Function(Query$GetAccessPoints$accessPoints$camera) then,
  ) = _CopyWithImpl$Query$GetAccessPoints$accessPoints$camera;

  factory CopyWith$Query$GetAccessPoints$accessPoints$camera.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccessPoints$accessPoints$camera;

  TRes call({
    String? cameraName,
    String? ipAddress,
    String? rtspUrl,
    String? snapshotUrl,
    String? username,
    String? streamPath,
    DateTime? createdUtc,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccessPoints$accessPoints$camera<TRes>
    implements CopyWith$Query$GetAccessPoints$accessPoints$camera<TRes> {
  _CopyWithImpl$Query$GetAccessPoints$accessPoints$camera(
    this._instance,
    this._then,
  );

  final Query$GetAccessPoints$accessPoints$camera _instance;

  final TRes Function(Query$GetAccessPoints$accessPoints$camera) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cameraName = _undefined,
    Object? ipAddress = _undefined,
    Object? rtspUrl = _undefined,
    Object? snapshotUrl = _undefined,
    Object? username = _undefined,
    Object? streamPath = _undefined,
    Object? createdUtc = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccessPoints$accessPoints$camera(
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
      streamPath: streamPath == _undefined
          ? _instance.streamPath
          : (streamPath as String?),
      createdUtc: createdUtc == _undefined || createdUtc == null
          ? _instance.createdUtc
          : (createdUtc as DateTime),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccessPoints$accessPoints$camera<TRes>
    implements CopyWith$Query$GetAccessPoints$accessPoints$camera<TRes> {
  _CopyWithStubImpl$Query$GetAccessPoints$accessPoints$camera(this._res);

  TRes _res;

  call({
    String? cameraName,
    String? ipAddress,
    String? rtspUrl,
    String? snapshotUrl,
    String? username,
    String? streamPath,
    DateTime? createdUtc,
    String? $__typename,
  }) => _res;
}

class Query$GetAccessPoints$accessPoints$groups {
  Query$GetAccessPoints$accessPoints$groups({
    this.azureId,
    required this.name,
    required this.id,
    required this.accessPoints,
    this.$__typename = 'Group',
  });

  factory Query$GetAccessPoints$accessPoints$groups.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$azureId = json['azureId'];
    final l$name = json['name'];
    final l$id = json['id'];
    final l$accessPoints = json['accessPoints'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessPoints$accessPoints$groups(
      azureId: (l$azureId as String?),
      name: (l$name as String),
      id: (l$id as String),
      accessPoints: (l$accessPoints as List<dynamic>)
          .map(
            (e) =>
                Query$GetAccessPoints$accessPoints$groups$accessPoints.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? azureId;

  final String name;

  final String id;

  final List<Query$GetAccessPoints$accessPoints$groups$accessPoints>
  accessPoints;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$azureId = azureId;
    _resultData['azureId'] = l$azureId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$azureId = azureId;
    final l$name = name;
    final l$id = id;
    final l$accessPoints = accessPoints;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$azureId,
      l$name,
      l$id,
      Object.hashAll(l$accessPoints.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetAccessPoints$accessPoints$groups ||
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

extension UtilityExtension$Query$GetAccessPoints$accessPoints$groups
    on Query$GetAccessPoints$accessPoints$groups {
  CopyWith$Query$GetAccessPoints$accessPoints$groups<
    Query$GetAccessPoints$accessPoints$groups
  >
  get copyWith =>
      CopyWith$Query$GetAccessPoints$accessPoints$groups(this, (i) => i);
}

abstract class CopyWith$Query$GetAccessPoints$accessPoints$groups<TRes> {
  factory CopyWith$Query$GetAccessPoints$accessPoints$groups(
    Query$GetAccessPoints$accessPoints$groups instance,
    TRes Function(Query$GetAccessPoints$accessPoints$groups) then,
  ) = _CopyWithImpl$Query$GetAccessPoints$accessPoints$groups;

  factory CopyWith$Query$GetAccessPoints$accessPoints$groups.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccessPoints$accessPoints$groups;

  TRes call({
    String? azureId,
    String? name,
    String? id,
    List<Query$GetAccessPoints$accessPoints$groups$accessPoints>? accessPoints,
    String? $__typename,
  });
  TRes accessPoints(
    Iterable<Query$GetAccessPoints$accessPoints$groups$accessPoints> Function(
      Iterable<
        CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints<
          Query$GetAccessPoints$accessPoints$groups$accessPoints
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetAccessPoints$accessPoints$groups<TRes>
    implements CopyWith$Query$GetAccessPoints$accessPoints$groups<TRes> {
  _CopyWithImpl$Query$GetAccessPoints$accessPoints$groups(
    this._instance,
    this._then,
  );

  final Query$GetAccessPoints$accessPoints$groups _instance;

  final TRes Function(Query$GetAccessPoints$accessPoints$groups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? azureId = _undefined,
    Object? name = _undefined,
    Object? id = _undefined,
    Object? accessPoints = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccessPoints$accessPoints$groups(
      azureId: azureId == _undefined ? _instance.azureId : (azureId as String?),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      accessPoints: accessPoints == _undefined || accessPoints == null
          ? _instance.accessPoints
          : (accessPoints
                as List<
                  Query$GetAccessPoints$accessPoints$groups$accessPoints
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes accessPoints(
    Iterable<Query$GetAccessPoints$accessPoints$groups$accessPoints> Function(
      Iterable<
        CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints<
          Query$GetAccessPoints$accessPoints$groups$accessPoints
        >
      >,
    )
    _fn,
  ) => call(
    accessPoints: _fn(
      _instance.accessPoints.map(
        (e) => CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints(
          e,
          (i) => i,
        ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetAccessPoints$accessPoints$groups<TRes>
    implements CopyWith$Query$GetAccessPoints$accessPoints$groups<TRes> {
  _CopyWithStubImpl$Query$GetAccessPoints$accessPoints$groups(this._res);

  TRes _res;

  call({
    String? azureId,
    String? name,
    String? id,
    List<Query$GetAccessPoints$accessPoints$groups$accessPoints>? accessPoints,
    String? $__typename,
  }) => _res;

  accessPoints(_fn) => _res;
}

class Query$GetAccessPoints$accessPoints$groups$accessPoints {
  Query$GetAccessPoints$accessPoints$groups$accessPoints({
    required this.key,
    required this.value,
    this.$__typename = 'KeyValuePairOfStringAndAccessProfile',
  });

  factory Query$GetAccessPoints$accessPoints$groups$accessPoints.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$key = json['key'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessPoints$accessPoints$groups$accessPoints(
      key: (l$key as String),
      value:
          Query$GetAccessPoints$accessPoints$groups$accessPoints$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final Query$GetAccessPoints$accessPoints$groups$accessPoints$value value;

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
    if (other is! Query$GetAccessPoints$accessPoints$groups$accessPoints ||
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

extension UtilityExtension$Query$GetAccessPoints$accessPoints$groups$accessPoints
    on Query$GetAccessPoints$accessPoints$groups$accessPoints {
  CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints<
    Query$GetAccessPoints$accessPoints$groups$accessPoints
  >
  get copyWith =>
      CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints<
  TRes
> {
  factory CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints(
    Query$GetAccessPoints$accessPoints$groups$accessPoints instance,
    TRes Function(Query$GetAccessPoints$accessPoints$groups$accessPoints) then,
  ) = _CopyWithImpl$Query$GetAccessPoints$accessPoints$groups$accessPoints;

  factory CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccessPoints$accessPoints$groups$accessPoints;

  TRes call({
    String? key,
    Query$GetAccessPoints$accessPoints$groups$accessPoints$value? value,
    String? $__typename,
  });
  CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints$value<TRes>
  get value;
}

class _CopyWithImpl$Query$GetAccessPoints$accessPoints$groups$accessPoints<TRes>
    implements
        CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints<TRes> {
  _CopyWithImpl$Query$GetAccessPoints$accessPoints$groups$accessPoints(
    this._instance,
    this._then,
  );

  final Query$GetAccessPoints$accessPoints$groups$accessPoints _instance;

  final TRes Function(Query$GetAccessPoints$accessPoints$groups$accessPoints)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? key = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccessPoints$accessPoints$groups$accessPoints(
      key: key == _undefined || key == null ? _instance.key : (key as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$GetAccessPoints$accessPoints$groups$accessPoints$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints$value<TRes>
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetAccessPoints$accessPoints$groups$accessPoints<
  TRes
>
    implements
        CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints<TRes> {
  _CopyWithStubImpl$Query$GetAccessPoints$accessPoints$groups$accessPoints(
    this._res,
  );

  TRes _res;

  call({
    String? key,
    Query$GetAccessPoints$accessPoints$groups$accessPoints$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints$value<TRes>
  get value =>
      CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints$value.stub(
        _res,
      );
}

class Query$GetAccessPoints$accessPoints$groups$accessPoints$value {
  Query$GetAccessPoints$accessPoints$groups$accessPoints$value({
    required this.externalId,
    required this.name,
    required this.description,
    required this.schedules,
    this.$__typename = 'AccessProfile',
  });

  factory Query$GetAccessPoints$accessPoints$groups$accessPoints$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$externalId = json['externalId'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$schedules = json['schedules'];
    final l$$__typename = json['__typename'];
    return Query$GetAccessPoints$accessPoints$groups$accessPoints$value(
      externalId: (l$externalId as String),
      name: (l$name as String),
      description: (l$description as String),
      schedules: (l$schedules as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String externalId;

  final String name;

  final String description;

  final List<String> schedules;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$externalId = externalId;
    _resultData['externalId'] = l$externalId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$schedules = schedules;
    _resultData['schedules'] = l$schedules.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$externalId = externalId;
    final l$name = name;
    final l$description = description;
    final l$schedules = schedules;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$externalId,
      l$name,
      l$description,
      Object.hashAll(l$schedules.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetAccessPoints$accessPoints$groups$accessPoints$value ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$externalId = externalId;
    final lOther$externalId = other.externalId;
    if (l$externalId != lOther$externalId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$schedules = schedules;
    final lOther$schedules = other.schedules;
    if (l$schedules.length != lOther$schedules.length) {
      return false;
    }
    for (int i = 0; i < l$schedules.length; i++) {
      final l$schedules$entry = l$schedules[i];
      final lOther$schedules$entry = lOther$schedules[i];
      if (l$schedules$entry != lOther$schedules$entry) {
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

extension UtilityExtension$Query$GetAccessPoints$accessPoints$groups$accessPoints$value
    on Query$GetAccessPoints$accessPoints$groups$accessPoints$value {
  CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints$value<
    Query$GetAccessPoints$accessPoints$groups$accessPoints$value
  >
  get copyWith =>
      CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints$value<
  TRes
> {
  factory CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints$value(
    Query$GetAccessPoints$accessPoints$groups$accessPoints$value instance,
    TRes Function(Query$GetAccessPoints$accessPoints$groups$accessPoints$value)
    then,
  ) = _CopyWithImpl$Query$GetAccessPoints$accessPoints$groups$accessPoints$value;

  factory CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetAccessPoints$accessPoints$groups$accessPoints$value;

  TRes call({
    String? externalId,
    String? name,
    String? description,
    List<String>? schedules,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccessPoints$accessPoints$groups$accessPoints$value<
  TRes
>
    implements
        CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints$value<
          TRes
        > {
  _CopyWithImpl$Query$GetAccessPoints$accessPoints$groups$accessPoints$value(
    this._instance,
    this._then,
  );

  final Query$GetAccessPoints$accessPoints$groups$accessPoints$value _instance;

  final TRes Function(
    Query$GetAccessPoints$accessPoints$groups$accessPoints$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? externalId = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? schedules = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetAccessPoints$accessPoints$groups$accessPoints$value(
      externalId: externalId == _undefined || externalId == null
          ? _instance.externalId
          : (externalId as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      schedules: schedules == _undefined || schedules == null
          ? _instance.schedules
          : (schedules as List<String>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetAccessPoints$accessPoints$groups$accessPoints$value<
  TRes
>
    implements
        CopyWith$Query$GetAccessPoints$accessPoints$groups$accessPoints$value<
          TRes
        > {
  _CopyWithStubImpl$Query$GetAccessPoints$accessPoints$groups$accessPoints$value(
    this._res,
  );

  TRes _res;

  call({
    String? externalId,
    String? name,
    String? description,
    List<String>? schedules,
    String? $__typename,
  }) => _res;
}
