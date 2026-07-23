import 'package:gql/ast.dart';

class Variables$Mutation$RestrictAccessPoint {
  factory Variables$Mutation$RestrictAccessPoint(
          {required String accessPointId}) =>
      Variables$Mutation$RestrictAccessPoint._({
        r'accessPointId': accessPointId,
      });

  Variables$Mutation$RestrictAccessPoint._(this._$data);

  factory Variables$Mutation$RestrictAccessPoint.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$accessPointId = data['accessPointId'];
    result$data['accessPointId'] = (l$accessPointId as String);
    return Variables$Mutation$RestrictAccessPoint._(result$data);
  }

  Map<String, dynamic> _$data;

  String get accessPointId => (_$data['accessPointId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$accessPointId = accessPointId;
    result$data['accessPointId'] = l$accessPointId;
    return result$data;
  }

  CopyWith$Variables$Mutation$RestrictAccessPoint<
          Variables$Mutation$RestrictAccessPoint>
      get copyWith => CopyWith$Variables$Mutation$RestrictAccessPoint(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$RestrictAccessPoint ||
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

abstract class CopyWith$Variables$Mutation$RestrictAccessPoint<TRes> {
  factory CopyWith$Variables$Mutation$RestrictAccessPoint(
    Variables$Mutation$RestrictAccessPoint instance,
    TRes Function(Variables$Mutation$RestrictAccessPoint) then,
  ) = _CopyWithImpl$Variables$Mutation$RestrictAccessPoint;

  factory CopyWith$Variables$Mutation$RestrictAccessPoint.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RestrictAccessPoint;

  TRes call({String? accessPointId});
}

class _CopyWithImpl$Variables$Mutation$RestrictAccessPoint<TRes>
    implements CopyWith$Variables$Mutation$RestrictAccessPoint<TRes> {
  _CopyWithImpl$Variables$Mutation$RestrictAccessPoint(
    this._instance,
    this._then,
  );

  final Variables$Mutation$RestrictAccessPoint _instance;

  final TRes Function(Variables$Mutation$RestrictAccessPoint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? accessPointId = _undefined}) =>
      _then(Variables$Mutation$RestrictAccessPoint._({
        ..._instance._$data,
        if (accessPointId != _undefined && accessPointId != null)
          'accessPointId': (accessPointId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$RestrictAccessPoint<TRes>
    implements CopyWith$Variables$Mutation$RestrictAccessPoint<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RestrictAccessPoint(this._res);

  TRes _res;

  call({String? accessPointId}) => _res;
}

class Mutation$RestrictAccessPoint {
  Mutation$RestrictAccessPoint({
    required this.restrictAccessPoint,
    this.$__typename = 'Mutation',
  });

  factory Mutation$RestrictAccessPoint.fromJson(Map<String, dynamic> json) {
    final l$restrictAccessPoint = json['restrictAccessPoint'];
    final l$$__typename = json['__typename'];
    return Mutation$RestrictAccessPoint(
      restrictAccessPoint: (l$restrictAccessPoint as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool restrictAccessPoint;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$restrictAccessPoint = restrictAccessPoint;
    _resultData['restrictAccessPoint'] = l$restrictAccessPoint;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$restrictAccessPoint = restrictAccessPoint;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$restrictAccessPoint,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RestrictAccessPoint ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$restrictAccessPoint = restrictAccessPoint;
    final lOther$restrictAccessPoint = other.restrictAccessPoint;
    if (l$restrictAccessPoint != lOther$restrictAccessPoint) {
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

extension UtilityExtension$Mutation$RestrictAccessPoint
    on Mutation$RestrictAccessPoint {
  CopyWith$Mutation$RestrictAccessPoint<Mutation$RestrictAccessPoint>
      get copyWith => CopyWith$Mutation$RestrictAccessPoint(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RestrictAccessPoint<TRes> {
  factory CopyWith$Mutation$RestrictAccessPoint(
    Mutation$RestrictAccessPoint instance,
    TRes Function(Mutation$RestrictAccessPoint) then,
  ) = _CopyWithImpl$Mutation$RestrictAccessPoint;

  factory CopyWith$Mutation$RestrictAccessPoint.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RestrictAccessPoint;

  TRes call({
    bool? restrictAccessPoint,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RestrictAccessPoint<TRes>
    implements CopyWith$Mutation$RestrictAccessPoint<TRes> {
  _CopyWithImpl$Mutation$RestrictAccessPoint(
    this._instance,
    this._then,
  );

  final Mutation$RestrictAccessPoint _instance;

  final TRes Function(Mutation$RestrictAccessPoint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? restrictAccessPoint = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RestrictAccessPoint(
        restrictAccessPoint:
            restrictAccessPoint == _undefined || restrictAccessPoint == null
                ? _instance.restrictAccessPoint
                : (restrictAccessPoint as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$RestrictAccessPoint<TRes>
    implements CopyWith$Mutation$RestrictAccessPoint<TRes> {
  _CopyWithStubImpl$Mutation$RestrictAccessPoint(this._res);

  TRes _res;

  call({
    bool? restrictAccessPoint,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationRestrictAccessPoint = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'RestrictAccessPoint'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'accessPointId')),
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
        name: NameNode(value: 'restrictAccessPoint'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'accessPointId'),
            value: VariableNode(name: NameNode(value: 'accessPointId')),
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
