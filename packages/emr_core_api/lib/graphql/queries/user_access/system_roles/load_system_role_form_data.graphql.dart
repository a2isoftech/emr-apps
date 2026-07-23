import '../../../fragments/system_role_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$LoadSystemRoleFormData {
  factory Variables$Query$LoadSystemRoleFormData({required String id}) =>
      Variables$Query$LoadSystemRoleFormData._({r'id': id});

  Variables$Query$LoadSystemRoleFormData._(this._$data);

  factory Variables$Query$LoadSystemRoleFormData.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$LoadSystemRoleFormData._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$LoadSystemRoleFormData<
    Variables$Query$LoadSystemRoleFormData
  >
  get copyWith =>
      CopyWith$Variables$Query$LoadSystemRoleFormData(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$LoadSystemRoleFormData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$LoadSystemRoleFormData<TRes> {
  factory CopyWith$Variables$Query$LoadSystemRoleFormData(
    Variables$Query$LoadSystemRoleFormData instance,
    TRes Function(Variables$Query$LoadSystemRoleFormData) then,
  ) = _CopyWithImpl$Variables$Query$LoadSystemRoleFormData;

  factory CopyWith$Variables$Query$LoadSystemRoleFormData.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$LoadSystemRoleFormData;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$LoadSystemRoleFormData<TRes>
    implements CopyWith$Variables$Query$LoadSystemRoleFormData<TRes> {
  _CopyWithImpl$Variables$Query$LoadSystemRoleFormData(
    this._instance,
    this._then,
  );

  final Variables$Query$LoadSystemRoleFormData _instance;

  final TRes Function(Variables$Query$LoadSystemRoleFormData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$LoadSystemRoleFormData._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$LoadSystemRoleFormData<TRes>
    implements CopyWith$Variables$Query$LoadSystemRoleFormData<TRes> {
  _CopyWithStubImpl$Variables$Query$LoadSystemRoleFormData(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$LoadSystemRoleFormData {
  Query$LoadSystemRoleFormData({this.systemRole, this.$__typename = 'Query'});

  factory Query$LoadSystemRoleFormData.fromJson(Map<String, dynamic> json) {
    final l$systemRole = json['systemRole'];
    final l$$__typename = json['__typename'];
    return Query$LoadSystemRoleFormData(
      systemRole: l$systemRole == null
          ? null
          : Fragment$SystemRoleFragment.fromJson(
              (l$systemRole as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$SystemRoleFragment? systemRole;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$systemRole = systemRole;
    _resultData['systemRole'] = l$systemRole?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$systemRole = systemRole;
    final l$$__typename = $__typename;
    return Object.hashAll([l$systemRole, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LoadSystemRoleFormData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$systemRole = systemRole;
    final lOther$systemRole = other.systemRole;
    if (l$systemRole != lOther$systemRole) {
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

extension UtilityExtension$Query$LoadSystemRoleFormData
    on Query$LoadSystemRoleFormData {
  CopyWith$Query$LoadSystemRoleFormData<Query$LoadSystemRoleFormData>
  get copyWith => CopyWith$Query$LoadSystemRoleFormData(this, (i) => i);
}

abstract class CopyWith$Query$LoadSystemRoleFormData<TRes> {
  factory CopyWith$Query$LoadSystemRoleFormData(
    Query$LoadSystemRoleFormData instance,
    TRes Function(Query$LoadSystemRoleFormData) then,
  ) = _CopyWithImpl$Query$LoadSystemRoleFormData;

  factory CopyWith$Query$LoadSystemRoleFormData.stub(TRes res) =
      _CopyWithStubImpl$Query$LoadSystemRoleFormData;

  TRes call({Fragment$SystemRoleFragment? systemRole, String? $__typename});
  CopyWith$Fragment$SystemRoleFragment<TRes> get systemRole;
}

class _CopyWithImpl$Query$LoadSystemRoleFormData<TRes>
    implements CopyWith$Query$LoadSystemRoleFormData<TRes> {
  _CopyWithImpl$Query$LoadSystemRoleFormData(this._instance, this._then);

  final Query$LoadSystemRoleFormData _instance;

  final TRes Function(Query$LoadSystemRoleFormData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? systemRole = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LoadSystemRoleFormData(
      systemRole: systemRole == _undefined
          ? _instance.systemRole
          : (systemRole as Fragment$SystemRoleFragment?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$SystemRoleFragment<TRes> get systemRole {
    final local$systemRole = _instance.systemRole;
    return local$systemRole == null
        ? CopyWith$Fragment$SystemRoleFragment.stub(_then(_instance))
        : CopyWith$Fragment$SystemRoleFragment(
            local$systemRole,
            (e) => call(systemRole: e),
          );
  }
}

class _CopyWithStubImpl$Query$LoadSystemRoleFormData<TRes>
    implements CopyWith$Query$LoadSystemRoleFormData<TRes> {
  _CopyWithStubImpl$Query$LoadSystemRoleFormData(this._res);

  TRes _res;

  call({Fragment$SystemRoleFragment? systemRole, String? $__typename}) => _res;

  CopyWith$Fragment$SystemRoleFragment<TRes> get systemRole =>
      CopyWith$Fragment$SystemRoleFragment.stub(_res);
}

const documentNodeQueryLoadSystemRoleFormData = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'LoadSystemRoleFormData'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'id')),
          type: NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'systemRole'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: VariableNode(name: NameNode(value: 'id')),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'SystemRoleFragment'),
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
    fragmentDefinitionSystemRoleFragment,
  ],
);
