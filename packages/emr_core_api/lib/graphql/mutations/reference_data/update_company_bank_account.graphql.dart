import '../../fragments/company_bank_account_fragment.graphql.dart';
import '../../fragments/company_fragment.graphql.dart';
import '../../fragments/territory_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Mutation$UpdateCompanyBankAccount {
  factory Variables$Mutation$UpdateCompanyBankAccount({
    required Input$UpdateCompanyBankAccountInput input,
  }) => Variables$Mutation$UpdateCompanyBankAccount._({r'input': input});

  Variables$Mutation$UpdateCompanyBankAccount._(this._$data);

  factory Variables$Mutation$UpdateCompanyBankAccount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$UpdateCompanyBankAccountInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$UpdateCompanyBankAccount._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UpdateCompanyBankAccountInput get input =>
      (_$data['input'] as Input$UpdateCompanyBankAccountInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateCompanyBankAccount<
    Variables$Mutation$UpdateCompanyBankAccount
  >
  get copyWith =>
      CopyWith$Variables$Mutation$UpdateCompanyBankAccount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateCompanyBankAccount ||
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

abstract class CopyWith$Variables$Mutation$UpdateCompanyBankAccount<TRes> {
  factory CopyWith$Variables$Mutation$UpdateCompanyBankAccount(
    Variables$Mutation$UpdateCompanyBankAccount instance,
    TRes Function(Variables$Mutation$UpdateCompanyBankAccount) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateCompanyBankAccount;

  factory CopyWith$Variables$Mutation$UpdateCompanyBankAccount.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateCompanyBankAccount;

  TRes call({Input$UpdateCompanyBankAccountInput? input});
}

class _CopyWithImpl$Variables$Mutation$UpdateCompanyBankAccount<TRes>
    implements CopyWith$Variables$Mutation$UpdateCompanyBankAccount<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateCompanyBankAccount(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateCompanyBankAccount _instance;

  final TRes Function(Variables$Mutation$UpdateCompanyBankAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$UpdateCompanyBankAccount._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$UpdateCompanyBankAccountInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateCompanyBankAccount<TRes>
    implements CopyWith$Variables$Mutation$UpdateCompanyBankAccount<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateCompanyBankAccount(this._res);

  TRes _res;

  call({Input$UpdateCompanyBankAccountInput? input}) => _res;
}

class Mutation$UpdateCompanyBankAccount {
  Mutation$UpdateCompanyBankAccount({
    required this.updateCompanyBankAccount,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateCompanyBankAccount.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$updateCompanyBankAccount = json['updateCompanyBankAccount'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCompanyBankAccount(
      updateCompanyBankAccount: Fragment$CompanyBankAccountFragment.fromJson(
        (l$updateCompanyBankAccount as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CompanyBankAccountFragment updateCompanyBankAccount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateCompanyBankAccount = updateCompanyBankAccount;
    _resultData['updateCompanyBankAccount'] = l$updateCompanyBankAccount
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateCompanyBankAccount = updateCompanyBankAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateCompanyBankAccount, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateCompanyBankAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateCompanyBankAccount = updateCompanyBankAccount;
    final lOther$updateCompanyBankAccount = other.updateCompanyBankAccount;
    if (l$updateCompanyBankAccount != lOther$updateCompanyBankAccount) {
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

extension UtilityExtension$Mutation$UpdateCompanyBankAccount
    on Mutation$UpdateCompanyBankAccount {
  CopyWith$Mutation$UpdateCompanyBankAccount<Mutation$UpdateCompanyBankAccount>
  get copyWith => CopyWith$Mutation$UpdateCompanyBankAccount(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateCompanyBankAccount<TRes> {
  factory CopyWith$Mutation$UpdateCompanyBankAccount(
    Mutation$UpdateCompanyBankAccount instance,
    TRes Function(Mutation$UpdateCompanyBankAccount) then,
  ) = _CopyWithImpl$Mutation$UpdateCompanyBankAccount;

  factory CopyWith$Mutation$UpdateCompanyBankAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCompanyBankAccount;

  TRes call({
    Fragment$CompanyBankAccountFragment? updateCompanyBankAccount,
    String? $__typename,
  });
  CopyWith$Fragment$CompanyBankAccountFragment<TRes>
  get updateCompanyBankAccount;
}

class _CopyWithImpl$Mutation$UpdateCompanyBankAccount<TRes>
    implements CopyWith$Mutation$UpdateCompanyBankAccount<TRes> {
  _CopyWithImpl$Mutation$UpdateCompanyBankAccount(this._instance, this._then);

  final Mutation$UpdateCompanyBankAccount _instance;

  final TRes Function(Mutation$UpdateCompanyBankAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateCompanyBankAccount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateCompanyBankAccount(
      updateCompanyBankAccount:
          updateCompanyBankAccount == _undefined ||
              updateCompanyBankAccount == null
          ? _instance.updateCompanyBankAccount
          : (updateCompanyBankAccount as Fragment$CompanyBankAccountFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$CompanyBankAccountFragment<TRes>
  get updateCompanyBankAccount {
    final local$updateCompanyBankAccount = _instance.updateCompanyBankAccount;
    return CopyWith$Fragment$CompanyBankAccountFragment(
      local$updateCompanyBankAccount,
      (e) => call(updateCompanyBankAccount: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$UpdateCompanyBankAccount<TRes>
    implements CopyWith$Mutation$UpdateCompanyBankAccount<TRes> {
  _CopyWithStubImpl$Mutation$UpdateCompanyBankAccount(this._res);

  TRes _res;

  call({
    Fragment$CompanyBankAccountFragment? updateCompanyBankAccount,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$CompanyBankAccountFragment<TRes>
  get updateCompanyBankAccount =>
      CopyWith$Fragment$CompanyBankAccountFragment.stub(_res);
}

const documentNodeMutationUpdateCompanyBankAccount = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateCompanyBankAccount'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'UpdateCompanyBankAccountInput'),
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
            name: NameNode(value: 'updateCompanyBankAccount'),
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
