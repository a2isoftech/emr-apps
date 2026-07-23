import 'package:gql/ast.dart';

class Variables$Mutation$unlockTicket {
  factory Variables$Mutation$unlockTicket({String? ticketIdToUnlock}) =>
      Variables$Mutation$unlockTicket._({
        if (ticketIdToUnlock != null) r'ticketIdToUnlock': ticketIdToUnlock,
      });

  Variables$Mutation$unlockTicket._(this._$data);

  factory Variables$Mutation$unlockTicket.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('ticketIdToUnlock')) {
      final l$ticketIdToUnlock = data['ticketIdToUnlock'];
      result$data['ticketIdToUnlock'] = (l$ticketIdToUnlock as String?);
    }
    return Variables$Mutation$unlockTicket._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get ticketIdToUnlock => (_$data['ticketIdToUnlock'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('ticketIdToUnlock')) {
      final l$ticketIdToUnlock = ticketIdToUnlock;
      result$data['ticketIdToUnlock'] = l$ticketIdToUnlock;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$unlockTicket<Variables$Mutation$unlockTicket>
  get copyWith => CopyWith$Variables$Mutation$unlockTicket(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$unlockTicket ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ticketIdToUnlock = ticketIdToUnlock;
    final lOther$ticketIdToUnlock = other.ticketIdToUnlock;
    if (_$data.containsKey('ticketIdToUnlock') !=
        other._$data.containsKey('ticketIdToUnlock')) {
      return false;
    }
    if (l$ticketIdToUnlock != lOther$ticketIdToUnlock) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$ticketIdToUnlock = ticketIdToUnlock;
    return Object.hashAll([
      _$data.containsKey('ticketIdToUnlock') ? l$ticketIdToUnlock : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$unlockTicket<TRes> {
  factory CopyWith$Variables$Mutation$unlockTicket(
    Variables$Mutation$unlockTicket instance,
    TRes Function(Variables$Mutation$unlockTicket) then,
  ) = _CopyWithImpl$Variables$Mutation$unlockTicket;

  factory CopyWith$Variables$Mutation$unlockTicket.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$unlockTicket;

  TRes call({String? ticketIdToUnlock});
}

class _CopyWithImpl$Variables$Mutation$unlockTicket<TRes>
    implements CopyWith$Variables$Mutation$unlockTicket<TRes> {
  _CopyWithImpl$Variables$Mutation$unlockTicket(this._instance, this._then);

  final Variables$Mutation$unlockTicket _instance;

  final TRes Function(Variables$Mutation$unlockTicket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? ticketIdToUnlock = _undefined}) => _then(
    Variables$Mutation$unlockTicket._({
      ..._instance._$data,
      if (ticketIdToUnlock != _undefined)
        'ticketIdToUnlock': (ticketIdToUnlock as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$unlockTicket<TRes>
    implements CopyWith$Variables$Mutation$unlockTicket<TRes> {
  _CopyWithStubImpl$Variables$Mutation$unlockTicket(this._res);

  TRes _res;

  call({String? ticketIdToUnlock}) => _res;
}

class Mutation$unlockTicket {
  Mutation$unlockTicket({
    required this.lockTicket,
    this.$__typename = 'Mutation',
  });

  factory Mutation$unlockTicket.fromJson(Map<String, dynamic> json) {
    final l$lockTicket = json['lockTicket'];
    final l$$__typename = json['__typename'];
    return Mutation$unlockTicket(
      lockTicket: Mutation$unlockTicket$lockTicket.fromJson(
        (l$lockTicket as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$unlockTicket$lockTicket lockTicket;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lockTicket = lockTicket;
    _resultData['lockTicket'] = l$lockTicket.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lockTicket = lockTicket;
    final l$$__typename = $__typename;
    return Object.hashAll([l$lockTicket, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$unlockTicket || runtimeType != other.runtimeType) {
      return false;
    }
    final l$lockTicket = lockTicket;
    final lOther$lockTicket = other.lockTicket;
    if (l$lockTicket != lOther$lockTicket) {
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

extension UtilityExtension$Mutation$unlockTicket on Mutation$unlockTicket {
  CopyWith$Mutation$unlockTicket<Mutation$unlockTicket> get copyWith =>
      CopyWith$Mutation$unlockTicket(this, (i) => i);
}

abstract class CopyWith$Mutation$unlockTicket<TRes> {
  factory CopyWith$Mutation$unlockTicket(
    Mutation$unlockTicket instance,
    TRes Function(Mutation$unlockTicket) then,
  ) = _CopyWithImpl$Mutation$unlockTicket;

  factory CopyWith$Mutation$unlockTicket.stub(TRes res) =
      _CopyWithStubImpl$Mutation$unlockTicket;

  TRes call({
    Mutation$unlockTicket$lockTicket? lockTicket,
    String? $__typename,
  });
  CopyWith$Mutation$unlockTicket$lockTicket<TRes> get lockTicket;
}

class _CopyWithImpl$Mutation$unlockTicket<TRes>
    implements CopyWith$Mutation$unlockTicket<TRes> {
  _CopyWithImpl$Mutation$unlockTicket(this._instance, this._then);

  final Mutation$unlockTicket _instance;

  final TRes Function(Mutation$unlockTicket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lockTicket = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$unlockTicket(
      lockTicket: lockTicket == _undefined || lockTicket == null
          ? _instance.lockTicket
          : (lockTicket as Mutation$unlockTicket$lockTicket),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$unlockTicket$lockTicket<TRes> get lockTicket {
    final local$lockTicket = _instance.lockTicket;
    return CopyWith$Mutation$unlockTicket$lockTicket(
      local$lockTicket,
      (e) => call(lockTicket: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$unlockTicket<TRes>
    implements CopyWith$Mutation$unlockTicket<TRes> {
  _CopyWithStubImpl$Mutation$unlockTicket(this._res);

  TRes _res;

  call({Mutation$unlockTicket$lockTicket? lockTicket, String? $__typename}) =>
      _res;

  CopyWith$Mutation$unlockTicket$lockTicket<TRes> get lockTicket =>
      CopyWith$Mutation$unlockTicket$lockTicket.stub(_res);
}

const documentNodeMutationunlockTicket = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'unlockTicket'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'ticketIdToUnlock')),
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
            name: NameNode(value: 'lockTicket'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'forceUnlock'),
                      value: BooleanValueNode(value: true),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'profileName'),
                      value: StringValueNode(value: '', isBlock: false),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'ticketIdToUnlock'),
                      value: VariableNode(
                        name: NameNode(value: 'ticketIdToUnlock'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'unlockResponse'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'isSuccess'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'ticketId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'lockedBy'),
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

class Mutation$unlockTicket$lockTicket {
  Mutation$unlockTicket$lockTicket({
    this.unlockResponse,
    this.$__typename = 'LockTicketResponse',
  });

  factory Mutation$unlockTicket$lockTicket.fromJson(Map<String, dynamic> json) {
    final l$unlockResponse = json['unlockResponse'];
    final l$$__typename = json['__typename'];
    return Mutation$unlockTicket$lockTicket(
      unlockResponse: l$unlockResponse == null
          ? null
          : Mutation$unlockTicket$lockTicket$unlockResponse.fromJson(
              (l$unlockResponse as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$unlockTicket$lockTicket$unlockResponse? unlockResponse;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$unlockResponse = unlockResponse;
    _resultData['unlockResponse'] = l$unlockResponse?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$unlockResponse = unlockResponse;
    final l$$__typename = $__typename;
    return Object.hashAll([l$unlockResponse, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$unlockTicket$lockTicket ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$unlockResponse = unlockResponse;
    final lOther$unlockResponse = other.unlockResponse;
    if (l$unlockResponse != lOther$unlockResponse) {
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

extension UtilityExtension$Mutation$unlockTicket$lockTicket
    on Mutation$unlockTicket$lockTicket {
  CopyWith$Mutation$unlockTicket$lockTicket<Mutation$unlockTicket$lockTicket>
  get copyWith => CopyWith$Mutation$unlockTicket$lockTicket(this, (i) => i);
}

abstract class CopyWith$Mutation$unlockTicket$lockTicket<TRes> {
  factory CopyWith$Mutation$unlockTicket$lockTicket(
    Mutation$unlockTicket$lockTicket instance,
    TRes Function(Mutation$unlockTicket$lockTicket) then,
  ) = _CopyWithImpl$Mutation$unlockTicket$lockTicket;

  factory CopyWith$Mutation$unlockTicket$lockTicket.stub(TRes res) =
      _CopyWithStubImpl$Mutation$unlockTicket$lockTicket;

  TRes call({
    Mutation$unlockTicket$lockTicket$unlockResponse? unlockResponse,
    String? $__typename,
  });
  CopyWith$Mutation$unlockTicket$lockTicket$unlockResponse<TRes>
  get unlockResponse;
}

class _CopyWithImpl$Mutation$unlockTicket$lockTicket<TRes>
    implements CopyWith$Mutation$unlockTicket$lockTicket<TRes> {
  _CopyWithImpl$Mutation$unlockTicket$lockTicket(this._instance, this._then);

  final Mutation$unlockTicket$lockTicket _instance;

  final TRes Function(Mutation$unlockTicket$lockTicket) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? unlockResponse = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$unlockTicket$lockTicket(
      unlockResponse: unlockResponse == _undefined
          ? _instance.unlockResponse
          : (unlockResponse
                as Mutation$unlockTicket$lockTicket$unlockResponse?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$unlockTicket$lockTicket$unlockResponse<TRes>
  get unlockResponse {
    final local$unlockResponse = _instance.unlockResponse;
    return local$unlockResponse == null
        ? CopyWith$Mutation$unlockTicket$lockTicket$unlockResponse.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$unlockTicket$lockTicket$unlockResponse(
            local$unlockResponse,
            (e) => call(unlockResponse: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$unlockTicket$lockTicket<TRes>
    implements CopyWith$Mutation$unlockTicket$lockTicket<TRes> {
  _CopyWithStubImpl$Mutation$unlockTicket$lockTicket(this._res);

  TRes _res;

  call({
    Mutation$unlockTicket$lockTicket$unlockResponse? unlockResponse,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$unlockTicket$lockTicket$unlockResponse<TRes>
  get unlockResponse =>
      CopyWith$Mutation$unlockTicket$lockTicket$unlockResponse.stub(_res);
}

class Mutation$unlockTicket$lockTicket$unlockResponse {
  Mutation$unlockTicket$lockTicket$unlockResponse({
    required this.isSuccess,
    required this.ticketId,
    this.lockedBy,
    this.$__typename = 'TicketLockStatus',
  });

  factory Mutation$unlockTicket$lockTicket$unlockResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$isSuccess = json['isSuccess'];
    final l$ticketId = json['ticketId'];
    final l$lockedBy = json['lockedBy'];
    final l$$__typename = json['__typename'];
    return Mutation$unlockTicket$lockTicket$unlockResponse(
      isSuccess: (l$isSuccess as bool),
      ticketId: (l$ticketId as String),
      lockedBy: (l$lockedBy as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool isSuccess;

  final String ticketId;

  final String? lockedBy;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isSuccess = isSuccess;
    _resultData['isSuccess'] = l$isSuccess;
    final l$ticketId = ticketId;
    _resultData['ticketId'] = l$ticketId;
    final l$lockedBy = lockedBy;
    _resultData['lockedBy'] = l$lockedBy;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isSuccess = isSuccess;
    final l$ticketId = ticketId;
    final l$lockedBy = lockedBy;
    final l$$__typename = $__typename;
    return Object.hashAll([l$isSuccess, l$ticketId, l$lockedBy, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$unlockTicket$lockTicket$unlockResponse ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isSuccess = isSuccess;
    final lOther$isSuccess = other.isSuccess;
    if (l$isSuccess != lOther$isSuccess) {
      return false;
    }
    final l$ticketId = ticketId;
    final lOther$ticketId = other.ticketId;
    if (l$ticketId != lOther$ticketId) {
      return false;
    }
    final l$lockedBy = lockedBy;
    final lOther$lockedBy = other.lockedBy;
    if (l$lockedBy != lOther$lockedBy) {
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

extension UtilityExtension$Mutation$unlockTicket$lockTicket$unlockResponse
    on Mutation$unlockTicket$lockTicket$unlockResponse {
  CopyWith$Mutation$unlockTicket$lockTicket$unlockResponse<
    Mutation$unlockTicket$lockTicket$unlockResponse
  >
  get copyWith =>
      CopyWith$Mutation$unlockTicket$lockTicket$unlockResponse(this, (i) => i);
}

abstract class CopyWith$Mutation$unlockTicket$lockTicket$unlockResponse<TRes> {
  factory CopyWith$Mutation$unlockTicket$lockTicket$unlockResponse(
    Mutation$unlockTicket$lockTicket$unlockResponse instance,
    TRes Function(Mutation$unlockTicket$lockTicket$unlockResponse) then,
  ) = _CopyWithImpl$Mutation$unlockTicket$lockTicket$unlockResponse;

  factory CopyWith$Mutation$unlockTicket$lockTicket$unlockResponse.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$unlockTicket$lockTicket$unlockResponse;

  TRes call({
    bool? isSuccess,
    String? ticketId,
    String? lockedBy,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$unlockTicket$lockTicket$unlockResponse<TRes>
    implements CopyWith$Mutation$unlockTicket$lockTicket$unlockResponse<TRes> {
  _CopyWithImpl$Mutation$unlockTicket$lockTicket$unlockResponse(
    this._instance,
    this._then,
  );

  final Mutation$unlockTicket$lockTicket$unlockResponse _instance;

  final TRes Function(Mutation$unlockTicket$lockTicket$unlockResponse) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isSuccess = _undefined,
    Object? ticketId = _undefined,
    Object? lockedBy = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$unlockTicket$lockTicket$unlockResponse(
      isSuccess: isSuccess == _undefined || isSuccess == null
          ? _instance.isSuccess
          : (isSuccess as bool),
      ticketId: ticketId == _undefined || ticketId == null
          ? _instance.ticketId
          : (ticketId as String),
      lockedBy: lockedBy == _undefined
          ? _instance.lockedBy
          : (lockedBy as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$unlockTicket$lockTicket$unlockResponse<TRes>
    implements CopyWith$Mutation$unlockTicket$lockTicket$unlockResponse<TRes> {
  _CopyWithStubImpl$Mutation$unlockTicket$lockTicket$unlockResponse(this._res);

  TRes _res;

  call({
    bool? isSuccess,
    String? ticketId,
    String? lockedBy,
    String? $__typename,
  }) => _res;
}
