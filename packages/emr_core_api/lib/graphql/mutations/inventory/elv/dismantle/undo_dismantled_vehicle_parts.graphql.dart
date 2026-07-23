import '../../../../fragments/inventory/elv/vehicle_fields.graphql.dart';
import '../../../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UndoDismantledVehicleParts {
  factory Variables$Mutation$UndoDismantledVehicleParts({
    required Input$VehiclePartsActionInput input,
  }) => Variables$Mutation$UndoDismantledVehicleParts._({r'input': input});

  Variables$Mutation$UndoDismantledVehicleParts._(this._$data);

  factory Variables$Mutation$UndoDismantledVehicleParts.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$VehiclePartsActionInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UndoDismantledVehicleParts._(result$data);
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

  CopyWith$Variables$Mutation$UndoDismantledVehicleParts<
    Variables$Mutation$UndoDismantledVehicleParts
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UndoDismantledVehicleParts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UndoDismantledVehicleParts ||
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

abstract class CopyWith$Variables$Mutation$UndoDismantledVehicleParts<TRes> {
  factory CopyWith$Variables$Mutation$UndoDismantledVehicleParts(
    Variables$Mutation$UndoDismantledVehicleParts instance,
    TRes Function(Variables$Mutation$UndoDismantledVehicleParts) then,
  ) = _CopyWithImpl$Variables$Mutation$UndoDismantledVehicleParts;

  factory CopyWith$Variables$Mutation$UndoDismantledVehicleParts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$UndoDismantledVehicleParts;

  TRes call({Input$VehiclePartsActionInput? input});
}

class _CopyWithImpl$Variables$Mutation$UndoDismantledVehicleParts<TRes>
    implements CopyWith$Variables$Mutation$UndoDismantledVehicleParts<TRes> {
  _CopyWithImpl$Variables$Mutation$UndoDismantledVehicleParts(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UndoDismantledVehicleParts _instance;

  final TRes Function(Variables$Mutation$UndoDismantledVehicleParts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UndoDismantledVehicleParts._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$VehiclePartsActionInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UndoDismantledVehicleParts<TRes>
    implements CopyWith$Variables$Mutation$UndoDismantledVehicleParts<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UndoDismantledVehicleParts(this._res);

  TRes _res;

  call({Input$VehiclePartsActionInput? input}) => _res;
}

class Mutation$UndoDismantledVehicleParts {
  Mutation$UndoDismantledVehicleParts({
    required this.undoDismantledVehicleParts,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UndoDismantledVehicleParts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$undoDismantledVehicleParts = json['undoDismantledVehicleParts'];
    final l$$__typename = json['__typename'];
    return Mutation$UndoDismantledVehicleParts(
      undoDismantledVehicleParts: Fragment$VehicleFields.fromJson(
        (l$undoDismantledVehicleParts as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$VehicleFields undoDismantledVehicleParts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$undoDismantledVehicleParts = undoDismantledVehicleParts;
    _resultData['undoDismantledVehicleParts'] = l$undoDismantledVehicleParts
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$undoDismantledVehicleParts = undoDismantledVehicleParts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$undoDismantledVehicleParts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UndoDismantledVehicleParts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$undoDismantledVehicleParts = undoDismantledVehicleParts;
    final lOther$undoDismantledVehicleParts = other.undoDismantledVehicleParts;
    if (l$undoDismantledVehicleParts != lOther$undoDismantledVehicleParts) {
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

extension UtilityExtension$Mutation$UndoDismantledVehicleParts
    on Mutation$UndoDismantledVehicleParts {
  CopyWith$Mutation$UndoDismantledVehicleParts<
    Mutation$UndoDismantledVehicleParts
  >
  get copyWith => CopyWith$Mutation$UndoDismantledVehicleParts(this, (i) => i);
}

abstract class CopyWith$Mutation$UndoDismantledVehicleParts<TRes> {
  factory CopyWith$Mutation$UndoDismantledVehicleParts(
    Mutation$UndoDismantledVehicleParts instance,
    TRes Function(Mutation$UndoDismantledVehicleParts) then,
  ) = _CopyWithImpl$Mutation$UndoDismantledVehicleParts;

  factory CopyWith$Mutation$UndoDismantledVehicleParts.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UndoDismantledVehicleParts;

  TRes call({
    Fragment$VehicleFields? undoDismantledVehicleParts,
    String? $__typename,
  });
  CopyWith$Fragment$VehicleFields<TRes> get undoDismantledVehicleParts;
}

class _CopyWithImpl$Mutation$UndoDismantledVehicleParts<TRes>
    implements CopyWith$Mutation$UndoDismantledVehicleParts<TRes> {
  _CopyWithImpl$Mutation$UndoDismantledVehicleParts(this._instance, this._then);

  final Mutation$UndoDismantledVehicleParts _instance;

  final TRes Function(Mutation$UndoDismantledVehicleParts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? undoDismantledVehicleParts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UndoDismantledVehicleParts(
      undoDismantledVehicleParts:
          undoDismantledVehicleParts == _undefined ||
              undoDismantledVehicleParts == null
          ? _instance.undoDismantledVehicleParts
          : (undoDismantledVehicleParts as Fragment$VehicleFields),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$VehicleFields<TRes> get undoDismantledVehicleParts {
    final local$undoDismantledVehicleParts =
        _instance.undoDismantledVehicleParts;
    return CopyWith$Fragment$VehicleFields(
      local$undoDismantledVehicleParts,
      (e) => call(undoDismantledVehicleParts: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UndoDismantledVehicleParts<TRes>
    implements CopyWith$Mutation$UndoDismantledVehicleParts<TRes> {
  _CopyWithStubImpl$Mutation$UndoDismantledVehicleParts(this._res);

  TRes _res;

  call({
    Fragment$VehicleFields? undoDismantledVehicleParts,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$VehicleFields<TRes> get undoDismantledVehicleParts =>
      CopyWith$Fragment$VehicleFields.stub(_res);
}

const documentNodeMutationUndoDismantledVehicleParts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UndoDismantledVehicleParts'),
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
            name: NameNode(value: 'undoDismantledVehicleParts'),
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
