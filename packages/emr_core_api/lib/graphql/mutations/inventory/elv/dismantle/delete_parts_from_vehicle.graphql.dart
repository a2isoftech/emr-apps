import '../../../../fragments/inventory/elv/vehicle_fields.graphql.dart';
import '../../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$DeletePartsFromVehicle {
  factory Variables$Mutation$DeletePartsFromVehicle({
    required Input$VehiclePartsActionInput input,
  }) => Variables$Mutation$DeletePartsFromVehicle._({r'input': input});

  Variables$Mutation$DeletePartsFromVehicle._(this._$data);

  factory Variables$Mutation$DeletePartsFromVehicle.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$VehiclePartsActionInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$DeletePartsFromVehicle._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$VehiclePartsActionInput get input =>
      (_$data['input'] as Input$VehiclePartsActionInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$DeletePartsFromVehicle<
    Variables$Mutation$DeletePartsFromVehicle
  >
  get copyWith =>
      CopyWith$Variables$Mutation$DeletePartsFromVehicle(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeletePartsFromVehicle ||
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

abstract class CopyWith$Variables$Mutation$DeletePartsFromVehicle<TRes> {
  factory CopyWith$Variables$Mutation$DeletePartsFromVehicle(
    Variables$Mutation$DeletePartsFromVehicle instance,
    TRes Function(Variables$Mutation$DeletePartsFromVehicle) then,
  ) = _CopyWithImpl$Variables$Mutation$DeletePartsFromVehicle;

  factory CopyWith$Variables$Mutation$DeletePartsFromVehicle.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeletePartsFromVehicle;

  TRes call({Input$VehiclePartsActionInput? input});
}

class _CopyWithImpl$Variables$Mutation$DeletePartsFromVehicle<TRes>
    implements CopyWith$Variables$Mutation$DeletePartsFromVehicle<TRes> {
  _CopyWithImpl$Variables$Mutation$DeletePartsFromVehicle(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeletePartsFromVehicle _instance;

  final TRes Function(Variables$Mutation$DeletePartsFromVehicle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$DeletePartsFromVehicle._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$VehiclePartsActionInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$DeletePartsFromVehicle<TRes>
    implements CopyWith$Variables$Mutation$DeletePartsFromVehicle<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeletePartsFromVehicle(this._res);

  TRes _res;

  call({Input$VehiclePartsActionInput? input}) => _res;
}

class Mutation$DeletePartsFromVehicle {
  Mutation$DeletePartsFromVehicle({
    required this.deletePartsFromVehicle,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeletePartsFromVehicle.fromJson(Map<String, dynamic> json) {
    final l$deletePartsFromVehicle = json['deletePartsFromVehicle'];
    final l$$__typename = json['__typename'];
    return Mutation$DeletePartsFromVehicle(
      deletePartsFromVehicle: Fragment$VehicleFields.fromJson(
        (l$deletePartsFromVehicle as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$VehicleFields deletePartsFromVehicle;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deletePartsFromVehicle = deletePartsFromVehicle;
    _resultData['deletePartsFromVehicle'] = l$deletePartsFromVehicle.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deletePartsFromVehicle = deletePartsFromVehicle;
    final l$$__typename = $__typename;
    return Object.hashAll([l$deletePartsFromVehicle, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeletePartsFromVehicle ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deletePartsFromVehicle = deletePartsFromVehicle;
    final lOther$deletePartsFromVehicle = other.deletePartsFromVehicle;
    if (l$deletePartsFromVehicle != lOther$deletePartsFromVehicle) {
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

extension UtilityExtension$Mutation$DeletePartsFromVehicle
    on Mutation$DeletePartsFromVehicle {
  CopyWith$Mutation$DeletePartsFromVehicle<Mutation$DeletePartsFromVehicle>
  get copyWith => CopyWith$Mutation$DeletePartsFromVehicle(this, (i) => i);
}

abstract class CopyWith$Mutation$DeletePartsFromVehicle<TRes> {
  factory CopyWith$Mutation$DeletePartsFromVehicle(
    Mutation$DeletePartsFromVehicle instance,
    TRes Function(Mutation$DeletePartsFromVehicle) then,
  ) = _CopyWithImpl$Mutation$DeletePartsFromVehicle;

  factory CopyWith$Mutation$DeletePartsFromVehicle.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeletePartsFromVehicle;

  TRes call({
    Fragment$VehicleFields? deletePartsFromVehicle,
    String? $__typename,
  });
  CopyWith$Fragment$VehicleFields<TRes> get deletePartsFromVehicle;
}

class _CopyWithImpl$Mutation$DeletePartsFromVehicle<TRes>
    implements CopyWith$Mutation$DeletePartsFromVehicle<TRes> {
  _CopyWithImpl$Mutation$DeletePartsFromVehicle(this._instance, this._then);

  final Mutation$DeletePartsFromVehicle _instance;

  final TRes Function(Mutation$DeletePartsFromVehicle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deletePartsFromVehicle = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DeletePartsFromVehicle(
      deletePartsFromVehicle:
          deletePartsFromVehicle == _undefined || deletePartsFromVehicle == null
          ? _instance.deletePartsFromVehicle
          : (deletePartsFromVehicle as Fragment$VehicleFields),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$VehicleFields<TRes> get deletePartsFromVehicle {
    final local$deletePartsFromVehicle = _instance.deletePartsFromVehicle;
    return CopyWith$Fragment$VehicleFields(
      local$deletePartsFromVehicle,
      (e) => call(deletePartsFromVehicle: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$DeletePartsFromVehicle<TRes>
    implements CopyWith$Mutation$DeletePartsFromVehicle<TRes> {
  _CopyWithStubImpl$Mutation$DeletePartsFromVehicle(this._res);

  TRes _res;

  call({Fragment$VehicleFields? deletePartsFromVehicle, String? $__typename}) =>
      _res;

  CopyWith$Fragment$VehicleFields<TRes> get deletePartsFromVehicle =>
      CopyWith$Fragment$VehicleFields.stub(_res);
}

const documentNodeMutationDeletePartsFromVehicle = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DeletePartsFromVehicle'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'VehiclePartsActionInput'),
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
            name: NameNode(value: 'deletePartsFromVehicle'),
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
