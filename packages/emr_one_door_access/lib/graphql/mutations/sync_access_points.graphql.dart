import 'package:gql/ast.dart';

class Variables$Mutation$SyncAccessPoints {
  factory Variables$Mutation$SyncAccessPoints(
          {required String accessControllerId}) =>
      Variables$Mutation$SyncAccessPoints._({
        r'accessControllerId': accessControllerId,
      });

  Variables$Mutation$SyncAccessPoints._(this._$data);

  factory Variables$Mutation$SyncAccessPoints.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$accessControllerId = data['accessControllerId'];
    result$data['accessControllerId'] = (l$accessControllerId as String);
    return Variables$Mutation$SyncAccessPoints._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accessControllerId => (_$data['accessControllerId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accessControllerId = accessControllerId;
    result$data['accessControllerId'] = l$accessControllerId;
    return result$data;
  }

  CopyWith$Variables$Mutation$SyncAccessPoints<
          Variables$Mutation$SyncAccessPoints>
      get copyWith => CopyWith$Variables$Mutation$SyncAccessPoints(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SyncAccessPoints ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$accessControllerId = accessControllerId;
    final lOther$accessControllerId = other.accessControllerId;
    if (l$accessControllerId != lOther$accessControllerId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$accessControllerId = accessControllerId;
    return Object.hashAll([l$accessControllerId]);
  }
}

abstract class CopyWith$Variables$Mutation$SyncAccessPoints<TRes> {
  factory CopyWith$Variables$Mutation$SyncAccessPoints(
    Variables$Mutation$SyncAccessPoints instance,
    TRes Function(Variables$Mutation$SyncAccessPoints) then,
  ) = _CopyWithImpl$Variables$Mutation$SyncAccessPoints;

  factory CopyWith$Variables$Mutation$SyncAccessPoints.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SyncAccessPoints;

  TRes call({String? accessControllerId});
}

class _CopyWithImpl$Variables$Mutation$SyncAccessPoints<TRes>
    implements CopyWith$Variables$Mutation$SyncAccessPoints<TRes> {
  _CopyWithImpl$Variables$Mutation$SyncAccessPoints(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SyncAccessPoints _instance;

  final TRes Function(Variables$Mutation$SyncAccessPoints) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accessControllerId = _undefined}) =>
      _then(Variables$Mutation$SyncAccessPoints._({
        ..._instance._$data,
        if (accessControllerId != _undefined && accessControllerId != null)
          'accessControllerId': (accessControllerId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SyncAccessPoints<TRes>
    implements CopyWith$Variables$Mutation$SyncAccessPoints<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SyncAccessPoints(this._res);

  TRes _res;

  call({String? accessControllerId}) => _res;
}

class Mutation$SyncAccessPoints {
  Mutation$SyncAccessPoints({
    required this.syncAccessPoints,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SyncAccessPoints.fromJson(Map<String, dynamic> json) {
    final l$syncAccessPoints = json['syncAccessPoints'];
    final l$$__typename = json['__typename'];
    return Mutation$SyncAccessPoints(
      syncAccessPoints: (l$syncAccessPoints as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool syncAccessPoints;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$syncAccessPoints = syncAccessPoints;
    _resultData['syncAccessPoints'] = l$syncAccessPoints;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$syncAccessPoints = syncAccessPoints;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$syncAccessPoints,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SyncAccessPoints ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$syncAccessPoints = syncAccessPoints;
    final lOther$syncAccessPoints = other.syncAccessPoints;
    if (l$syncAccessPoints != lOther$syncAccessPoints) {
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

extension UtilityExtension$Mutation$SyncAccessPoints
    on Mutation$SyncAccessPoints {
  CopyWith$Mutation$SyncAccessPoints<Mutation$SyncAccessPoints> get copyWith =>
      CopyWith$Mutation$SyncAccessPoints(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SyncAccessPoints<TRes> {
  factory CopyWith$Mutation$SyncAccessPoints(
    Mutation$SyncAccessPoints instance,
    TRes Function(Mutation$SyncAccessPoints) then,
  ) = _CopyWithImpl$Mutation$SyncAccessPoints;

  factory CopyWith$Mutation$SyncAccessPoints.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SyncAccessPoints;

  TRes call({
    bool? syncAccessPoints,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SyncAccessPoints<TRes>
    implements CopyWith$Mutation$SyncAccessPoints<TRes> {
  _CopyWithImpl$Mutation$SyncAccessPoints(
    this._instance,
    this._then,
  );

  final Mutation$SyncAccessPoints _instance;

  final TRes Function(Mutation$SyncAccessPoints) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? syncAccessPoints = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SyncAccessPoints(
        syncAccessPoints:
            syncAccessPoints == _undefined || syncAccessPoints == null
                ? _instance.syncAccessPoints
                : (syncAccessPoints as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SyncAccessPoints<TRes>
    implements CopyWith$Mutation$SyncAccessPoints<TRes> {
  _CopyWithStubImpl$Mutation$SyncAccessPoints(this._res);

  TRes _res;

  call({
    bool? syncAccessPoints,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationSyncAccessPoints = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SyncAccessPoints'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'accessControllerId')),
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
        name: NameNode(value: 'syncAccessPoints'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'accessControllerId'),
            value: VariableNode(name: NameNode(value: 'accessControllerId')),
          )
        ],
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
]);
