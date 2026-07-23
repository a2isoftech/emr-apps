import '../../../../fragments/inventory/elv/vehicle_fields.graphql.dart';
import '../../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$AddPartsToVehicle {
  factory Variables$Mutation$AddPartsToVehicle({
    required Input$VehiclePartsActionInput input,
  }) => Variables$Mutation$AddPartsToVehicle._({r'input': input});

  Variables$Mutation$AddPartsToVehicle._(this._$data);

  factory Variables$Mutation$AddPartsToVehicle.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$VehiclePartsActionInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$AddPartsToVehicle._(result$data);
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

  CopyWith$Variables$Mutation$AddPartsToVehicle<
    Variables$Mutation$AddPartsToVehicle
  >
  get copyWith => CopyWith$Variables$Mutation$AddPartsToVehicle(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddPartsToVehicle ||
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

abstract class CopyWith$Variables$Mutation$AddPartsToVehicle<TRes> {
  factory CopyWith$Variables$Mutation$AddPartsToVehicle(
    Variables$Mutation$AddPartsToVehicle instance,
    TRes Function(Variables$Mutation$AddPartsToVehicle) then,
  ) = _CopyWithImpl$Variables$Mutation$AddPartsToVehicle;

  factory CopyWith$Variables$Mutation$AddPartsToVehicle.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddPartsToVehicle;

  TRes call({Input$VehiclePartsActionInput? input});
}

class _CopyWithImpl$Variables$Mutation$AddPartsToVehicle<TRes>
    implements CopyWith$Variables$Mutation$AddPartsToVehicle<TRes> {
  _CopyWithImpl$Variables$Mutation$AddPartsToVehicle(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddPartsToVehicle _instance;

  final TRes Function(Variables$Mutation$AddPartsToVehicle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$AddPartsToVehicle._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$VehiclePartsActionInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AddPartsToVehicle<TRes>
    implements CopyWith$Variables$Mutation$AddPartsToVehicle<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddPartsToVehicle(this._res);

  TRes _res;

  call({Input$VehiclePartsActionInput? input}) => _res;
}

class Mutation$AddPartsToVehicle {
  Mutation$AddPartsToVehicle({
    required this.addPartsToVehicle,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddPartsToVehicle.fromJson(Map<String, dynamic> json) {
    final l$addPartsToVehicle = json['addPartsToVehicle'];
    final l$$__typename = json['__typename'];
    return Mutation$AddPartsToVehicle(
      addPartsToVehicle: Fragment$VehicleFields.fromJson(
        (l$addPartsToVehicle as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$VehicleFields addPartsToVehicle;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$addPartsToVehicle = addPartsToVehicle;
    _resultData['addPartsToVehicle'] = l$addPartsToVehicle.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$addPartsToVehicle = addPartsToVehicle;
    final l$$__typename = $__typename;
    return Object.hashAll([l$addPartsToVehicle, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddPartsToVehicle ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$addPartsToVehicle = addPartsToVehicle;
    final lOther$addPartsToVehicle = other.addPartsToVehicle;
    if (l$addPartsToVehicle != lOther$addPartsToVehicle) {
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

extension UtilityExtension$Mutation$AddPartsToVehicle
    on Mutation$AddPartsToVehicle {
  CopyWith$Mutation$AddPartsToVehicle<Mutation$AddPartsToVehicle>
  get copyWith => CopyWith$Mutation$AddPartsToVehicle(this, (i) => i);
}

abstract class CopyWith$Mutation$AddPartsToVehicle<TRes> {
  factory CopyWith$Mutation$AddPartsToVehicle(
    Mutation$AddPartsToVehicle instance,
    TRes Function(Mutation$AddPartsToVehicle) then,
  ) = _CopyWithImpl$Mutation$AddPartsToVehicle;

  factory CopyWith$Mutation$AddPartsToVehicle.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddPartsToVehicle;

  TRes call({Fragment$VehicleFields? addPartsToVehicle, String? $__typename});
  CopyWith$Fragment$VehicleFields<TRes> get addPartsToVehicle;
}

class _CopyWithImpl$Mutation$AddPartsToVehicle<TRes>
    implements CopyWith$Mutation$AddPartsToVehicle<TRes> {
  _CopyWithImpl$Mutation$AddPartsToVehicle(this._instance, this._then);

  final Mutation$AddPartsToVehicle _instance;

  final TRes Function(Mutation$AddPartsToVehicle) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? addPartsToVehicle = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AddPartsToVehicle(
      addPartsToVehicle:
          addPartsToVehicle == _undefined || addPartsToVehicle == null
          ? _instance.addPartsToVehicle
          : (addPartsToVehicle as Fragment$VehicleFields),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$VehicleFields<TRes> get addPartsToVehicle {
    final local$addPartsToVehicle = _instance.addPartsToVehicle;
    return CopyWith$Fragment$VehicleFields(
      local$addPartsToVehicle,
      (e) => call(addPartsToVehicle: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$AddPartsToVehicle<TRes>
    implements CopyWith$Mutation$AddPartsToVehicle<TRes> {
  _CopyWithStubImpl$Mutation$AddPartsToVehicle(this._res);

  TRes _res;

  call({Fragment$VehicleFields? addPartsToVehicle, String? $__typename}) =>
      _res;

  CopyWith$Fragment$VehicleFields<TRes> get addPartsToVehicle =>
      CopyWith$Fragment$VehicleFields.stub(_res);
}

const documentNodeMutationAddPartsToVehicle = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AddPartsToVehicle'),
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
            name: NameNode(value: 'addPartsToVehicle'),
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
