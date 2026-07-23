import '../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddCameraToAccessPoint {
  factory Variables$Mutation$AddCameraToAccessPoint({
    required Input$SaveAccessPointCameraInput input,
  }) => Variables$Mutation$AddCameraToAccessPoint._({r'input': input});

  Variables$Mutation$AddCameraToAccessPoint._(this._$data);

  factory Variables$Mutation$AddCameraToAccessPoint.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SaveAccessPointCameraInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$AddCameraToAccessPoint._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SaveAccessPointCameraInput get input =>
      (_$data['input'] as Input$SaveAccessPointCameraInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$AddCameraToAccessPoint<
    Variables$Mutation$AddCameraToAccessPoint
  >
  get copyWith =>
      CopyWith$Variables$Mutation$AddCameraToAccessPoint(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddCameraToAccessPoint ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$AddCameraToAccessPoint<TRes> {
  factory CopyWith$Variables$Mutation$AddCameraToAccessPoint(
    Variables$Mutation$AddCameraToAccessPoint instance,
    TRes Function(Variables$Mutation$AddCameraToAccessPoint) then,
  ) = _CopyWithImpl$Variables$Mutation$AddCameraToAccessPoint;

  factory CopyWith$Variables$Mutation$AddCameraToAccessPoint.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddCameraToAccessPoint;

  TRes call({Input$SaveAccessPointCameraInput? input});
}

class _CopyWithImpl$Variables$Mutation$AddCameraToAccessPoint<TRes>
    implements CopyWith$Variables$Mutation$AddCameraToAccessPoint<TRes> {
  _CopyWithImpl$Variables$Mutation$AddCameraToAccessPoint(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddCameraToAccessPoint _instance;

  final TRes Function(Variables$Mutation$AddCameraToAccessPoint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$AddCameraToAccessPoint._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SaveAccessPointCameraInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddCameraToAccessPoint<TRes>
    implements CopyWith$Variables$Mutation$AddCameraToAccessPoint<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddCameraToAccessPoint(this._res);

  TRes _res;

  call({Input$SaveAccessPointCameraInput? input}) => _res;
}

class Mutation$AddCameraToAccessPoint {
  Mutation$AddCameraToAccessPoint({
    required this.addCameraToAccessPoint,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddCameraToAccessPoint.fromJson(Map<String, dynamic> json) {
    final l$addCameraToAccessPoint = json['addCameraToAccessPoint'];
    final l$$__typename = json['__typename'];
    return Mutation$AddCameraToAccessPoint(
      addCameraToAccessPoint:
          Mutation$AddCameraToAccessPoint$addCameraToAccessPoint.fromJson(
            (l$addCameraToAccessPoint as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddCameraToAccessPoint$addCameraToAccessPoint
  addCameraToAccessPoint;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addCameraToAccessPoint = addCameraToAccessPoint;
    _resultData['addCameraToAccessPoint'] = l$addCameraToAccessPoint.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addCameraToAccessPoint = addCameraToAccessPoint;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addCameraToAccessPoint, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddCameraToAccessPoint ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addCameraToAccessPoint = addCameraToAccessPoint;
    final lOther$addCameraToAccessPoint = other.addCameraToAccessPoint;
    if (l$addCameraToAccessPoint != lOther$addCameraToAccessPoint) {
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

extension UtilityExtension$Mutation$AddCameraToAccessPoint
    on Mutation$AddCameraToAccessPoint {
  CopyWith$Mutation$AddCameraToAccessPoint<Mutation$AddCameraToAccessPoint>
  get copyWith => CopyWith$Mutation$AddCameraToAccessPoint(this, (i) => i);
}

abstract class CopyWith$Mutation$AddCameraToAccessPoint<TRes> {
  factory CopyWith$Mutation$AddCameraToAccessPoint(
    Mutation$AddCameraToAccessPoint instance,
    TRes Function(Mutation$AddCameraToAccessPoint) then,
  ) = _CopyWithImpl$Mutation$AddCameraToAccessPoint;

  factory CopyWith$Mutation$AddCameraToAccessPoint.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddCameraToAccessPoint;

  TRes call({
    Mutation$AddCameraToAccessPoint$addCameraToAccessPoint?
    addCameraToAccessPoint,
    String? $__typename,
  });
  CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint<TRes>
  get addCameraToAccessPoint;
}

class _CopyWithImpl$Mutation$AddCameraToAccessPoint<TRes>
    implements CopyWith$Mutation$AddCameraToAccessPoint<TRes> {
  _CopyWithImpl$Mutation$AddCameraToAccessPoint(this._instance, this._then);

  final Mutation$AddCameraToAccessPoint _instance;

  final TRes Function(Mutation$AddCameraToAccessPoint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addCameraToAccessPoint = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddCameraToAccessPoint(
      addCameraToAccessPoint:
          addCameraToAccessPoint == _undefined || addCameraToAccessPoint == null
          ? _instance.addCameraToAccessPoint
          : (addCameraToAccessPoint
                as Mutation$AddCameraToAccessPoint$addCameraToAccessPoint),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint<TRes>
  get addCameraToAccessPoint {
    final local$addCameraToAccessPoint = _instance.addCameraToAccessPoint;
    return CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint(
      local$addCameraToAccessPoint,
      (e) => call(addCameraToAccessPoint: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$AddCameraToAccessPoint<TRes>
    implements CopyWith$Mutation$AddCameraToAccessPoint<TRes> {
  _CopyWithStubImpl$Mutation$AddCameraToAccessPoint(this._res);

  TRes _res;

  call({
    Mutation$AddCameraToAccessPoint$addCameraToAccessPoint?
    addCameraToAccessPoint,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint<TRes>
  get addCameraToAccessPoint =>
      CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint.stub(
        _res,
      );
}

const documentNodeMutationAddCameraToAccessPoint = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddCameraToAccessPoint'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SaveAccessPointCameraInput'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'addCameraToAccessPoint'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
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

class Mutation$AddCameraToAccessPoint$addCameraToAccessPoint {
  Mutation$AddCameraToAccessPoint$addCameraToAccessPoint({
    required this.id,
    required this.externalId,
    this.camera,
    this.$__typename = 'AccessPoint',
  });

  factory Mutation$AddCameraToAccessPoint$addCameraToAccessPoint.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$externalId = json['externalId'];
    final l$camera = json['camera'];
    final l$$__typename = json['__typename'];
    return Mutation$AddCameraToAccessPoint$addCameraToAccessPoint(
      id: (l$id as String),
      externalId: (l$externalId as String),
      camera: l$camera == null
          ? null
          : Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera.fromJson(
              (l$camera as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String externalId;

  final Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera? camera;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$externalId = externalId;
    _resultData['externalId'] = l$externalId;
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
    final l$camera = camera;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$externalId, l$camera, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddCameraToAccessPoint$addCameraToAccessPoint ||
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

extension UtilityExtension$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint
    on Mutation$AddCameraToAccessPoint$addCameraToAccessPoint {
  CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint<
    Mutation$AddCameraToAccessPoint$addCameraToAccessPoint
  >
  get copyWith =>
      CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint<
  TRes
> {
  factory CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint(
    Mutation$AddCameraToAccessPoint$addCameraToAccessPoint instance,
    TRes Function(Mutation$AddCameraToAccessPoint$addCameraToAccessPoint) then,
  ) = _CopyWithImpl$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint;

  factory CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint;

  TRes call({
    String? id,
    String? externalId,
    Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera? camera,
    String? $__typename,
  });
  CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera<TRes>
  get camera;
}

class _CopyWithImpl$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint<TRes>
    implements
        CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint<TRes> {
  _CopyWithImpl$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint(
    this._instance,
    this._then,
  );

  final Mutation$AddCameraToAccessPoint$addCameraToAccessPoint _instance;

  final TRes Function(Mutation$AddCameraToAccessPoint$addCameraToAccessPoint)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? externalId = _undefined,
    Object? camera = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddCameraToAccessPoint$addCameraToAccessPoint(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      externalId: externalId == _undefined || externalId == null
          ? _instance.externalId
          : (externalId as String),
      camera: camera == _undefined
          ? _instance.camera
          : (camera
                as Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera<TRes>
  get camera {
    final local$camera = _instance.camera;
    return local$camera == null
        ? CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera(
            local$camera,
            (e) => call(camera: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint<
  TRes
>
    implements
        CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint<TRes> {
  _CopyWithStubImpl$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint(
    this._res,
  );

  TRes _res;

  call({
    String? id,
    String? externalId,
    Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera? camera,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera<TRes>
  get camera =>
      CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera.stub(
        _res,
      );
}

class Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera {
  Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera({
    required this.cameraName,
    required this.ipAddress,
    required this.rtspUrl,
    required this.snapshotUrl,
    this.username,
    required this.createdUtc,
    this.$__typename = 'AccessPointCamera',
  });

  factory Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$cameraName = json['cameraName'];
    final l$ipAddress = json['ipAddress'];
    final l$rtspUrl = json['rtspUrl'];
    final l$snapshotUrl = json['snapshotUrl'];
    final l$username = json['username'];
    final l$createdUtc = json['createdUtc'];
    final l$$__typename = json['__typename'];
    return Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera(
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
            is! Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera ||
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

extension UtilityExtension$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera
    on Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera {
  CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera<
    Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera
  >
  get copyWith =>
      CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera<
  TRes
> {
  factory CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera(
    Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera instance,
    TRes Function(Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera)
    then,
  ) = _CopyWithImpl$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera;

  factory CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera;

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

class _CopyWithImpl$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera<
  TRes
>
    implements
        CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera<
          TRes
        > {
  _CopyWithImpl$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera(
    this._instance,
    this._then,
  );

  final Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera _instance;

  final TRes Function(
    Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera,
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
    Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera(
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

class _CopyWithStubImpl$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera<
  TRes
>
    implements
        CopyWith$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AddCameraToAccessPoint$addCameraToAccessPoint$camera(
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
