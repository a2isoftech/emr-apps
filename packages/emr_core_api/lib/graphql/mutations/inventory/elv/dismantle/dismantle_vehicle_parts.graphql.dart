import '../../../../fragments/inventory/elv/vehicle_fields.graphql.dart';
import '../../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$DismantleVehicleParts {
  factory Variables$Mutation$DismantleVehicleParts({
    required Input$VehiclePartsActionInput input,
  }) => Variables$Mutation$DismantleVehicleParts._({r'input': input});

  Variables$Mutation$DismantleVehicleParts._(this._$data);

  factory Variables$Mutation$DismantleVehicleParts.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$VehiclePartsActionInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$DismantleVehicleParts._(result$data);
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

  CopyWith$Variables$Mutation$DismantleVehicleParts<
    Variables$Mutation$DismantleVehicleParts
  >
  get copyWith =>
      CopyWith$Variables$Mutation$DismantleVehicleParts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DismantleVehicleParts ||
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

abstract class CopyWith$Variables$Mutation$DismantleVehicleParts<TRes> {
  factory CopyWith$Variables$Mutation$DismantleVehicleParts(
    Variables$Mutation$DismantleVehicleParts instance,
    TRes Function(Variables$Mutation$DismantleVehicleParts) then,
  ) = _CopyWithImpl$Variables$Mutation$DismantleVehicleParts;

  factory CopyWith$Variables$Mutation$DismantleVehicleParts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DismantleVehicleParts;

  TRes call({Input$VehiclePartsActionInput? input});
}

class _CopyWithImpl$Variables$Mutation$DismantleVehicleParts<TRes>
    implements CopyWith$Variables$Mutation$DismantleVehicleParts<TRes> {
  _CopyWithImpl$Variables$Mutation$DismantleVehicleParts(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DismantleVehicleParts _instance;

  final TRes Function(Variables$Mutation$DismantleVehicleParts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$DismantleVehicleParts._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$VehiclePartsActionInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$DismantleVehicleParts<TRes>
    implements CopyWith$Variables$Mutation$DismantleVehicleParts<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DismantleVehicleParts(this._res);

  TRes _res;

  call({Input$VehiclePartsActionInput? input}) => _res;
}

class Mutation$DismantleVehicleParts {
  Mutation$DismantleVehicleParts({
    required this.dismantleVehicleParts,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DismantleVehicleParts.fromJson(Map<String, dynamic> json) {
    final l$dismantleVehicleParts = json['dismantleVehicleParts'];
    final l$$__typename = json['__typename'];
    return Mutation$DismantleVehicleParts(
      dismantleVehicleParts: Fragment$VehicleFields.fromJson(
        (l$dismantleVehicleParts as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$VehicleFields dismantleVehicleParts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dismantleVehicleParts = dismantleVehicleParts;
    _resultData['dismantleVehicleParts'] = l$dismantleVehicleParts.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dismantleVehicleParts = dismantleVehicleParts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dismantleVehicleParts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DismantleVehicleParts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dismantleVehicleParts = dismantleVehicleParts;
    final lOther$dismantleVehicleParts = other.dismantleVehicleParts;
    if (l$dismantleVehicleParts != lOther$dismantleVehicleParts) {
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

extension UtilityExtension$Mutation$DismantleVehicleParts
    on Mutation$DismantleVehicleParts {
  CopyWith$Mutation$DismantleVehicleParts<Mutation$DismantleVehicleParts>
  get copyWith => CopyWith$Mutation$DismantleVehicleParts(this, (i) => i);
}

abstract class CopyWith$Mutation$DismantleVehicleParts<TRes> {
  factory CopyWith$Mutation$DismantleVehicleParts(
    Mutation$DismantleVehicleParts instance,
    TRes Function(Mutation$DismantleVehicleParts) then,
  ) = _CopyWithImpl$Mutation$DismantleVehicleParts;

  factory CopyWith$Mutation$DismantleVehicleParts.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DismantleVehicleParts;

  TRes call({
    Fragment$VehicleFields? dismantleVehicleParts,
    String? $__typename,
  });
  CopyWith$Fragment$VehicleFields<TRes> get dismantleVehicleParts;
}

class _CopyWithImpl$Mutation$DismantleVehicleParts<TRes>
    implements CopyWith$Mutation$DismantleVehicleParts<TRes> {
  _CopyWithImpl$Mutation$DismantleVehicleParts(this._instance, this._then);

  final Mutation$DismantleVehicleParts _instance;

  final TRes Function(Mutation$DismantleVehicleParts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dismantleVehicleParts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DismantleVehicleParts(
      dismantleVehicleParts:
          dismantleVehicleParts == _undefined || dismantleVehicleParts == null
          ? _instance.dismantleVehicleParts
          : (dismantleVehicleParts as Fragment$VehicleFields),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$VehicleFields<TRes> get dismantleVehicleParts {
    final local$dismantleVehicleParts = _instance.dismantleVehicleParts;
    return CopyWith$Fragment$VehicleFields(
      local$dismantleVehicleParts,
      (e) => call(dismantleVehicleParts: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$DismantleVehicleParts<TRes>
    implements CopyWith$Mutation$DismantleVehicleParts<TRes> {
  _CopyWithStubImpl$Mutation$DismantleVehicleParts(this._res);

  TRes _res;

  call({Fragment$VehicleFields? dismantleVehicleParts, String? $__typename}) =>
      _res;

  CopyWith$Fragment$VehicleFields<TRes> get dismantleVehicleParts =>
      CopyWith$Fragment$VehicleFields.stub(_res);
}

const documentNodeMutationDismantleVehicleParts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DismantleVehicleParts'),
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
            name: NameNode(value: 'dismantleVehicleParts'),
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
