import '../../fragments/devices_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetDevice {
  factory Variables$Query$GetDevice({required Input$GetDeviceInput input}) =>
      Variables$Query$GetDevice._({r'input': input});

  Variables$Query$GetDevice._(this._$data);

  factory Variables$Query$GetDevice.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$GetDeviceInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$GetDevice._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$GetDeviceInput get input => (_$data['input'] as Input$GetDeviceInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$GetDevice<Variables$Query$GetDevice> get copyWith =>
      CopyWith$Variables$Query$GetDevice(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetDevice ||
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

abstract class CopyWith$Variables$Query$GetDevice<TRes> {
  factory CopyWith$Variables$Query$GetDevice(
    Variables$Query$GetDevice instance,
    TRes Function(Variables$Query$GetDevice) then,
  ) = _CopyWithImpl$Variables$Query$GetDevice;

  factory CopyWith$Variables$Query$GetDevice.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetDevice;

  TRes call({Input$GetDeviceInput? input});
}

class _CopyWithImpl$Variables$Query$GetDevice<TRes>
    implements CopyWith$Variables$Query$GetDevice<TRes> {
  _CopyWithImpl$Variables$Query$GetDevice(this._instance, this._then);

  final Variables$Query$GetDevice _instance;

  final TRes Function(Variables$Query$GetDevice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$GetDevice._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$GetDeviceInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetDevice<TRes>
    implements CopyWith$Variables$Query$GetDevice<TRes> {
  _CopyWithStubImpl$Variables$Query$GetDevice(this._res);

  TRes _res;

  call({Input$GetDeviceInput? input}) => _res;
}

class Query$GetDevice {
  Query$GetDevice({this.device, this.$__typename = 'Query'});

  factory Query$GetDevice.fromJson(Map<String, dynamic> json) {
    final l$device = json['device'];
    final l$$__typename = json['__typename'];
    return Query$GetDevice(
      device: l$device == null
          ? null
          : Fragment$DevicesFragment.fromJson(
              (l$device as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$DevicesFragment? device;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$device = device;
    _resultData['device'] = l$device?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$device = device;
    final l$$__typename = $__typename;
    return Object.hashAll([l$device, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetDevice || runtimeType != other.runtimeType) {
      return false;
    }
    final l$device = device;
    final lOther$device = other.device;
    if (l$device != lOther$device) {
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

extension UtilityExtension$Query$GetDevice on Query$GetDevice {
  CopyWith$Query$GetDevice<Query$GetDevice> get copyWith =>
      CopyWith$Query$GetDevice(this, (i) => i);
}

abstract class CopyWith$Query$GetDevice<TRes> {
  factory CopyWith$Query$GetDevice(
    Query$GetDevice instance,
    TRes Function(Query$GetDevice) then,
  ) = _CopyWithImpl$Query$GetDevice;

  factory CopyWith$Query$GetDevice.stub(TRes res) =
      _CopyWithStubImpl$Query$GetDevice;

  TRes call({Fragment$DevicesFragment? device, String? $__typename});
  CopyWith$Fragment$DevicesFragment<TRes> get device;
}

class _CopyWithImpl$Query$GetDevice<TRes>
    implements CopyWith$Query$GetDevice<TRes> {
  _CopyWithImpl$Query$GetDevice(this._instance, this._then);

  final Query$GetDevice _instance;

  final TRes Function(Query$GetDevice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? device = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetDevice(
          device: device == _undefined
              ? _instance.device
              : (device as Fragment$DevicesFragment?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Fragment$DevicesFragment<TRes> get device {
    final local$device = _instance.device;
    return local$device == null
        ? CopyWith$Fragment$DevicesFragment.stub(_then(_instance))
        : CopyWith$Fragment$DevicesFragment(
            local$device,
            (e) => call(device: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetDevice<TRes>
    implements CopyWith$Query$GetDevice<TRes> {
  _CopyWithStubImpl$Query$GetDevice(this._res);

  TRes _res;

  call({Fragment$DevicesFragment? device, String? $__typename}) => _res;

  CopyWith$Fragment$DevicesFragment<TRes> get device =>
      CopyWith$Fragment$DevicesFragment.stub(_res);
}

const documentNodeQueryGetDevice = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetDevice'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'GetDeviceInput'),
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
            name: NameNode(value: 'device'),
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
