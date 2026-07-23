import '../../../../fragments/inventory/elv/vehicle_fields.graphql.dart';
import '../../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateVehicleStatus {
  factory Variables$Mutation$UpdateVehicleStatus({
    required Input$UpdateItemInputOfVehicleStatusInput input,
  }) => Variables$Mutation$UpdateVehicleStatus._({r'input': input});

  Variables$Mutation$UpdateVehicleStatus._(this._$data);

  factory Variables$Mutation$UpdateVehicleStatus.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateItemInputOfVehicleStatusInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateVehicleStatus._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateItemInputOfVehicleStatusInput get input =>
      (_$data['input'] as Input$UpdateItemInputOfVehicleStatusInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateVehicleStatus<
    Variables$Mutation$UpdateVehicleStatus
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdateVehicleStatus(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateVehicleStatus ||
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

abstract class CopyWith$Variables$Mutation$UpdateVehicleStatus<TRes> {
  factory CopyWith$Variables$Mutation$UpdateVehicleStatus(
    Variables$Mutation$UpdateVehicleStatus instance,
    TRes Function(Variables$Mutation$UpdateVehicleStatus) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateVehicleStatus;

  factory CopyWith$Variables$Mutation$UpdateVehicleStatus.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateVehicleStatus;

  TRes call({Input$UpdateItemInputOfVehicleStatusInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateVehicleStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateVehicleStatus<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateVehicleStatus(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateVehicleStatus _instance;

  final TRes Function(Variables$Mutation$UpdateVehicleStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateVehicleStatus._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UpdateItemInputOfVehicleStatusInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateVehicleStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateVehicleStatus<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateVehicleStatus(this._res);

  TRes _res;

  call({Input$UpdateItemInputOfVehicleStatusInput? input}) => _res;
}

class Mutation$UpdateVehicleStatus {
  Mutation$UpdateVehicleStatus({
    required this.setVehicleStatus,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateVehicleStatus.fromJson(Map<String, dynamic> json) {
    final l$setVehicleStatus = json['setVehicleStatus'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateVehicleStatus(
      setVehicleStatus: Fragment$VehicleFields.fromJson(
        (l$setVehicleStatus as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$VehicleFields setVehicleStatus;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$setVehicleStatus = setVehicleStatus;
    _resultData['setVehicleStatus'] = l$setVehicleStatus.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$setVehicleStatus = setVehicleStatus;
    final l$$__typename = $__typename;
    return Object.hashAll([l$setVehicleStatus, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateVehicleStatus ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$setVehicleStatus = setVehicleStatus;
    final lOther$setVehicleStatus = other.setVehicleStatus;
    if (l$setVehicleStatus != lOther$setVehicleStatus) {
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

extension UtilityExtension$Mutation$UpdateVehicleStatus
    on Mutation$UpdateVehicleStatus {
  CopyWith$Mutation$UpdateVehicleStatus<Mutation$UpdateVehicleStatus>
  get copyWith => CopyWith$Mutation$UpdateVehicleStatus(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateVehicleStatus<TRes> {
  factory CopyWith$Mutation$UpdateVehicleStatus(
    Mutation$UpdateVehicleStatus instance,
    TRes Function(Mutation$UpdateVehicleStatus) then,
  ) = _CopyWithImpl$Mutation$UpdateVehicleStatus;

  factory CopyWith$Mutation$UpdateVehicleStatus.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateVehicleStatus;

  TRes call({Fragment$VehicleFields? setVehicleStatus, String? $__typename});
  CopyWith$Fragment$VehicleFields<TRes> get setVehicleStatus;
}

class _CopyWithImpl$Mutation$UpdateVehicleStatus<TRes>
    implements CopyWith$Mutation$UpdateVehicleStatus<TRes> {
  _CopyWithImpl$Mutation$UpdateVehicleStatus(this._instance, this._then);

  final Mutation$UpdateVehicleStatus _instance;

  final TRes Function(Mutation$UpdateVehicleStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? setVehicleStatus = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateVehicleStatus(
      setVehicleStatus:
          setVehicleStatus == _undefined || setVehicleStatus == null
          ? _instance.setVehicleStatus
          : (setVehicleStatus as Fragment$VehicleFields),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$VehicleFields<TRes> get setVehicleStatus {
    final local$setVehicleStatus = _instance.setVehicleStatus;
    return CopyWith$Fragment$VehicleFields(
      local$setVehicleStatus,
      (e) => call(setVehicleStatus: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateVehicleStatus<TRes>
    implements CopyWith$Mutation$UpdateVehicleStatus<TRes> {
  _CopyWithStubImpl$Mutation$UpdateVehicleStatus(this._res);

  TRes _res;

  call({Fragment$VehicleFields? setVehicleStatus, String? $__typename}) => _res;

  CopyWith$Fragment$VehicleFields<TRes> get setVehicleStatus =>
      CopyWith$Fragment$VehicleFields.stub(_res);
}

const documentNodeMutationUpdateVehicleStatus = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateVehicleStatus'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateItemInputOfVehicleStatusInput'),
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
            name: NameNode(value: 'setVehicleStatus'),
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
                FragmentSpreadNode(
                  name: NameNode(value: 'VehicleFields'),
                  directives: [],
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
    fragmentDefinitionVehicleFields,
  ],
);
