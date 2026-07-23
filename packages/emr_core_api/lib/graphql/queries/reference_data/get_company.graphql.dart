import '../../fragments/company_fragment.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetCompanyById {
  factory Variables$Query$GetCompanyById({required String id}) =>
      Variables$Query$GetCompanyById._({r'id': id});

  Variables$Query$GetCompanyById._(this._$data);

  factory Variables$Query$GetCompanyById.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetCompanyById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetCompanyById<Variables$Query$GetCompanyById>
  get copyWith => CopyWith$Variables$Query$GetCompanyById(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetCompanyById ||
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

abstract class CopyWith$Variables$Query$GetCompanyById<TRes> {
  factory CopyWith$Variables$Query$GetCompanyById(
    Variables$Query$GetCompanyById instance,
    TRes Function(Variables$Query$GetCompanyById) then,
  ) = _CopyWithImpl$Variables$Query$GetCompanyById;

  factory CopyWith$Variables$Query$GetCompanyById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCompanyById;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetCompanyById<TRes>
    implements CopyWith$Variables$Query$GetCompanyById<TRes> {
  _CopyWithImpl$Variables$Query$GetCompanyById(this._instance, this._then);

  final Variables$Query$GetCompanyById _instance;

  final TRes Function(Variables$Query$GetCompanyById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Variables$Query$GetCompanyById._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetCompanyById<TRes>
    implements CopyWith$Variables$Query$GetCompanyById<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCompanyById(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetCompanyById {
  Query$GetCompanyById({required this.companyById, this.$__typename = 'Query'});

  factory Query$GetCompanyById.fromJson(Map<String, dynamic> json) {
    final l$companyById = json['companyById'];
    final l$$__typename = json['__typename'];
    return Query$GetCompanyById(
      companyById: Fragment$CompanyFragment.fromJson(
        (l$companyById as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CompanyFragment companyById;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$companyById = companyById;
    _resultData['companyById'] = l$companyById.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$companyById = companyById;
    final l$$__typename = $__typename;
    return Object.hashAll([l$companyById, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetCompanyById || runtimeType != other.runtimeType) {
      return false;
    }
    final l$companyById = companyById;
    final lOther$companyById = other.companyById;
    if (l$companyById != lOther$companyById) {
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

extension UtilityExtension$Query$GetCompanyById on Query$GetCompanyById {
  CopyWith$Query$GetCompanyById<Query$GetCompanyById> get copyWith =>
      CopyWith$Query$GetCompanyById(this, (i) => i);
}

abstract class CopyWith$Query$GetCompanyById<TRes> {
  factory CopyWith$Query$GetCompanyById(
    Query$GetCompanyById instance,
    TRes Function(Query$GetCompanyById) then,
  ) = _CopyWithImpl$Query$GetCompanyById;

  factory CopyWith$Query$GetCompanyById.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCompanyById;

  TRes call({Fragment$CompanyFragment? companyById, String? $__typename});
  CopyWith$Fragment$CompanyFragment<TRes> get companyById;
}

class _CopyWithImpl$Query$GetCompanyById<TRes>
    implements CopyWith$Query$GetCompanyById<TRes> {
  _CopyWithImpl$Query$GetCompanyById(this._instance, this._then);

  final Query$GetCompanyById _instance;

  final TRes Function(Query$GetCompanyById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? companyById = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetCompanyById(
      companyById: companyById == _undefined || companyById == null
          ? _instance.companyById
          : (companyById as Fragment$CompanyFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$CompanyFragment<TRes> get companyById {
    final local$companyById = _instance.companyById;
    return CopyWith$Fragment$CompanyFragment(
      local$companyById,
      (e) => call(companyById: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetCompanyById<TRes>
    implements CopyWith$Query$GetCompanyById<TRes> {
  _CopyWithStubImpl$Query$GetCompanyById(this._res);

  TRes _res;

  call({Fragment$CompanyFragment? companyById, String? $__typename}) => _res;

  CopyWith$Fragment$CompanyFragment<TRes> get companyById =>
      CopyWith$Fragment$CompanyFragment.stub(_res);
}

const documentNodeQueryGetCompanyById = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetCompanyById'),
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
            name: NameNode(value: 'companyById'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'CompanyFragment'),
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
    fragmentDefinitionCompanyFragment,
  ],
);
