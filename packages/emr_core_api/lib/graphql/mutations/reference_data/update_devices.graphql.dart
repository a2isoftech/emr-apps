import '../../fragments/devices_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateDevices {
  factory Variables$Mutation$UpdateDevices({
    required Input$UpdateDevicesInput input,
  }) => Variables$Mutation$UpdateDevices._({r'input': input});

  Variables$Mutation$UpdateDevices._(this._$data);

  factory Variables$Mutation$UpdateDevices.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateDevicesInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateDevices._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateDevicesInput get input =>
      (_$data['input'] as Input$UpdateDevicesInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDevices<Variables$Mutation$UpdateDevices>
  get copyWith => CopyWith$Variables$Mutation$UpdateDevices(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateDevices ||
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

abstract class CopyWith$Variables$Mutation$UpdateDevices<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDevices(
    Variables$Mutation$UpdateDevices instance,
    TRes Function(Variables$Mutation$UpdateDevices) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDevices;

  factory CopyWith$Variables$Mutation$UpdateDevices.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDevices;

  TRes call({Input$UpdateDevicesInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateDevices<TRes>
    implements CopyWith$Variables$Mutation$UpdateDevices<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDevices(this._instance, this._then);

  final Variables$Mutation$UpdateDevices _instance;

  final TRes Function(Variables$Mutation$UpdateDevices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateDevices._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UpdateDevicesInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDevices<TRes>
    implements CopyWith$Variables$Mutation$UpdateDevices<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDevices(this._res);

  TRes _res;

  call({Input$UpdateDevicesInput? input}) => _res;
}

class Mutation$UpdateDevices {
  Mutation$UpdateDevices({
    required this.updateDevices,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateDevices.fromJson(Map<String, dynamic> json) {
    final l$updateDevices = json['updateDevices'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDevices(
      updateDevices: Fragment$DevicesFragment.fromJson(
        (l$updateDevices as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$DevicesFragment updateDevices;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateDevices = updateDevices;
    _resultData['updateDevices'] = l$updateDevices.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateDevices = updateDevices;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateDevices, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateDevices || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateDevices = updateDevices;
    final lOther$updateDevices = other.updateDevices;
    if (l$updateDevices != lOther$updateDevices) {
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

extension UtilityExtension$Mutation$UpdateDevices on Mutation$UpdateDevices {
  CopyWith$Mutation$UpdateDevices<Mutation$UpdateDevices> get copyWith =>
      CopyWith$Mutation$UpdateDevices(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateDevices<TRes> {
  factory CopyWith$Mutation$UpdateDevices(
    Mutation$UpdateDevices instance,
    TRes Function(Mutation$UpdateDevices) then,
  ) = _CopyWithImpl$Mutation$UpdateDevices;

  factory CopyWith$Mutation$UpdateDevices.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDevices;

  TRes call({Fragment$DevicesFragment? updateDevices, String? $__typename});
  CopyWith$Fragment$DevicesFragment<TRes> get updateDevices;
}

class _CopyWithImpl$Mutation$UpdateDevices<TRes>
    implements CopyWith$Mutation$UpdateDevices<TRes> {
  _CopyWithImpl$Mutation$UpdateDevices(this._instance, this._then);

  final Mutation$UpdateDevices _instance;

  final TRes Function(Mutation$UpdateDevices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateDevices = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateDevices(
      updateDevices: updateDevices == _undefined || updateDevices == null
          ? _instance.updateDevices
          : (updateDevices as Fragment$DevicesFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$DevicesFragment<TRes> get updateDevices {
    final local$updateDevices = _instance.updateDevices;
    return CopyWith$Fragment$DevicesFragment(
      local$updateDevices,
      (e) => call(updateDevices: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateDevices<TRes>
    implements CopyWith$Mutation$UpdateDevices<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDevices(this._res);

  TRes _res;

  call({Fragment$DevicesFragment? updateDevices, String? $__typename}) => _res;

  CopyWith$Fragment$DevicesFragment<TRes> get updateDevices =>
      CopyWith$Fragment$DevicesFragment.stub(_res);
}

const documentNodeMutationUpdateDevices = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateDevices'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateDevicesInput'),
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
            name: NameNode(value: 'updateDevices'),
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
                  name: NameNode(value: 'DevicesFragment'),
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
    fragmentDefinitionDevicesFragment,
  ],
);
