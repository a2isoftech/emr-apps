import 'package:gql/ast.dart';

class Variables$Mutation$StopCameraStream {
  factory Variables$Mutation$StopCameraStream({
    required String accessPointId,
  }) =>
      Variables$Mutation$StopCameraStream._({r'accessPointId': accessPointId});

  Variables$Mutation$StopCameraStream._(this._$data);

  factory Variables$Mutation$StopCameraStream.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$accessPointId = data['accessPointId'];
    result$data['accessPointId'] = (l$accessPointId as String);
    return Variables$Mutation$StopCameraStream._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accessPointId => (_$data['accessPointId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accessPointId = accessPointId;
    result$data['accessPointId'] = l$accessPointId;
    return result$data;
  }

  CopyWith$Variables$Mutation$StopCameraStream<
    Variables$Mutation$StopCameraStream
  >
  get copyWith => CopyWith$Variables$Mutation$StopCameraStream(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$StopCameraStream ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessPointId = accessPointId;
    final lOther$accessPointId = other.accessPointId;
    if (l$accessPointId != lOther$accessPointId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accessPointId = accessPointId;
    return Object.hashAll([l$accessPointId]);
  }
}

abstract class CopyWith$Variables$Mutation$StopCameraStream<TRes> {
  factory CopyWith$Variables$Mutation$StopCameraStream(
    Variables$Mutation$StopCameraStream instance,
    TRes Function(Variables$Mutation$StopCameraStream) then,
  ) = _CopyWithImpl$Variables$Mutation$StopCameraStream;

  factory CopyWith$Variables$Mutation$StopCameraStream.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$StopCameraStream;

  TRes call({String? accessPointId});
}

class _CopyWithImpl$Variables$Mutation$StopCameraStream<TRes>
    implements CopyWith$Variables$Mutation$StopCameraStream<TRes> {
  _CopyWithImpl$Variables$Mutation$StopCameraStream(this._instance, this._then);

  final Variables$Mutation$StopCameraStream _instance;

  final TRes Function(Variables$Mutation$StopCameraStream) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accessPointId = _undefined}) => _then(
    Variables$Mutation$StopCameraStream._({
      ..._instance._$data,
      if (accessPointId != _undefined && accessPointId != null)
        'accessPointId': (accessPointId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$StopCameraStream<TRes>
    implements CopyWith$Variables$Mutation$StopCameraStream<TRes> {
  _CopyWithStubImpl$Variables$Mutation$StopCameraStream(this._res);

  TRes _res;

  call({String? accessPointId}) => _res;
}

class Mutation$StopCameraStream {
  Mutation$StopCameraStream({
    required this.stopCameraStream,
    this.$__typename = 'Mutation',
  });

  factory Mutation$StopCameraStream.fromJson(Map<String, dynamic> json) {
    final l$stopCameraStream = json['stopCameraStream'];
    final l$$__typename = json['__typename'];
    return Mutation$StopCameraStream(
      stopCameraStream: Mutation$StopCameraStream$stopCameraStream.fromJson(
        (l$stopCameraStream as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$StopCameraStream$stopCameraStream stopCameraStream;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stopCameraStream = stopCameraStream;
    _resultData['stopCameraStream'] = l$stopCameraStream.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stopCameraStream = stopCameraStream;
    final l$$__typename = $__typename;
    return Object.hashAll([l$stopCameraStream, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$StopCameraStream ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$stopCameraStream = stopCameraStream;
    final lOther$stopCameraStream = other.stopCameraStream;
    if (l$stopCameraStream != lOther$stopCameraStream) {
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

extension UtilityExtension$Mutation$StopCameraStream
    on Mutation$StopCameraStream {
  CopyWith$Mutation$StopCameraStream<Mutation$StopCameraStream> get copyWith =>
      CopyWith$Mutation$StopCameraStream(this, (i) => i);
}

abstract class CopyWith$Mutation$StopCameraStream<TRes> {
  factory CopyWith$Mutation$StopCameraStream(
    Mutation$StopCameraStream instance,
    TRes Function(Mutation$StopCameraStream) then,
  ) = _CopyWithImpl$Mutation$StopCameraStream;

  factory CopyWith$Mutation$StopCameraStream.stub(TRes res) =
      _CopyWithStubImpl$Mutation$StopCameraStream;

  TRes call({
    Mutation$StopCameraStream$stopCameraStream? stopCameraStream,
    String? $__typename,
  });
  CopyWith$Mutation$StopCameraStream$stopCameraStream<TRes>
  get stopCameraStream;
}

class _CopyWithImpl$Mutation$StopCameraStream<TRes>
    implements CopyWith$Mutation$StopCameraStream<TRes> {
  _CopyWithImpl$Mutation$StopCameraStream(this._instance, this._then);

  final Mutation$StopCameraStream _instance;

  final TRes Function(Mutation$StopCameraStream) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? stopCameraStream = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StopCameraStream(
      stopCameraStream:
          stopCameraStream == _undefined || stopCameraStream == null
          ? _instance.stopCameraStream
          : (stopCameraStream as Mutation$StopCameraStream$stopCameraStream),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StopCameraStream$stopCameraStream<TRes>
  get stopCameraStream {
    final local$stopCameraStream = _instance.stopCameraStream;
    return CopyWith$Mutation$StopCameraStream$stopCameraStream(
      local$stopCameraStream,
      (e) => call(stopCameraStream: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StopCameraStream<TRes>
    implements CopyWith$Mutation$StopCameraStream<TRes> {
  _CopyWithStubImpl$Mutation$StopCameraStream(this._res);

  TRes _res;

  call({
    Mutation$StopCameraStream$stopCameraStream? stopCameraStream,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StopCameraStream$stopCameraStream<TRes>
  get stopCameraStream =>
      CopyWith$Mutation$StopCameraStream$stopCameraStream.stub(_res);
}

const documentNodeMutationStopCameraStream = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'StopCameraStream'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'accessPointId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'stopCameraStream'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'accessPointId'),
                value: VariableNode(name: NameNode(value: 'accessPointId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'accessPointId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'isRunning'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'durationMinutes'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'timeRemaining'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'message'),
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

class Mutation$StopCameraStream$stopCameraStream {
  Mutation$StopCameraStream$stopCameraStream({
    required this.accessPointId,
    required this.isRunning,
    this.durationMinutes,
    this.timeRemaining,
    this.message,
    this.$__typename = 'StreamStatusResponse',
  });

  factory Mutation$StopCameraStream$stopCameraStream.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accessPointId = json['accessPointId'];
    final l$isRunning = json['isRunning'];
    final l$durationMinutes = json['durationMinutes'];
    final l$timeRemaining = json['timeRemaining'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$StopCameraStream$stopCameraStream(
      accessPointId: (l$accessPointId as String),
      isRunning: (l$isRunning as bool),
      durationMinutes: (l$durationMinutes as int?),
      timeRemaining: (l$timeRemaining as String?),
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String accessPointId;

  final bool isRunning;

  final int? durationMinutes;

  final String? timeRemaining;

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$accessPointId = accessPointId;
    _resultData['accessPointId'] = l$accessPointId;
    final l$isRunning = isRunning;
    _resultData['isRunning'] = l$isRunning;
    final l$durationMinutes = durationMinutes;
    _resultData['durationMinutes'] = l$durationMinutes;
    final l$timeRemaining = timeRemaining;
    _resultData['timeRemaining'] = l$timeRemaining;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$accessPointId = accessPointId;
    final l$isRunning = isRunning;
    final l$durationMinutes = durationMinutes;
    final l$timeRemaining = timeRemaining;
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accessPointId,
      l$isRunning,
      l$durationMinutes,
      l$timeRemaining,
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$StopCameraStream$stopCameraStream ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessPointId = accessPointId;
    final lOther$accessPointId = other.accessPointId;
    if (l$accessPointId != lOther$accessPointId) {
      return false;
    }
    final l$isRunning = isRunning;
    final lOther$isRunning = other.isRunning;
    if (l$isRunning != lOther$isRunning) {
      return false;
    }
    final l$durationMinutes = durationMinutes;
    final lOther$durationMinutes = other.durationMinutes;
    if (l$durationMinutes != lOther$durationMinutes) {
      return false;
    }
    final l$timeRemaining = timeRemaining;
    final lOther$timeRemaining = other.timeRemaining;
    if (l$timeRemaining != lOther$timeRemaining) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Mutation$StopCameraStream$stopCameraStream
    on Mutation$StopCameraStream$stopCameraStream {
  CopyWith$Mutation$StopCameraStream$stopCameraStream<
    Mutation$StopCameraStream$stopCameraStream
  >
  get copyWith =>
      CopyWith$Mutation$StopCameraStream$stopCameraStream(this, (i) => i);
}

abstract class CopyWith$Mutation$StopCameraStream$stopCameraStream<TRes> {
  factory CopyWith$Mutation$StopCameraStream$stopCameraStream(
    Mutation$StopCameraStream$stopCameraStream instance,
    TRes Function(Mutation$StopCameraStream$stopCameraStream) then,
  ) = _CopyWithImpl$Mutation$StopCameraStream$stopCameraStream;

  factory CopyWith$Mutation$StopCameraStream$stopCameraStream.stub(TRes res) =
      _CopyWithStubImpl$Mutation$StopCameraStream$stopCameraStream;

  TRes call({
    String? accessPointId,
    bool? isRunning,
    int? durationMinutes,
    String? timeRemaining,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$StopCameraStream$stopCameraStream<TRes>
    implements CopyWith$Mutation$StopCameraStream$stopCameraStream<TRes> {
  _CopyWithImpl$Mutation$StopCameraStream$stopCameraStream(
    this._instance,
    this._then,
  );

  final Mutation$StopCameraStream$stopCameraStream _instance;

  final TRes Function(Mutation$StopCameraStream$stopCameraStream) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessPointId = _undefined,
    Object? isRunning = _undefined,
    Object? durationMinutes = _undefined,
    Object? timeRemaining = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StopCameraStream$stopCameraStream(
      accessPointId: accessPointId == _undefined || accessPointId == null
          ? _instance.accessPointId
          : (accessPointId as String),
      isRunning: isRunning == _undefined || isRunning == null
          ? _instance.isRunning
          : (isRunning as bool),
      durationMinutes: durationMinutes == _undefined
          ? _instance.durationMinutes
          : (durationMinutes as int?),
      timeRemaining: timeRemaining == _undefined
          ? _instance.timeRemaining
          : (timeRemaining as String?),
      message: message == _undefined ? _instance.message : (message as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StopCameraStream$stopCameraStream<TRes>
    implements CopyWith$Mutation$StopCameraStream$stopCameraStream<TRes> {
  _CopyWithStubImpl$Mutation$StopCameraStream$stopCameraStream(this._res);

  TRes _res;

  call({
    String? accessPointId,
    bool? isRunning,
    int? durationMinutes,
    String? timeRemaining,
    String? message,
    String? $__typename,
  }) => _res;
}
