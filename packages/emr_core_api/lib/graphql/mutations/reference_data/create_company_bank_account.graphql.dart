import '../../fragments/company_bank_account_fragment.graphql.dart';
import '../../fragments/company_fragment.graphql.dart';
import '../../fragments/territory_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$CreateCompanyBankAccount {
  factory Variables$Mutation$CreateCompanyBankAccount({
    required Input$CreateCompanyBankAccountInput input,
  }) => Variables$Mutation$CreateCompanyBankAccount._({r'input': input});

  Variables$Mutation$CreateCompanyBankAccount._(this._$data);

  factory Variables$Mutation$CreateCompanyBankAccount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateCompanyBankAccountInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$CreateCompanyBankAccount._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateCompanyBankAccountInput get input =>
      (_$data['input'] as Input$CreateCompanyBankAccountInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateCompanyBankAccount<
    Variables$Mutation$CreateCompanyBankAccount
  >
  get copyWith =>
      CopyWith$Variables$Mutation$CreateCompanyBankAccount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateCompanyBankAccount ||
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

abstract class CopyWith$Variables$Mutation$CreateCompanyBankAccount<TRes> {
  factory CopyWith$Variables$Mutation$CreateCompanyBankAccount(
    Variables$Mutation$CreateCompanyBankAccount instance,
    TRes Function(Variables$Mutation$CreateCompanyBankAccount) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateCompanyBankAccount;

  factory CopyWith$Variables$Mutation$CreateCompanyBankAccount.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateCompanyBankAccount;

  TRes call({Input$CreateCompanyBankAccountInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateCompanyBankAccount<TRes>
    implements CopyWith$Variables$Mutation$CreateCompanyBankAccount<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateCompanyBankAccount(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateCompanyBankAccount _instance;

  final TRes Function(Variables$Mutation$CreateCompanyBankAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$CreateCompanyBankAccount._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreateCompanyBankAccountInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$CreateCompanyBankAccount<TRes>
    implements CopyWith$Variables$Mutation$CreateCompanyBankAccount<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateCompanyBankAccount(this._res);

  TRes _res;

  call({Input$CreateCompanyBankAccountInput? input}) => _res;
}

class Mutation$CreateCompanyBankAccount {
  Mutation$CreateCompanyBankAccount({
    required this.createCompanyBankAccount,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateCompanyBankAccount.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$createCompanyBankAccount = json['createCompanyBankAccount'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateCompanyBankAccount(
      createCompanyBankAccount: Fragment$CompanyBankAccountFragment.fromJson(
        (l$createCompanyBankAccount as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CompanyBankAccountFragment createCompanyBankAccount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createCompanyBankAccount = createCompanyBankAccount;
    _resultData['createCompanyBankAccount'] = l$createCompanyBankAccount
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createCompanyBankAccount = createCompanyBankAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([l$createCompanyBankAccount, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateCompanyBankAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createCompanyBankAccount = createCompanyBankAccount;
    final lOther$createCompanyBankAccount = other.createCompanyBankAccount;
    if (l$createCompanyBankAccount != lOther$createCompanyBankAccount) {
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

extension UtilityExtension$Mutation$CreateCompanyBankAccount
    on Mutation$CreateCompanyBankAccount {
  CopyWith$Mutation$CreateCompanyBankAccount<Mutation$CreateCompanyBankAccount>
  get copyWith => CopyWith$Mutation$CreateCompanyBankAccount(this, (i) => i);
}

abstract class CopyWith$Mutation$CreateCompanyBankAccount<TRes> {
  factory CopyWith$Mutation$CreateCompanyBankAccount(
    Mutation$CreateCompanyBankAccount instance,
    TRes Function(Mutation$CreateCompanyBankAccount) then,
  ) = _CopyWithImpl$Mutation$CreateCompanyBankAccount;

  factory CopyWith$Mutation$CreateCompanyBankAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateCompanyBankAccount;

  TRes call({
    Fragment$CompanyBankAccountFragment? createCompanyBankAccount,
    String? $__typename,
  });
  CopyWith$Fragment$CompanyBankAccountFragment<TRes>
  get createCompanyBankAccount;
}

class _CopyWithImpl$Mutation$CreateCompanyBankAccount<TRes>
    implements CopyWith$Mutation$CreateCompanyBankAccount<TRes> {
  _CopyWithImpl$Mutation$CreateCompanyBankAccount(this._instance, this._then);

  final Mutation$CreateCompanyBankAccount _instance;

  final TRes Function(Mutation$CreateCompanyBankAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createCompanyBankAccount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$CreateCompanyBankAccount(
      createCompanyBankAccount:
          createCompanyBankAccount == _undefined ||
              createCompanyBankAccount == null
          ? _instance.createCompanyBankAccount
          : (createCompanyBankAccount as Fragment$CompanyBankAccountFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$CompanyBankAccountFragment<TRes>
  get createCompanyBankAccount {
    final local$createCompanyBankAccount = _instance.createCompanyBankAccount;
    return CopyWith$Fragment$CompanyBankAccountFragment(
      local$createCompanyBankAccount,
      (e) => call(createCompanyBankAccount: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$CreateCompanyBankAccount<TRes>
    implements CopyWith$Mutation$CreateCompanyBankAccount<TRes> {
  _CopyWithStubImpl$Mutation$CreateCompanyBankAccount(this._res);

  TRes _res;

  call({
    Fragment$CompanyBankAccountFragment? createCompanyBankAccount,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$CompanyBankAccountFragment<TRes>
  get createCompanyBankAccount =>
      CopyWith$Fragment$CompanyBankAccountFragment.stub(_res);
}

const documentNodeMutationCreateCompanyBankAccount = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateCompanyBankAccount'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreateCompanyBankAccountInput'),
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
            name: NameNode(value: 'createCompanyBankAccount'),
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
                  name: NameNode(value: 'CompanyBankAccountFragment'),
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
    fragmentDefinitionCompanyBankAccountFragment,
    fragmentDefinitionCompanyFragment,
    fragmentDefinitionTerritoryFragment,
  ],
);
