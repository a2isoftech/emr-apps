import '../../fragments/devices_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateDevices {
  factory Variables$Mutation$CreateDevices({
    required Input$CreateDevicesInput input,
  }) => Variables$Mutation$CreateDevices._({r'input': input});

  Variables$Mutation$CreateDevices._(this._$data);

  factory Variables$Mutation$CreateDevices.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateDevicesInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$CreateDevices._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateDevicesInput get input =>
      (_$data['input'] as Input$CreateDevicesInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateDevices<Variables$Mutation$CreateDevices>
  get copyWith => CopyWith$Variables$Mutation$CreateDevices(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateDevices ||
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

abstract class CopyWith$Variables$Mutation$CreateDevices<TRes> {
  factory CopyWith$Variables$Mutation$CreateDevices(
    Variables$Mutation$CreateDevices instance,
    TRes Function(Variables$Mutation$CreateDevices) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateDevices;

  factory CopyWith$Variables$Mutation$CreateDevices.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateDevices;

  TRes call({Input$CreateDevicesInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateDevices<TRes>
    implements CopyWith$Variables$Mutation$CreateDevices<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateDevices(this._instance, this._then);

  final Variables$Mutation$CreateDevices _instance;

  final TRes Function(Variables$Mutation$CreateDevices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CreateDevices._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateDevicesInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateDevices<TRes>
    implements CopyWith$Variables$Mutation$CreateDevices<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateDevices(this._res);

  TRes _res;

  call({Input$CreateDevicesInput? input}) => _res;
}

class Mutation$CreateDevices {
  Mutation$CreateDevices({
    required this.createDevices,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateDevices.fromJson(Map<String, dynamic> json) {
    final l$createDevices = json['createDevices'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateDevices(
      createDevices: Fragment$DevicesFragment.fromJson(
        (l$createDevices as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$DevicesFragment createDevices;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createDevices = createDevices;
    _resultData['createDevices'] = l$createDevices.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createDevices = createDevices;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createDevices, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateDevices || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createDevices = createDevices;
    final lOther$createDevices = other.createDevices;
    if (l$createDevices != lOther$createDevices) {
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

extension UtilityExtension$Mutation$CreateDevices on Mutation$CreateDevices {
  CopyWith$Mutation$CreateDevices<Mutation$CreateDevices> get copyWith =>
      CopyWith$Mutation$CreateDevices(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateDevices<TRes> {
  factory CopyWith$Mutation$CreateDevices(
    Mutation$CreateDevices instance,
    TRes Function(Mutation$CreateDevices) then,
  ) = _CopyWithImpl$Mutation$CreateDevices;

  factory CopyWith$Mutation$CreateDevices.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateDevices;

  TRes call({Fragment$DevicesFragment? createDevices, String? $__typename});
  CopyWith$Fragment$DevicesFragment<TRes> get createDevices;
}

class _CopyWithImpl$Mutation$CreateDevices<TRes>
    implements CopyWith$Mutation$CreateDevices<TRes> {
  _CopyWithImpl$Mutation$CreateDevices(this._instance, this._then);

  final Mutation$CreateDevices _instance;

  final TRes Function(Mutation$CreateDevices) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createDevices = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateDevices(
      createDevices: createDevices == _undefined || createDevices == null
          ? _instance.createDevices
          : (createDevices as Fragment$DevicesFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$DevicesFragment<TRes> get createDevices {
    final local$createDevices = _instance.createDevices;
    return CopyWith$Fragment$DevicesFragment(
      local$createDevices,
      (e) => call(createDevices: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CreateDevices<TRes>
    implements CopyWith$Mutation$CreateDevices<TRes> {
  _CopyWithStubImpl$Mutation$CreateDevices(this._res);

  TRes _res;

  call({Fragment$DevicesFragment? createDevices, String? $__typename}) => _res;

  CopyWith$Fragment$DevicesFragment<TRes> get createDevices =>
      CopyWith$Fragment$DevicesFragment.stub(_res);
}

const documentNodeMutationCreateDevices = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateDevices'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateDevicesInput'),
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
            name: NameNode(value: 'createDevices'),
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
