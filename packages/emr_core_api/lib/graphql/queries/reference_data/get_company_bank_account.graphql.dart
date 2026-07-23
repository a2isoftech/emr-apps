import '../../fragments/company_bank_account_fragment.graphql.dart';
import '../../fragments/company_fragment.graphql.dart';
import '../../fragments/territory_fragment.graphql.dart';
import '../../schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetCompanyBankAccount {
  factory Variables$Query$GetCompanyBankAccount({
    required Input$CompanyBankAccountSearchInput input,
  }) => Variables$Query$GetCompanyBankAccount._({r'input': input});

  Variables$Query$GetCompanyBankAccount._(this._$data);

  factory Variables$Query$GetCompanyBankAccount.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CompanyBankAccountSearchInput.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$GetCompanyBankAccount._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CompanyBankAccountSearchInput get input =>
      (_$data['input'] as Input$CompanyBankAccountSearchInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$GetCompanyBankAccount<
    Variables$Query$GetCompanyBankAccount
  >
  get copyWith =>
      CopyWith$Variables$Query$GetCompanyBankAccount(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetCompanyBankAccount ||
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

abstract class CopyWith$Variables$Query$GetCompanyBankAccount<TRes> {
  factory CopyWith$Variables$Query$GetCompanyBankAccount(
    Variables$Query$GetCompanyBankAccount instance,
    TRes Function(Variables$Query$GetCompanyBankAccount) then,
  ) = _CopyWithImpl$Variables$Query$GetCompanyBankAccount;

  factory CopyWith$Variables$Query$GetCompanyBankAccount.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCompanyBankAccount;

  TRes call({Input$CompanyBankAccountSearchInput? input});
}

class _CopyWithImpl$Variables$Query$GetCompanyBankAccount<TRes>
    implements CopyWith$Variables$Query$GetCompanyBankAccount<TRes> {
  _CopyWithImpl$Variables$Query$GetCompanyBankAccount(
    this._instance,
    this._then,
  );

  final Variables$Query$GetCompanyBankAccount _instance;

  final TRes Function(Variables$Query$GetCompanyBankAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$GetCompanyBankAccount._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CompanyBankAccountSearchInput),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetCompanyBankAccount<TRes>
    implements CopyWith$Variables$Query$GetCompanyBankAccount<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCompanyBankAccount(this._res);

  TRes _res;

  call({Input$CompanyBankAccountSearchInput? input}) => _res;
}

class Query$GetCompanyBankAccount {
  Query$GetCompanyBankAccount({
    required this.companyBankAccount,
    this.$__typename = 'Query',
  });

  factory Query$GetCompanyBankAccount.fromJson(Map<String, dynamic> json) {
    final l$companyBankAccount = json['companyBankAccount'];
    final l$$__typename = json['__typename'];
    return Query$GetCompanyBankAccount(
      companyBankAccount: Fragment$CompanyBankAccountFragment.fromJson(
        (l$companyBankAccount as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CompanyBankAccountFragment companyBankAccount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$companyBankAccount = companyBankAccount;
    _resultData['companyBankAccount'] = l$companyBankAccount.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$companyBankAccount = companyBankAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([l$companyBankAccount, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetCompanyBankAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$companyBankAccount = companyBankAccount;
    final lOther$companyBankAccount = other.companyBankAccount;
    if (l$companyBankAccount != lOther$companyBankAccount) {
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

extension UtilityExtension$Query$GetCompanyBankAccount
    on Query$GetCompanyBankAccount {
  CopyWith$Query$GetCompanyBankAccount<Query$GetCompanyBankAccount>
  get copyWith => CopyWith$Query$GetCompanyBankAccount(this, (i) => i);
}

abstract class CopyWith$Query$GetCompanyBankAccount<TRes> {
  factory CopyWith$Query$GetCompanyBankAccount(
    Query$GetCompanyBankAccount instance,
    TRes Function(Query$GetCompanyBankAccount) then,
  ) = _CopyWithImpl$Query$GetCompanyBankAccount;

  factory CopyWith$Query$GetCompanyBankAccount.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCompanyBankAccount;

  TRes call({
    Fragment$CompanyBankAccountFragment? companyBankAccount,
    String? $__typename,
  });
  CopyWith$Fragment$CompanyBankAccountFragment<TRes> get companyBankAccount;
}

class _CopyWithImpl$Query$GetCompanyBankAccount<TRes>
    implements CopyWith$Query$GetCompanyBankAccount<TRes> {
  _CopyWithImpl$Query$GetCompanyBankAccount(this._instance, this._then);

  final Query$GetCompanyBankAccount _instance;

  final TRes Function(Query$GetCompanyBankAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? companyBankAccount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetCompanyBankAccount(
      companyBankAccount:
          companyBankAccount == _undefined || companyBankAccount == null
          ? _instance.companyBankAccount
          : (companyBankAccount as Fragment$CompanyBankAccountFragment),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$CompanyBankAccountFragment<TRes> get companyBankAccount {
    final local$companyBankAccount = _instance.companyBankAccount;
    return CopyWith$Fragment$CompanyBankAccountFragment(
      local$companyBankAccount,
      (e) => call(companyBankAccount: e),
    );
  }
}

class _CopyWithStubImpl$Query$GetCompanyBankAccount<TRes>
    implements CopyWith$Query$GetCompanyBankAccount<TRes> {
  _CopyWithStubImpl$Query$GetCompanyBankAccount(this._res);

  TRes _res;

  call({
    Fragment$CompanyBankAccountFragment? companyBankAccount,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$CompanyBankAccountFragment<TRes> get companyBankAccount =>
      CopyWith$Fragment$CompanyBankAccountFragment.stub(_res);
}

const documentNodeQueryGetCompanyBankAccount = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetCompanyBankAccount'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CompanyBankAccountSearchInput'),
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
            name: NameNode(value: 'companyBankAccount'),
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
