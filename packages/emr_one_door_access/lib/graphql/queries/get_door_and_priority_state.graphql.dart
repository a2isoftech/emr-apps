import 'package:gql/ast.dart';

class Variables$Query$GetDoorAndPriorityState {
  factory Variables$Query$GetDoorAndPriorityState({
    required String accessControllerId,
    required String doorExternalId,
  }) => Variables$Query$GetDoorAndPriorityState._({
    r'accessControllerId': accessControllerId,
    r'doorExternalId': doorExternalId,
  });

  Variables$Query$GetDoorAndPriorityState._(this._$data);

  factory Variables$Query$GetDoorAndPriorityState.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$accessControllerId = data['accessControllerId'];
    result$data['accessControllerId'] = (l$accessControllerId as String);
    final l$doorExternalId = data['doorExternalId'];
    result$data['doorExternalId'] = (l$doorExternalId as String);
    return Variables$Query$GetDoorAndPriorityState._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accessControllerId => (_$data['accessControllerId'] as String);

  String get doorExternalId => (_$data['doorExternalId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accessControllerId = accessControllerId;
    result$data['accessControllerId'] = l$accessControllerId;
    final l$doorExternalId = doorExternalId;
    result$data['doorExternalId'] = l$doorExternalId;
    return result$data;
  }

  CopyWith$Variables$Query$GetDoorAndPriorityState<
    Variables$Query$GetDoorAndPriorityState
  >
  get copyWith =>
      CopyWith$Variables$Query$GetDoorAndPriorityState(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetDoorAndPriorityState ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    final l$doorExternalId = doorExternalId;
    final lOther$doorExternalId = other.doorExternalId;
    if (l$doorExternalId != lOther$doorExternalId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accessControllerId = accessControllerId;
    final l$doorExternalId = doorExternalId;
    return Object.hashAll([l$accessControllerId, l$doorExternalId]);
  }
}

abstract class CopyWith$Variables$Query$GetDoorAndPriorityState<TRes> {
  factory CopyWith$Variables$Query$GetDoorAndPriorityState(
    Variables$Query$GetDoorAndPriorityState instance,
    TRes Function(Variables$Query$GetDoorAndPriorityState) then,
  ) = _CopyWithImpl$Variables$Query$GetDoorAndPriorityState;

  factory CopyWith$Variables$Query$GetDoorAndPriorityState.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetDoorAndPriorityState;

  TRes call({String? accessControllerId, String? doorExternalId});
}

class _CopyWithImpl$Variables$Query$GetDoorAndPriorityState<TRes>
    implements CopyWith$Variables$Query$GetDoorAndPriorityState<TRes> {
  _CopyWithImpl$Variables$Query$GetDoorAndPriorityState(
    this._instance,
    this._then,
  );

  final Variables$Query$GetDoorAndPriorityState _instance;

  final TRes Function(Variables$Query$GetDoorAndPriorityState) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? accessControllerId = _undefined,
    Object? doorExternalId = _undefined,
  }) => _then(
    Variables$Query$GetDoorAndPriorityState._({
      ..._instance._$data,
      if (accessControllerId != _undefined && accessControllerId != null)
        'accessControllerId': (accessControllerId as String),
      if (doorExternalId != _undefined && doorExternalId != null)
        'doorExternalId': (doorExternalId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetDoorAndPriorityState<TRes>
    implements CopyWith$Variables$Query$GetDoorAndPriorityState<TRes> {
  _CopyWithStubImpl$Variables$Query$GetDoorAndPriorityState(this._res);

  TRes _res;

  call({String? accessControllerId, String? doorExternalId}) => _res;
}

class Query$GetDoorAndPriorityState {
  Query$GetDoorAndPriorityState({
    this.doorAndPriorityState,
    this.$__typename = 'Query',
  });

  factory Query$GetDoorAndPriorityState.fromJson(Map<String, dynamic> json) {
    final l$doorAndPriorityState = json['doorAndPriorityState'];
    final l$$__typename = json['__typename'];
    return Query$GetDoorAndPriorityState(
      doorAndPriorityState: l$doorAndPriorityState == null
          ? null
          : Query$GetDoorAndPriorityState$doorAndPriorityState.fromJson(
              (l$doorAndPriorityState as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetDoorAndPriorityState$doorAndPriorityState?
  doorAndPriorityState;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$doorAndPriorityState = doorAndPriorityState;
    _resultData['doorAndPriorityState'] = l$doorAndPriorityState?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$doorAndPriorityState = doorAndPriorityState;
    final l$$__typename = $__typename;
    return Object.hashAll([l$doorAndPriorityState, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetDoorAndPriorityState ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$doorAndPriorityState = doorAndPriorityState;
    final lOther$doorAndPriorityState = other.doorAndPriorityState;
    if (l$doorAndPriorityState != lOther$doorAndPriorityState) {
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

extension UtilityExtension$Query$GetDoorAndPriorityState
    on Query$GetDoorAndPriorityState {
  CopyWith$Query$GetDoorAndPriorityState<Query$GetDoorAndPriorityState>
  get copyWith => CopyWith$Query$GetDoorAndPriorityState(this, (i) => i);
}

abstract class CopyWith$Query$GetDoorAndPriorityState<TRes> {
  factory CopyWith$Query$GetDoorAndPriorityState(
    Query$GetDoorAndPriorityState instance,
    TRes Function(Query$GetDoorAndPriorityState) then,
  ) = _CopyWithImpl$Query$GetDoorAndPriorityState;

  factory CopyWith$Query$GetDoorAndPriorityState.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDoorAndPriorityState;

  TRes call({
    Query$GetDoorAndPriorityState$doorAndPriorityState? doorAndPriorityState,
    String? $__typename,
  });
  CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState<TRes>
  get doorAndPriorityState;
}

class _CopyWithImpl$Query$GetDoorAndPriorityState<TRes>
    implements CopyWith$Query$GetDoorAndPriorityState<TRes> {
  _CopyWithImpl$Query$GetDoorAndPriorityState(this._instance, this._then);

  final Query$GetDoorAndPriorityState _instance;

  final TRes Function(Query$GetDoorAndPriorityState) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? doorAndPriorityState = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetDoorAndPriorityState(
      doorAndPriorityState: doorAndPriorityState == _undefined
          ? _instance.doorAndPriorityState
          : (doorAndPriorityState
                as Query$GetDoorAndPriorityState$doorAndPriorityState?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState<TRes>
  get doorAndPriorityState {
    final local$doorAndPriorityState = _instance.doorAndPriorityState;
    return local$doorAndPriorityState == null
        ? CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState.stub(
            _then(_instance),
          )
        : CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState(
            local$doorAndPriorityState,
            (e) => call(doorAndPriorityState: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetDoorAndPriorityState<TRes>
    implements CopyWith$Query$GetDoorAndPriorityState<TRes> {
  _CopyWithStubImpl$Query$GetDoorAndPriorityState(this._res);

  TRes _res;

  call({
    Query$GetDoorAndPriorityState$doorAndPriorityState? doorAndPriorityState,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState<TRes>
  get doorAndPriorityState =>
      CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState.stub(_res);
}

const documentNodeQueryGetDoorAndPriorityState = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetDoorAndPriorityState'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'accessControllerId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'doorExternalId')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'doorAndPriorityState'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'accessControllerId'),
                value: VariableNode(
                  name: NameNode(value: 'accessControllerId'),
                ),
              ),
              ArgumentNode(
                name: NameNode(value: 'doorExternalId'),
                value: VariableNode(name: NameNode(value: 'doorExternalId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'doorState'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'doorMode'),
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
                  name: NameNode(value: 'priorityStates'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'priorityLevel'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'doorAction'),
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

class Query$GetDoorAndPriorityState$doorAndPriorityState {
  Query$GetDoorAndPriorityState$doorAndPriorityState({
    required this.doorState,
    required this.priorityStates,
    this.$__typename = 'DoorAndPriorityState',
  });

  factory Query$GetDoorAndPriorityState$doorAndPriorityState.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$doorState = json['doorState'];
    final l$priorityStates = json['priorityStates'];
    final l$$__typename = json['__typename'];
    return Query$GetDoorAndPriorityState$doorAndPriorityState(
      doorState:
          Query$GetDoorAndPriorityState$doorAndPriorityState$doorState.fromJson(
            (l$doorState as Map<String, dynamic>),
          ),
      priorityStates: (l$priorityStates as List<dynamic>)
          .map(
            (e) =>
                Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates.fromJson(
                  (e as Map<String, dynamic>),
                ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetDoorAndPriorityState$doorAndPriorityState$doorState doorState;

  final List<Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates>
  priorityStates;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$doorState = doorState;
    _resultData['doorState'] = l$doorState.toJson();
    final l$priorityStates = priorityStates;
    _resultData['priorityStates'] = l$priorityStates
        .map((e) => e.toJson())
        .toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$doorState = doorState;
    final l$priorityStates = priorityStates;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$doorState,
      Object.hashAll(l$priorityStates.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetDoorAndPriorityState$doorAndPriorityState ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$doorState = doorState;
    final lOther$doorState = other.doorState;
    if (l$doorState != lOther$doorState) {
      return false;
    }
    final l$priorityStates = priorityStates;
    final lOther$priorityStates = other.priorityStates;
    if (l$priorityStates.length != lOther$priorityStates.length) {
      return false;
    }
    for (int i = 0; i < l$priorityStates.length; i++) {
      final l$priorityStates$entry = l$priorityStates[i];
      final lOther$priorityStates$entry = lOther$priorityStates[i];
      if (l$priorityStates$entry != lOther$priorityStates$entry) {
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

extension UtilityExtension$Query$GetDoorAndPriorityState$doorAndPriorityState
    on Query$GetDoorAndPriorityState$doorAndPriorityState {
  CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState<
    Query$GetDoorAndPriorityState$doorAndPriorityState
  >
  get copyWith => CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState<
  TRes
> {
  factory CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState(
    Query$GetDoorAndPriorityState$doorAndPriorityState instance,
    TRes Function(Query$GetDoorAndPriorityState$doorAndPriorityState) then,
  ) = _CopyWithImpl$Query$GetDoorAndPriorityState$doorAndPriorityState;

  factory CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetDoorAndPriorityState$doorAndPriorityState;

  TRes call({
    Query$GetDoorAndPriorityState$doorAndPriorityState$doorState? doorState,
    List<Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates>?
    priorityStates,
    String? $__typename,
  });
  CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$doorState<TRes>
  get doorState;
  TRes priorityStates(
    Iterable<Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates>
    Function(
      Iterable<
        CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates<
          Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates
        >
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetDoorAndPriorityState$doorAndPriorityState<TRes>
    implements
        CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState<TRes> {
  _CopyWithImpl$Query$GetDoorAndPriorityState$doorAndPriorityState(
    this._instance,
    this._then,
  );

  final Query$GetDoorAndPriorityState$doorAndPriorityState _instance;

  final TRes Function(Query$GetDoorAndPriorityState$doorAndPriorityState) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? doorState = _undefined,
    Object? priorityStates = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetDoorAndPriorityState$doorAndPriorityState(
      doorState: doorState == _undefined || doorState == null
          ? _instance.doorState
          : (doorState
                as Query$GetDoorAndPriorityState$doorAndPriorityState$doorState),
      priorityStates: priorityStates == _undefined || priorityStates == null
          ? _instance.priorityStates
          : (priorityStates
                as List<
                  Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$doorState<TRes>
  get doorState {
    final local$doorState = _instance.doorState;
    return CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$doorState(
      local$doorState,
      (e) => call(doorState: e),
    );
  }

  TRes priorityStates(
    Iterable<Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates>
    Function(
      Iterable<
        CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates<
          Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates
        >
      >,
    )
    _fn,
  ) => call(
    priorityStates: _fn(
      _instance.priorityStates.map(
        (e) =>
            CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates(
              e,
              (i) => i,
            ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$GetDoorAndPriorityState$doorAndPriorityState<TRes>
    implements
        CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState<TRes> {
  _CopyWithStubImpl$Query$GetDoorAndPriorityState$doorAndPriorityState(
    this._res,
  );

  TRes _res;

  call({
    Query$GetDoorAndPriorityState$doorAndPriorityState$doorState? doorState,
    List<Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates>?
    priorityStates,
    String? $__typename,
  }) => _res;

  CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$doorState<TRes>
  get doorState =>
      CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$doorState.stub(
        _res,
      );

  priorityStates(_fn) => _res;
}

class Query$GetDoorAndPriorityState$doorAndPriorityState$doorState {
  Query$GetDoorAndPriorityState$doorAndPriorityState$doorState({
    required this.doorMode,
    this.$__typename = 'DoorState',
  });

  factory Query$GetDoorAndPriorityState$doorAndPriorityState$doorState.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$doorMode = json['doorMode'];
    final l$$__typename = json['__typename'];
    return Query$GetDoorAndPriorityState$doorAndPriorityState$doorState(
      doorMode: (l$doorMode as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String doorMode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$doorMode = doorMode;
    _resultData['doorMode'] = l$doorMode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$doorMode = doorMode;
    final l$$__typename = $__typename;
    return Object.hashAll([l$doorMode, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetDoorAndPriorityState$doorAndPriorityState$doorState ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$doorMode = doorMode;
    final lOther$doorMode = other.doorMode;
    if (l$doorMode != lOther$doorMode) {
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

extension UtilityExtension$Query$GetDoorAndPriorityState$doorAndPriorityState$doorState
    on Query$GetDoorAndPriorityState$doorAndPriorityState$doorState {
  CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$doorState<
    Query$GetDoorAndPriorityState$doorAndPriorityState$doorState
  >
  get copyWith =>
      CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$doorState(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$doorState<
  TRes
> {
  factory CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$doorState(
    Query$GetDoorAndPriorityState$doorAndPriorityState$doorState instance,
    TRes Function(Query$GetDoorAndPriorityState$doorAndPriorityState$doorState)
    then,
  ) = _CopyWithImpl$Query$GetDoorAndPriorityState$doorAndPriorityState$doorState;

  factory CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$doorState.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetDoorAndPriorityState$doorAndPriorityState$doorState;

  TRes call({String? doorMode, String? $__typename});
}

class _CopyWithImpl$Query$GetDoorAndPriorityState$doorAndPriorityState$doorState<
  TRes
>
    implements
        CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$doorState<
          TRes
        > {
  _CopyWithImpl$Query$GetDoorAndPriorityState$doorAndPriorityState$doorState(
    this._instance,
    this._then,
  );

  final Query$GetDoorAndPriorityState$doorAndPriorityState$doorState _instance;

  final TRes Function(
    Query$GetDoorAndPriorityState$doorAndPriorityState$doorState,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? doorMode = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetDoorAndPriorityState$doorAndPriorityState$doorState(
      doorMode: doorMode == _undefined || doorMode == null
          ? _instance.doorMode
          : (doorMode as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetDoorAndPriorityState$doorAndPriorityState$doorState<
  TRes
>
    implements
        CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$doorState<
          TRes
        > {
  _CopyWithStubImpl$Query$GetDoorAndPriorityState$doorAndPriorityState$doorState(
    this._res,
  );

  TRes _res;

  call({String? doorMode, String? $__typename}) => _res;
}

class Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates {
  Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates({
    required this.priorityLevel,
    required this.doorAction,
    this.$__typename = 'PriorityAction',
  });

  factory Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$priorityLevel = json['priorityLevel'];
    final l$doorAction = json['doorAction'];
    final l$$__typename = json['__typename'];
    return Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates(
      priorityLevel: (l$priorityLevel as String),
      doorAction: (l$doorAction as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String priorityLevel;

  final String doorAction;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$priorityLevel = priorityLevel;
    _resultData['priorityLevel'] = l$priorityLevel;
    final l$doorAction = doorAction;
    _resultData['doorAction'] = l$doorAction;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$priorityLevel = priorityLevel;
    final l$doorAction = doorAction;
    final l$$__typename = $__typename;
    return Object.hashAll([l$priorityLevel, l$doorAction, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$priorityLevel = priorityLevel;
    final lOther$priorityLevel = other.priorityLevel;
    if (l$priorityLevel != lOther$priorityLevel) {
      return false;
    }
    final l$doorAction = doorAction;
    final lOther$doorAction = other.doorAction;
    if (l$doorAction != lOther$doorAction) {
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

extension UtilityExtension$Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates
    on Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates {
  CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates<
    Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates
  >
  get copyWith =>
      CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates<
  TRes
> {
  factory CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates(
    Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates instance,
    TRes Function(
      Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates,
    )
    then,
  ) = _CopyWithImpl$Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates;

  factory CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates;

  TRes call({String? priorityLevel, String? doorAction, String? $__typename});
}

class _CopyWithImpl$Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates<
  TRes
>
    implements
        CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates<
          TRes
        > {
  _CopyWithImpl$Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates(
    this._instance,
    this._then,
  );

  final Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates
  _instance;

  final TRes Function(
    Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? priorityLevel = _undefined,
    Object? doorAction = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates(
      priorityLevel: priorityLevel == _undefined || priorityLevel == null
          ? _instance.priorityLevel
          : (priorityLevel as String),
      doorAction: doorAction == _undefined || doorAction == null
          ? _instance.doorAction
          : (doorAction as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates<
  TRes
>
    implements
        CopyWith$Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates<
          TRes
        > {
  _CopyWithStubImpl$Query$GetDoorAndPriorityState$doorAndPriorityState$priorityStates(
    this._res,
  );

  TRes _res;

  call({String? priorityLevel, String? doorAction, String? $__typename}) =>
      _res;
}
