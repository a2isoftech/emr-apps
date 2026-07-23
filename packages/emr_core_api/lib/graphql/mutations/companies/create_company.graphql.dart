import '../../fragments/company_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateCompany {
  factory Variables$Mutation$CreateCompany({
    required Input$CreateCompanyInput input,
  }) => Variables$Mutation$CreateCompany._({r'input': input});

  Variables$Mutation$CreateCompany._(this._$data);

  factory Variables$Mutation$CreateCompany.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateCompanyInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$CreateCompany._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateCompanyInput get input =>
      (_$data['input'] as Input$CreateCompanyInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateCompany<Variables$Mutation$CreateCompany>
  get copyWith => CopyWith$Variables$Mutation$CreateCompany(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateCompany ||
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

abstract class CopyWith$Variables$Mutation$CreateCompany<TRes> {
  factory CopyWith$Variables$Mutation$CreateCompany(
    Variables$Mutation$CreateCompany instance,
    TRes Function(Variables$Mutation$CreateCompany) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateCompany;

  factory CopyWith$Variables$Mutation$CreateCompany.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateCompany;

  TRes call({Input$CreateCompanyInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateCompany<TRes>
    implements CopyWith$Variables$Mutation$CreateCompany<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateCompany(this._instance, this._then);

  final Variables$Mutation$CreateCompany _instance;

  final TRes Function(Variables$Mutation$CreateCompany) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CreateCompany._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateCompanyInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateCompany<TRes>
    implements CopyWith$Variables$Mutation$CreateCompany<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateCompany(this._res);

  TRes _res;

  call({Input$CreateCompanyInput? input}) => _res;
}

class Mutation$CreateCompany {
  Mutation$CreateCompany({
    required this.createCompany,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateCompany.fromJson(Map<String, dynamic> json) {
    final l$createCompany = json['createCompany'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateCompany(
      createCompany: Fragment$CompanyFragment.fromJson(
        (l$createCompany as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CompanyFragment createCompany;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createCompany = createCompany;
    _resultData['createCompany'] = l$createCompany.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createCompany = createCompany;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createCompany, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateCompany || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createCompany = createCompany;
    final lOther$createCompany = other.createCompany;
    if (l$createCompany != lOther$createCompany) {
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

extension UtilityExtension$Mutation$CreateCompany on Mutation$CreateCompany {
  CopyWith$Mutation$CreateCompany<Mutation$CreateCompany> get copyWith =>
      CopyWith$Mutation$CreateCompany(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateCompany<TRes> {
  factory CopyWith$Mutation$CreateCompany(
    Mutation$CreateCompany instance,
    TRes Function(Mutation$CreateCompany) then,
  ) = _CopyWithImpl$Mutation$CreateCompany;

  factory CopyWith$Mutation$CreateCompany.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateCompany;

  TRes call({Fragment$CompanyFragment? createCompany, String? $__typename});
  CopyWith$Fragment$CompanyFragment<TRes> get createCompany;
}

class _CopyWithImpl$Mutation$CreateCompany<TRes>
    implements CopyWith$Mutation$CreateCompany<TRes> {
  _CopyWithImpl$Mutation$CreateCompany(this._instance, this._then);

  final Mutation$CreateCompany _instance;

  final TRes Function(Mutation$CreateCompany) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createCompany = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateCompany(
      createCompany: createCompany == _undefined || createCompany == null
          ? _instance.createCompany
          : (createCompany as Fragment$CompanyFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$CompanyFragment<TRes> get createCompany {
    final local$createCompany = _instance.createCompany;
    return CopyWith$Fragment$CompanyFragment(
      local$createCompany,
      (e) => call(createCompany: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CreateCompany<TRes>
    implements CopyWith$Mutation$CreateCompany<TRes> {
  _CopyWithStubImpl$Mutation$CreateCompany(this._res);

  TRes _res;

  call({Fragment$CompanyFragment? createCompany, String? $__typename}) => _res;

  CopyWith$Fragment$CompanyFragment<TRes> get createCompany =>
      CopyWith$Fragment$CompanyFragment.stub(_res);
}

const documentNodeMutationCreateCompany = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateCompany'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateCompanyInput'),
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
            name: NameNode(value: 'createCompany'),
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
