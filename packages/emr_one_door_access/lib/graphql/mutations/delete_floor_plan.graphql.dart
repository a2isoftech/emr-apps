import 'package:gql/ast.dart';

class Variables$Mutation$DeleteFloorPlan {
  factory Variables$Mutation$DeleteFloorPlan({required String floorPlanId}) =>
      Variables$Mutation$DeleteFloorPlan._({
        r'floorPlanId': floorPlanId,
      });

  Variables$Mutation$DeleteFloorPlan._(this._$data);

  factory Variables$Mutation$DeleteFloorPlan.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$floorPlanId = data['floorPlanId'];
    result$data['floorPlanId'] = (l$floorPlanId as String);
    return Variables$Mutation$DeleteFloorPlan._(result$data);
  }

  Map<String, dynamic> _$data;

  String get floorPlanId => (_$data['floorPlanId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$floorPlanId = floorPlanId;
    result$data['floorPlanId'] = l$floorPlanId;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteFloorPlan<
          Variables$Mutation$DeleteFloorPlan>
      get copyWith => CopyWith$Variables$Mutation$DeleteFloorPlan(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteFloorPlan ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$floorPlanId = floorPlanId;
    final lOther$floorPlanId = other.floorPlanId;
    if (l$floorPlanId != lOther$floorPlanId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$floorPlanId = floorPlanId;
    return Object.hashAll([l$floorPlanId]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteFloorPlan<TRes> {
  factory CopyWith$Variables$Mutation$DeleteFloorPlan(
    Variables$Mutation$DeleteFloorPlan instance,
    TRes Function(Variables$Mutation$DeleteFloorPlan) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteFloorPlan;

  factory CopyWith$Variables$Mutation$DeleteFloorPlan.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteFloorPlan;

  TRes call({String? floorPlanId});
}

class _CopyWithImpl$Variables$Mutation$DeleteFloorPlan<TRes>
    implements CopyWith$Variables$Mutation$DeleteFloorPlan<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteFloorPlan(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteFloorPlan _instance;

  final TRes Function(Variables$Mutation$DeleteFloorPlan) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? floorPlanId = _undefined}) =>
      _then(Variables$Mutation$DeleteFloorPlan._({
        ..._instance._$data,
        if (floorPlanId != _undefined && floorPlanId != null)
          'floorPlanId': (floorPlanId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteFloorPlan<TRes>
    implements CopyWith$Variables$Mutation$DeleteFloorPlan<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteFloorPlan(this._res);

  TRes _res;

  call({String? floorPlanId}) => _res;
}

class Mutation$DeleteFloorPlan {
  Mutation$DeleteFloorPlan({
    required this.deleteFloorPlan,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteFloorPlan.fromJson(Map<String, dynamic> json) {
    final l$deleteFloorPlan = json['deleteFloorPlan'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteFloorPlan(
      deleteFloorPlan: (l$deleteFloorPlan as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool deleteFloorPlan;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteFloorPlan = deleteFloorPlan;
    _resultData['deleteFloorPlan'] = l$deleteFloorPlan;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteFloorPlan = deleteFloorPlan;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteFloorPlan,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteFloorPlan ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteFloorPlan = deleteFloorPlan;
    final lOther$deleteFloorPlan = other.deleteFloorPlan;
    if (l$deleteFloorPlan != lOther$deleteFloorPlan) {
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

extension UtilityExtension$Mutation$DeleteFloorPlan
    on Mutation$DeleteFloorPlan {
  CopyWith$Mutation$DeleteFloorPlan<Mutation$DeleteFloorPlan> get copyWith =>
      CopyWith$Mutation$DeleteFloorPlan(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteFloorPlan<TRes> {
  factory CopyWith$Mutation$DeleteFloorPlan(
    Mutation$DeleteFloorPlan instance,
    TRes Function(Mutation$DeleteFloorPlan) then,
  ) = _CopyWithImpl$Mutation$DeleteFloorPlan;

  factory CopyWith$Mutation$DeleteFloorPlan.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteFloorPlan;

  TRes call({
    bool? deleteFloorPlan,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteFloorPlan<TRes>
    implements CopyWith$Mutation$DeleteFloorPlan<TRes> {
  _CopyWithImpl$Mutation$DeleteFloorPlan(
    this._instance,
    this._then,
  );

  final Mutation$DeleteFloorPlan _instance;

  final TRes Function(Mutation$DeleteFloorPlan) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteFloorPlan = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteFloorPlan(
        deleteFloorPlan:
            deleteFloorPlan == _undefined || deleteFloorPlan == null
                ? _instance.deleteFloorPlan
                : (deleteFloorPlan as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteFloorPlan<TRes>
    implements CopyWith$Mutation$DeleteFloorPlan<TRes> {
  _CopyWithStubImpl$Mutation$DeleteFloorPlan(this._res);

  TRes _res;

  call({
    bool? deleteFloorPlan,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationDeleteFloorPlan = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteFloorPlan'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'floorPlanId')),
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
        name: NameNode(value: 'deleteFloorPlan'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'floorPlanId'),
            value: VariableNode(name: NameNode(value: 'floorPlanId')),
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
