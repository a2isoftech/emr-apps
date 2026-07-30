import 'package:gql/ast.dart';

class Variables$Mutation$StartCameraStream {
  factory Variables$Mutation$StartCameraStream({
    required String accessPointId,
    required int durationMinutes,
  }) => Variables$Mutation$StartCameraStream._({
    r'accessPointId': accessPointId,
    r'durationMinutes': durationMinutes,
  });

  Variables$Mutation$StartCameraStream._(this._$data);

  factory Variables$Mutation$StartCameraStream.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$accessPointId = data['accessPointId'];
    result$data['accessPointId'] = (l$accessPointId as String);
    final l$durationMinutes = data['durationMinutes'];
    result$data['durationMinutes'] = (l$durationMinutes as int);
    return Variables$Mutation$StartCameraStream._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accessPointId => (_$data['accessPointId'] as String);

  int get durationMinutes => (_$data['durationMinutes'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accessPointId = accessPointId;
    result$data['accessPointId'] = l$accessPointId;
    final l$durationMinutes = durationMinutes;
    result$data['durationMinutes'] = l$durationMinutes;
    return result$data;
  }

  CopyWith$Variables$Mutation$StartCameraStream<
    Variables$Mutation$StartCameraStream
  >
  get copyWith => CopyWith$Variables$Mutation$StartCameraStream(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$StartCameraStream ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessPointId = accessPointId;
    final lOther$accessPointId = other.accessPointId;
    if (l$accessPointId != lOther$accessPointId) {
      return false;
    }
    final l$durationMinutes = durationMinutes;
    final lOther$durationMinutes = other.durationMinutes;
    if (l$durationMinutes != lOther$durationMinutes) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accessPointId = accessPointId;
    final l$durationMinutes = durationMinutes;
    return Object.hashAll([l$accessPointId, l$durationMinutes]);
  }
}

abstract class CopyWith$Variables$Mutation$StartCameraStream<TRes> {
  factory CopyWith$Variables$Mutation$StartCameraStream(
    Variables$Mutation$StartCameraStream instance,
    TRes Function(Variables$Mutation$StartCameraStream) then,
  ) = _CopyWithImpl$Variables$Mutation$StartCameraStream;

  factory CopyWith$Variables$Mutation$StartCameraStream.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$StartCameraStream;

  TRes call({String? accessPointId, int? durationMinutes});
}

class _CopyWithImpl$Variables$Mutation$StartCameraStream<TRes>
    implements CopyWith$Variables$Mutation$StartCameraStream<TRes> {
  _CopyWithImpl$Variables$Mutation$StartCameraStream(
    this._instance,
    this._then,
  );

  final Variables$Mutation$StartCameraStream _instance;

  final TRes Function(Variables$Mutation$StartCameraStream) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessPointId = _undefined,
    Object? durationMinutes = _undefined,
  }) => _then(
    Variables$Mutation$StartCameraStream._({
      ..._instance._$data,
      if (accessPointId != _undefined && accessPointId != null)
        'accessPointId': (accessPointId as String),
      if (durationMinutes != _undefined && durationMinutes != null)
        'durationMinutes': (durationMinutes as int),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$StartCameraStream<TRes>
    implements CopyWith$Variables$Mutation$StartCameraStream<TRes> {
  _CopyWithStubImpl$Variables$Mutation$StartCameraStream(this._res);

  TRes _res;

  call({String? accessPointId, int? durationMinutes}) => _res;
}

class Mutation$StartCameraStream {
  Mutation$StartCameraStream({
    required this.startCameraStream,
    this.$__typename = 'Mutation',
  });

  factory Mutation$StartCameraStream.fromJson(Map<String, dynamic> json) {
    final l$startCameraStream = json['startCameraStream'];
    final l$$__typename = json['__typename'];
    return Mutation$StartCameraStream(
      startCameraStream: Mutation$StartCameraStream$startCameraStream.fromJson(
        (l$startCameraStream as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$StartCameraStream$startCameraStream startCameraStream;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$startCameraStream = startCameraStream;
    _resultData['startCameraStream'] = l$startCameraStream.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$startCameraStream = startCameraStream;
    final l$$__typename = $__typename;
    return Object.hashAll([l$startCameraStream, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$StartCameraStream ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$startCameraStream = startCameraStream;
    final lOther$startCameraStream = other.startCameraStream;
    if (l$startCameraStream != lOther$startCameraStream) {
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

extension UtilityExtension$Mutation$StartCameraStream
    on Mutation$StartCameraStream {
  CopyWith$Mutation$StartCameraStream<Mutation$StartCameraStream>
  get copyWith => CopyWith$Mutation$StartCameraStream(this, (i) => i);
}

abstract class CopyWith$Mutation$StartCameraStream<TRes> {
  factory CopyWith$Mutation$StartCameraStream(
    Mutation$StartCameraStream instance,
    TRes Function(Mutation$StartCameraStream) then,
  ) = _CopyWithImpl$Mutation$StartCameraStream;

  factory CopyWith$Mutation$StartCameraStream.stub(TRes res) =
      _CopyWithStubImpl$Mutation$StartCameraStream;

  TRes call({
    Mutation$StartCameraStream$startCameraStream? startCameraStream,
    String? $__typename,
  });
  CopyWith$Mutation$StartCameraStream$startCameraStream<TRes>
  get startCameraStream;
}

class _CopyWithImpl$Mutation$StartCameraStream<TRes>
    implements CopyWith$Mutation$StartCameraStream<TRes> {
  _CopyWithImpl$Mutation$StartCameraStream(this._instance, this._then);

  final Mutation$StartCameraStream _instance;

  final TRes Function(Mutation$StartCameraStream) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCameraStream = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StartCameraStream(
      startCameraStream:
          startCameraStream == _undefined || startCameraStream == null
          ? _instance.startCameraStream
          : (startCameraStream as Mutation$StartCameraStream$startCameraStream),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StartCameraStream$startCameraStream<TRes>
  get startCameraStream {
    final local$startCameraStream = _instance.startCameraStream;
    return CopyWith$Mutation$StartCameraStream$startCameraStream(
      local$startCameraStream,
      (e) => call(startCameraStream: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StartCameraStream<TRes>
    implements CopyWith$Mutation$StartCameraStream<TRes> {
  _CopyWithStubImpl$Mutation$StartCameraStream(this._res);

  TRes _res;

  call({
    Mutation$StartCameraStream$startCameraStream? startCameraStream,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StartCameraStream$startCameraStream<TRes>
  get startCameraStream =>
      CopyWith$Mutation$StartCameraStream$startCameraStream.stub(_res);
}

const documentNodeMutationStartCameraStream = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'StartCameraStream'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'accessPointId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'durationMinutes')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'startCameraStream'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'accessPointId'),
                value: VariableNode(name: NameNode(value: 'accessPointId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'durationMinutes'),
                value: VariableNode(name: NameNode(value: 'durationMinutes')),
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
                  name: NameNode(value: 'streamUrl'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'streamToken'),
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

class Mutation$StartCameraStream$startCameraStream {
  Mutation$StartCameraStream$startCameraStream({
    required this.accessPointId,
    required this.isRunning,
    this.streamUrl,
    this.streamToken,
    this.durationMinutes,
    this.timeRemaining,
    this.message,
    this.$__typename = 'StreamStatusResponse',
  });

  factory Mutation$StartCameraStream$startCameraStream.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$accessPointId = json['accessPointId'];
    final l$isRunning = json['isRunning'];
    final l$streamUrl = json['streamUrl'];
    final l$streamToken = json['streamToken'];
    final l$durationMinutes = json['durationMinutes'];
    final l$timeRemaining = json['timeRemaining'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$StartCameraStream$startCameraStream(
      accessPointId: (l$accessPointId as String),
      isRunning: (l$isRunning as bool),
      streamUrl: (l$streamUrl as String?),
      streamToken: (l$streamToken as String?),
      durationMinutes: (l$durationMinutes as int?),
      timeRemaining: (l$timeRemaining as String?),
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String accessPointId;

  final bool isRunning;

  final String? streamUrl;

  final String? streamToken;

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
    final l$streamUrl = streamUrl;
    _resultData['streamUrl'] = l$streamUrl;
    final l$streamToken = streamToken;
    _resultData['streamToken'] = l$streamToken;
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
    final l$streamUrl = streamUrl;
    final l$streamToken = streamToken;
    final l$durationMinutes = durationMinutes;
    final l$timeRemaining = timeRemaining;
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$accessPointId,
      l$isRunning,
      l$streamUrl,
      l$streamToken,
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
    if (other is! Mutation$StartCameraStream$startCameraStream ||
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
    final l$streamUrl = streamUrl;
    final lOther$streamUrl = other.streamUrl;
    if (l$streamUrl != lOther$streamUrl) {
      return false;
    }
    final l$streamToken = streamToken;
    final lOther$streamToken = other.streamToken;
    if (l$streamToken != lOther$streamToken) {
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

extension UtilityExtension$Mutation$StartCameraStream$startCameraStream
    on Mutation$StartCameraStream$startCameraStream {
  CopyWith$Mutation$StartCameraStream$startCameraStream<
    Mutation$StartCameraStream$startCameraStream
  >
  get copyWith =>
      CopyWith$Mutation$StartCameraStream$startCameraStream(this, (i) => i);
}

abstract class CopyWith$Mutation$StartCameraStream$startCameraStream<TRes> {
  factory CopyWith$Mutation$StartCameraStream$startCameraStream(
    Mutation$StartCameraStream$startCameraStream instance,
    TRes Function(Mutation$StartCameraStream$startCameraStream) then,
  ) = _CopyWithImpl$Mutation$StartCameraStream$startCameraStream;

  factory CopyWith$Mutation$StartCameraStream$startCameraStream.stub(TRes res) =
      _CopyWithStubImpl$Mutation$StartCameraStream$startCameraStream;

  TRes call({
    String? accessPointId,
    bool? isRunning,
    String? streamUrl,
    String? streamToken,
    int? durationMinutes,
    String? timeRemaining,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$StartCameraStream$startCameraStream<TRes>
    implements CopyWith$Mutation$StartCameraStream$startCameraStream<TRes> {
  _CopyWithImpl$Mutation$StartCameraStream$startCameraStream(
    this._instance,
    this._then,
  );

  final Mutation$StartCameraStream$startCameraStream _instance;

  final TRes Function(Mutation$StartCameraStream$startCameraStream) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessPointId = _undefined,
    Object? isRunning = _undefined,
    Object? streamUrl = _undefined,
    Object? streamToken = _undefined,
    Object? durationMinutes = _undefined,
    Object? timeRemaining = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StartCameraStream$startCameraStream(
      accessPointId: accessPointId == _undefined || accessPointId == null
          ? _instance.accessPointId
          : (accessPointId as String),
      isRunning: isRunning == _undefined || isRunning == null
          ? _instance.isRunning
          : (isRunning as bool),
      streamUrl: streamUrl == _undefined
          ? _instance.streamUrl
          : (streamUrl as String?),
      streamToken: streamToken == _undefined
          ? _instance.streamToken
          : (streamToken as String?),
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

class _CopyWithStubImpl$Mutation$StartCameraStream$startCameraStream<TRes>
    implements CopyWith$Mutation$StartCameraStream$startCameraStream<TRes> {
  _CopyWithStubImpl$Mutation$StartCameraStream$startCameraStream(this._res);

  TRes _res;

  call({
    String? accessPointId,
    bool? isRunning,
    String? streamUrl,
    String? streamToken,
    int? durationMinutes,
    String? timeRemaining,
    String? message,
    String? $__typename,
  }) => _res;
}
