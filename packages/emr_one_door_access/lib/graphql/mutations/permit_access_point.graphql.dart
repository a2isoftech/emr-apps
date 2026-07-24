import 'package:gql/ast.dart';

class Variables$Mutation$PermitAccessPoint {
  factory Variables$Mutation$PermitAccessPoint({
    required String accessPointId,
  }) =>
      Variables$Mutation$PermitAccessPoint._({r'accessPointId': accessPointId});

  Variables$Mutation$PermitAccessPoint._(this._$data);

  factory Variables$Mutation$PermitAccessPoint.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$accessPointId = data['accessPointId'];
    result$data['accessPointId'] = (l$accessPointId as String);
    return Variables$Mutation$PermitAccessPoint._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accessPointId => (_$data['accessPointId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accessPointId = accessPointId;
    result$data['accessPointId'] = l$accessPointId;
    return result$data;
  }

  CopyWith$Variables$Mutation$PermitAccessPoint<
    Variables$Mutation$PermitAccessPoint
  >
  get copyWith => CopyWith$Variables$Mutation$PermitAccessPoint(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$PermitAccessPoint ||
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

abstract class CopyWith$Variables$Mutation$PermitAccessPoint<TRes> {
  factory CopyWith$Variables$Mutation$PermitAccessPoint(
    Variables$Mutation$PermitAccessPoint instance,
    TRes Function(Variables$Mutation$PermitAccessPoint) then,
  ) = _CopyWithImpl$Variables$Mutation$PermitAccessPoint;

  factory CopyWith$Variables$Mutation$PermitAccessPoint.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$PermitAccessPoint;

  TRes call({String? accessPointId});
}

class _CopyWithImpl$Variables$Mutation$PermitAccessPoint<TRes>
    implements CopyWith$Variables$Mutation$PermitAccessPoint<TRes> {
  _CopyWithImpl$Variables$Mutation$PermitAccessPoint(
    this._instance,
    this._then,
  );

  final Variables$Mutation$PermitAccessPoint _instance;

  final TRes Function(Variables$Mutation$PermitAccessPoint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accessPointId = _undefined}) => _then(
    Variables$Mutation$PermitAccessPoint._({
      ..._instance._$data,
      if (accessPointId != _undefined && accessPointId != null)
        'accessPointId': (accessPointId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$PermitAccessPoint<TRes>
    implements CopyWith$Variables$Mutation$PermitAccessPoint<TRes> {
  _CopyWithStubImpl$Variables$Mutation$PermitAccessPoint(this._res);

  TRes _res;

  call({String? accessPointId}) => _res;
}

class Mutation$PermitAccessPoint {
  Mutation$PermitAccessPoint({
    required this.permitAccessPoint,
    this.$__typename = 'Mutation',
  });

  factory Mutation$PermitAccessPoint.fromJson(Map<String, dynamic> json) {
    final l$permitAccessPoint = json['permitAccessPoint'];
    final l$$__typename = json['__typename'];
    return Mutation$PermitAccessPoint(
      permitAccessPoint: (l$permitAccessPoint as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool permitAccessPoint;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$permitAccessPoint = permitAccessPoint;
    _resultData['permitAccessPoint'] = l$permitAccessPoint;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$permitAccessPoint = permitAccessPoint;
    final l$$__typename = $__typename;
    return Object.hashAll([l$permitAccessPoint, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$PermitAccessPoint ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$permitAccessPoint = permitAccessPoint;
    final lOther$permitAccessPoint = other.permitAccessPoint;
    if (l$permitAccessPoint != lOther$permitAccessPoint) {
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

extension UtilityExtension$Mutation$PermitAccessPoint
    on Mutation$PermitAccessPoint {
  CopyWith$Mutation$PermitAccessPoint<Mutation$PermitAccessPoint>
  get copyWith => CopyWith$Mutation$PermitAccessPoint(this, (i) => i);
}

abstract class CopyWith$Mutation$PermitAccessPoint<TRes> {
  factory CopyWith$Mutation$PermitAccessPoint(
    Mutation$PermitAccessPoint instance,
    TRes Function(Mutation$PermitAccessPoint) then,
  ) = _CopyWithImpl$Mutation$PermitAccessPoint;

  factory CopyWith$Mutation$PermitAccessPoint.stub(TRes res) =
      _CopyWithStubImpl$Mutation$PermitAccessPoint;

  TRes call({bool? permitAccessPoint, String? $__typename});
}

class _CopyWithImpl$Mutation$PermitAccessPoint<TRes>
    implements CopyWith$Mutation$PermitAccessPoint<TRes> {
  _CopyWithImpl$Mutation$PermitAccessPoint(this._instance, this._then);

  final Mutation$PermitAccessPoint _instance;

  final TRes Function(Mutation$PermitAccessPoint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? permitAccessPoint = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PermitAccessPoint(
      permitAccessPoint:
          permitAccessPoint == _undefined || permitAccessPoint == null
          ? _instance.permitAccessPoint
          : (permitAccessPoint as bool),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$PermitAccessPoint<TRes>
    implements CopyWith$Mutation$PermitAccessPoint<TRes> {
  _CopyWithStubImpl$Mutation$PermitAccessPoint(this._res);

  TRes _res;

  call({bool? permitAccessPoint, String? $__typename}) => _res;
}

const documentNodeMutationPermitAccessPoint = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'PermitAccessPoint'),
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
            name: NameNode(value: 'permitAccessPoint'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'accessPointId'),
                value: VariableNode(name: NameNode(value: 'accessPointId')),
              ),
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
        ],
      ),
    ),
  ],
);
