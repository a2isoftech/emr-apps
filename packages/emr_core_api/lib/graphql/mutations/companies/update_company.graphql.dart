import '../../fragments/company_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateCompany {
  factory Variables$Mutation$UpdateCompany({
    required Input$UpdateCompanyInput input,
  }) => Variables$Mutation$UpdateCompany._({r'input': input});

  Variables$Mutation$UpdateCompany._(this._$data);

  factory Variables$Mutation$UpdateCompany.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateCompanyInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateCompany._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateCompanyInput get input =>
      (_$data['input'] as Input$UpdateCompanyInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateCompany<Variables$Mutation$UpdateCompany>
  get copyWith => CopyWith$Variables$Mutation$UpdateCompany(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateCompany ||
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

abstract class CopyWith$Variables$Mutation$UpdateCompany<TRes> {
  factory CopyWith$Variables$Mutation$UpdateCompany(
    Variables$Mutation$UpdateCompany instance,
    TRes Function(Variables$Mutation$UpdateCompany) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateCompany;

  factory CopyWith$Variables$Mutation$UpdateCompany.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateCompany;

  TRes call({Input$UpdateCompanyInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateCompany<TRes>
    implements CopyWith$Variables$Mutation$UpdateCompany<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateCompany(this._instance, this._then);

  final Variables$Mutation$UpdateCompany _instance;

  final TRes Function(Variables$Mutation$UpdateCompany) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateCompany._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UpdateCompanyInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateCompany<TRes>
    implements CopyWith$Variables$Mutation$UpdateCompany<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateCompany(this._res);

  TRes _res;

  call({Input$UpdateCompanyInput? input}) => _res;
}

class Mutation$UpdateCompany {
  Mutation$UpdateCompany({
    required this.updateCompany,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateCompany.fromJson(Map<String, dynamic> json) {
    final l$updateCompany = json['updateCompany'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCompany(
      updateCompany: Fragment$CompanyFragment.fromJson(
        (l$updateCompany as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CompanyFragment updateCompany;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateCompany = updateCompany;
    _resultData['updateCompany'] = l$updateCompany.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateCompany = updateCompany;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateCompany, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateCompany || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateCompany = updateCompany;
    final lOther$updateCompany = other.updateCompany;
    if (l$updateCompany != lOther$updateCompany) {
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

extension UtilityExtension$Mutation$UpdateCompany on Mutation$UpdateCompany {
  CopyWith$Mutation$UpdateCompany<Mutation$UpdateCompany> get copyWith =>
      CopyWith$Mutation$UpdateCompany(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateCompany<TRes> {
  factory CopyWith$Mutation$UpdateCompany(
    Mutation$UpdateCompany instance,
    TRes Function(Mutation$UpdateCompany) then,
  ) = _CopyWithImpl$Mutation$UpdateCompany;

  factory CopyWith$Mutation$UpdateCompany.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCompany;

  TRes call({Fragment$CompanyFragment? updateCompany, String? $__typename});
  CopyWith$Fragment$CompanyFragment<TRes> get updateCompany;
}

class _CopyWithImpl$Mutation$UpdateCompany<TRes>
    implements CopyWith$Mutation$UpdateCompany<TRes> {
  _CopyWithImpl$Mutation$UpdateCompany(this._instance, this._then);

  final Mutation$UpdateCompany _instance;

  final TRes Function(Mutation$UpdateCompany) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateCompany = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateCompany(
      updateCompany: updateCompany == _undefined || updateCompany == null
          ? _instance.updateCompany
          : (updateCompany as Fragment$CompanyFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$CompanyFragment<TRes> get updateCompany {
    final local$updateCompany = _instance.updateCompany;
    return CopyWith$Fragment$CompanyFragment(
      local$updateCompany,
      (e) => call(updateCompany: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateCompany<TRes>
    implements CopyWith$Mutation$UpdateCompany<TRes> {
  _CopyWithStubImpl$Mutation$UpdateCompany(this._res);

  TRes _res;

  call({Fragment$CompanyFragment? updateCompany, String? $__typename}) => _res;

  CopyWith$Fragment$CompanyFragment<TRes> get updateCompany =>
      CopyWith$Fragment$CompanyFragment.stub(_res);
}

const documentNodeMutationUpdateCompany = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateCompany'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateCompanyInput'),
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
            name: NameNode(value: 'updateCompany'),
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
