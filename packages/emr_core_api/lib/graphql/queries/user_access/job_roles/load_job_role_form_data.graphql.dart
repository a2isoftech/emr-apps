import '../../../fragments/job_role_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$LoadJobRoleFormData {
  factory Variables$Query$LoadJobRoleFormData({required String id}) =>
      Variables$Query$LoadJobRoleFormData._({r'id': id});

  Variables$Query$LoadJobRoleFormData._(this._$data);

  factory Variables$Query$LoadJobRoleFormData.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$LoadJobRoleFormData._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$LoadJobRoleFormData<
    Variables$Query$LoadJobRoleFormData
  >
  get copyWith => CopyWith$Variables$Query$LoadJobRoleFormData(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$LoadJobRoleFormData ||
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

abstract class CopyWith$Variables$Query$LoadJobRoleFormData<TRes> {
  factory CopyWith$Variables$Query$LoadJobRoleFormData(
    Variables$Query$LoadJobRoleFormData instance,
    TRes Function(Variables$Query$LoadJobRoleFormData) then,
  ) = _CopyWithImpl$Variables$Query$LoadJobRoleFormData;

  factory CopyWith$Variables$Query$LoadJobRoleFormData.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$LoadJobRoleFormData;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$LoadJobRoleFormData<TRes>
    implements CopyWith$Variables$Query$LoadJobRoleFormData<TRes> {
  _CopyWithImpl$Variables$Query$LoadJobRoleFormData(this._instance, this._then);

  final Variables$Query$LoadJobRoleFormData _instance;

  final TRes Function(Variables$Query$LoadJobRoleFormData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$LoadJobRoleFormData._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$LoadJobRoleFormData<TRes>
    implements CopyWith$Variables$Query$LoadJobRoleFormData<TRes> {
  _CopyWithStubImpl$Variables$Query$LoadJobRoleFormData(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$LoadJobRoleFormData {
  Query$LoadJobRoleFormData({this.jobRole, this.$__typename = 'Query'});

  factory Query$LoadJobRoleFormData.fromJson(Map<String, dynamic> json) {
    final l$jobRole = json['jobRole'];
    final l$$__typename = json['__typename'];
    return Query$LoadJobRoleFormData(
      jobRole: l$jobRole == null
          ? null
          : Fragment$JobRoleFragment.fromJson(
              (l$jobRole as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$JobRoleFragment? jobRole;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$jobRole = jobRole;
    _resultData['jobRole'] = l$jobRole?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$jobRole = jobRole;
    final l$$__typename = $__typename;
    return Object.hashAll([l$jobRole, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LoadJobRoleFormData ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$jobRole = jobRole;
    final lOther$jobRole = other.jobRole;
    if (l$jobRole != lOther$jobRole) {
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

extension UtilityExtension$Query$LoadJobRoleFormData
    on Query$LoadJobRoleFormData {
  CopyWith$Query$LoadJobRoleFormData<Query$LoadJobRoleFormData> get copyWith =>
      CopyWith$Query$LoadJobRoleFormData(this, (i) => i);
}

abstract class CopyWith$Query$LoadJobRoleFormData<TRes> {
  factory CopyWith$Query$LoadJobRoleFormData(
    Query$LoadJobRoleFormData instance,
    TRes Function(Query$LoadJobRoleFormData) then,
  ) = _CopyWithImpl$Query$LoadJobRoleFormData;

  factory CopyWith$Query$LoadJobRoleFormData.stub(TRes res) =
      _CopyWithStubImpl$Query$LoadJobRoleFormData;

  TRes call({Fragment$JobRoleFragment? jobRole, String? $__typename});
  CopyWith$Fragment$JobRoleFragment<TRes> get jobRole;
}

class _CopyWithImpl$Query$LoadJobRoleFormData<TRes>
    implements CopyWith$Query$LoadJobRoleFormData<TRes> {
  _CopyWithImpl$Query$LoadJobRoleFormData(this._instance, this._then);

  final Query$LoadJobRoleFormData _instance;

  final TRes Function(Query$LoadJobRoleFormData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? jobRole = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$LoadJobRoleFormData(
          jobRole: jobRole == _undefined
              ? _instance.jobRole
              : (jobRole as Fragment$JobRoleFragment?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Fragment$JobRoleFragment<TRes> get jobRole {
    final local$jobRole = _instance.jobRole;
    return local$jobRole == null
        ? CopyWith$Fragment$JobRoleFragment.stub(_then(_instance))
        : CopyWith$Fragment$JobRoleFragment(
            local$jobRole,
            (e) => call(jobRole: e),
          );
  }
}

class _CopyWithStubImpl$Query$LoadJobRoleFormData<TRes>
    implements CopyWith$Query$LoadJobRoleFormData<TRes> {
  _CopyWithStubImpl$Query$LoadJobRoleFormData(this._res);

  TRes _res;

  call({Fragment$JobRoleFragment? jobRole, String? $__typename}) => _res;

  CopyWith$Fragment$JobRoleFragment<TRes> get jobRole =>
      CopyWith$Fragment$JobRoleFragment.stub(_res);
}

const documentNodeQueryLoadJobRoleFormData = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'LoadJobRoleFormData'),
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
            name: NameNode(value: 'jobRole'),
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
                  name: NameNode(value: 'JobRoleFragment'),
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
    fragmentDefinitionJobRoleFragment,
  ],
);
